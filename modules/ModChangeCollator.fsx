// For Github Action
// find mod changes from last time 
// saves old list in 'modListPrevious.txt' for comparison
// creates temp file 'changelog.txt'
open System.IO
open System.Linq;

let currentMods = 
    Directory.GetFiles("./mods/", "*.jar", SearchOption.AllDirectories)
    |> Array.toSeq
    |> Seq.map Path.GetFileName
    |> Seq.sort

let previousMods = 
    File.ReadLines("./modules/modListPrevious.txt") |> seq

let cleanModName (modName:string) =
    match modName.Contains('-') with
    | true -> modName.Split('-').[0]
    | false -> modName

let cleanModList (mods: string seq) =
    mods
    |> Seq.map cleanModName

let cleanedCurrentMods = cleanModList currentMods
let cleanedPreviousMods = cleanModList previousMods
// additions
let addedMods = 
    cleanedCurrentMods |> fun i -> i.Except(cleanedPreviousMods)

// removals
let removedMods = 
    cleanedPreviousMods |> fun i -> i.Except(cleanedCurrentMods)

// version changes
let versionChanges =
    let filteredModsCurrent =
        currentMods
        |> Seq.filter (fun i -> Seq.contains (cleanModName i) cleanedPreviousMods )
    let filteredModsPrevious =
        previousMods
        |> Seq.filter (fun i -> Seq.contains (cleanModName i) cleanedCurrentMods )
    Seq.map2 (fun o n -> (o,n))  filteredModsPrevious filteredModsCurrent //pair up
    |> Seq.filter(fun (o,n) ->  o<>n)
    |> Seq.map( fun (o , n) -> sprintf "%s -> %s" o n)

// file output
do
    use streamWriter = new StreamWriter("./changelog.md", false)
    streamWriter.WriteLine("## Changes:")
    streamWriter.WriteLine("---")

    if Seq.length addedMods > 0 then
        streamWriter.WriteLine("#### Additions:")
        Seq.iter(fun i -> 
            sprintf "* %s" i 
            |> streamWriter.WriteLine ) addedMods
    if Seq.length removedMods > 0 then
        streamWriter.WriteLine("#### Removals:")
        Seq.iter(fun i -> 
            sprintf "* %s" i 
            |> streamWriter.WriteLine ) removedMods
    if Seq.length versionChanges > 0 then
        streamWriter.WriteLine("#### Updates:")
        Seq.iter(fun i -> 
            sprintf "* %s" i 
            |> streamWriter.WriteLine ) versionChanges

// update prev list
File.WriteAllLines("./modules/modListPrevious.txt", currentMods)