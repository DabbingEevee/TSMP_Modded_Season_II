(*
The purpose of this file is to package the mods, config, and scripts files into their own zip archive for the launcher to download

________________________________________
Pseudocode:

delete modpack.zip
create ./modpack/ directory
copy 'version.txt', './mods/','./config/', and './scripts/' into new directory
zip directory into root
________________________________________
*)

open System
open System.IO
open System.IO.Compression

// Because this for github actions ubuntu, I'll use forward slashes '/' instead of backslashes '\'
let zipArchive = "../modpack.zip"
let packFolder = "../modpack/"


// INCLUDE THESE FILES AND FOLDERS 
let files = ["version.txt"]
let folders = ["mods/"; "config/"; "scripts/"]

let rec dirCopy sourceDir destDir =
    let dir = new DirectoryInfo(sourceDir)

    if not dir.Exists then raise (DirectoryNotFoundException("Source directory does not exist or could not be found: " + sourceDir))
    Directory.CreateDirectory(destDir) |> ignore
    dir.GetFiles()

    |> Array.iter (fun file ->
        file.CopyTo(Path.Combine(destDir, file.Name), false)
        |> ignore )
    dir.GetDirectories()
    |> Array.iter (fun subdir -> 
        dirCopy subdir.FullName (Path.Combine( destDir, subdir.Name)))


if File.Exists(zipArchive) then File.Delete(zipArchive)

Directory.CreateDirectory(packFolder)
files
|> List.iter (fun file -> 
    File.Copy(Path.Combine("..",file), Path.Combine(packFolder, file)) )

folders
|> List.iter (fun folder ->
    dirCopy (Path.Combine("..",folder))  (Path.Combine(packFolder, folder)) )

ZipFile.CreateFromDirectory(packFolder, "../modpack.zip")
