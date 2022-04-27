import ColorizeSwift
import CommandLineKit
import Foundation
import Swiftline




let main = MainMenu()
while(true) {
    main.display()
}


//참고 : https://github.com/IngmarStein/CommandLineKit/tree/v2.3.0



/*
let cli = CommandLineKit.CommandLine()

let dirPath = StringOption(shortFlag: "t", longFlag: "filetypes", helpMessage: "list all the types of files in current directory")

cli.addOptions(dirPath)

do {
    try cli.parse() 
}catch {
    cli.printUsage(error)
}
let path = dirPath.value!


var extensions = [String]()
let fileManger = FileManager.default
let dirURL = URL(fileURLWithPath: path)

do {
    let fileURLs = try fileManger.contentsOfDirectory(at: dirURL, includingPropertiesForKeys: nil)
    
    for file in fileURLs {
        guard !file.pathExtension.isEmpty else {
            continue
        }
        if !extensions.contains(file.pathExtension) {
            extensions.append(file.pathExtension)
        }
    }
    //print("\n")
    print("Found \(extensions.count) type of files: ".bold().blue() )
    //print("\n")
    print(extensions.joined(separator:" ").bold())
}catch {
    print("Error while enumerating files \(error.localizedDescription)".bold().red() )
}


let fileType = ask("Choose the file type to be grouped into a folder.".bold().green())

let choice = agree("Are you sure you want to group files of type: \(fileType) ?".bold().white().onRed())


if choice == true {
    let dirName = ask("Choose the folder name to store files of type : \(fileType)?".bold().blue())

    print("Grouping files by chosen filetype".bold().green())

    let newDirPath = path + "/" + dirName + "/"

    let _ = run("mkdir", args : newDirPath)

    var noOfFileMoved = 0

    let fileURLs = try fileManger.contentsOfDirectory(at: dirURL, includingPropertiesForKeys: nil)
    
    for file in fileURLs {

        if file.pathExtension == fileType {

            do {
                try fileManger.moveItem(atPath: file.path, toPath: newDirPath + file.lastPathComponent)
                noOfFileMoved = noOfFileMoved + 1
            }catch let error as NSError {
                print("Ooops! Couldn't move the file: \(file.lastPathComponent) because of error: \(error)")
            }

        }
    }
    print("Successfully Moved \(noOfFileMoved) of file!".underline().bold().green() )
}

*/
/*
 ColorizeSwift TEST
 

print("Normal")
print("Bold".bold())
print("Dim".dim())
print("Italic".italic())
print("Underline".underline())
print("Blink".blink())
print("Reverse".reverse())
print("hidden".hidden())
print("strikethrough".strikethrough())
print("Red".red())
print("On yellow".onYellow())
print("256 foreground".foregroundColor(.orange1))
print("226 background".backgroundColor(.orange1))
print("Awful combination".colorize(.yellow, background: .red))
    
let nested = "with a blue substring".blue().underline()
print("A bold, green line \(nested) that becomes bold and green again".green().bold())
 */
