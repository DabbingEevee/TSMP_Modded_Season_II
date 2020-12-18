// This file runs prior to releasing
// Purpose: find mod changes from last time 
// saves old list in 'modListPrevious.txt' for comparison
open System.IO

let currentMods = 
    Directory.GetFiles("./mods/", "*.jar", SearchOption.AllDirectories)
    |> Array.map Path.GetFileName
    |> Array.sort

let priviousMods = 
    File.ReadLines("./modules/modListPrevious.txt") |> Seq.toArray

let cleanModList (mods: string array) =
    mods
    |> Array.map (fun modName -> 
        match modName.Contains('-') with
        | true -> modName.Split('-').[0]
        | false -> modName)

let cleanedCurrentMods = cleanModList currentMods
let cleanedPreviousMods = cleanModList priviousMods
// additions
printfn "%A" cleanedCurrentMods 
    
// removals

// version changes

// file output, remember to delete in action


// update prev list
File.WriteAllLines("./modules/modListPrevious.txt", currentMods)