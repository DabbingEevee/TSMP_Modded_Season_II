// Find all mod name and versions, write to ModList.md
open System
open System.Text.Json
open System.IO
open System.IO.Compression
open System.Linq
open System.Globalization
open System.Text.RegularExpressions


let readModInfo (text:string) =
    let sanitizedText = 
        text.Split('\n')
        |> Array.filter ( fun x -> not <| (x.Contains("\"dependencies\":") && x.Contains("[") && x.Contains("]") ))
        |> String.Concat
        |> fun i -> i.Replace("\n"," ")
    let mutable jsonOptions = JsonDocumentOptions()
    jsonOptions.AllowTrailingCommas <- true
    let rootElement = JsonDocument.Parse(sanitizedText, jsonOptions ).RootElement.[0] 
    let name =
        try
            "### " + rootElement.GetProperty("name").GetRawText().Replace("\"","") + "\n"
        with 
        | :? Collections.Generic.KeyNotFoundException -> "### Unknown Name\n"
        | ex -> ex.Message
    let url = 
        try
            let url = rootElement.GetProperty("url").GetRawText().Replace("\"","").Trim()
            match url with
            | "" -> ""
            | _ -> "<" + url + ">\n\n"
        with 
        | :? Collections.Generic.KeyNotFoundException -> ""
    let authorList = 
        try
            "*" + rootElement.GetProperty("authorList").GetRawText().Replace("\"","") .Replace("]","").Replace("[","").Trim() + "*\n"
        with 
        | :? Collections.Generic.KeyNotFoundException -> ""
    name + url + authorList + "***\n"

Directory.GetFiles("./mods/", "*.jar", SearchOption.AllDirectories)
|> Array.toSeq
|> Seq.sort
|> Seq.choose ( fun path -> 
    use archive = ZipFile.OpenRead(path)
    printfn "%s" path
    try
        archive.Entries.First(fun entry -> entry.FullName.ToLower() = "mcmod.info")
        |> fun stream ->
            use fileStream = new StreamReader(stream.Open())
            fileStream.ReadToEnd()
            |> readModInfo
        |> Some 
    with 
    | :? InvalidOperationException -> 
        printfn "something caught"
        None)
|> Seq.toList
|> fun i -> "## Mod List\n" :: i
|> List.toArray
|> String.Concat
|> fun i -> File.WriteAllText ("./ModList.md", i)
