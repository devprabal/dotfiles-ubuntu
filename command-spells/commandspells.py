import sys
import os
import json
from json import JSONDecodeError
import readline
# from exception import UsageError
#TODO: how to handle Ctrl+C interrupt at any stage ?

def usage_error():
    # TODO: do this with argparse library
    print("commandspells.py version 1")
    print("Usage: commandspells.py command")
    print("command:\n", end='')
    print("\tadd   : to add a new command")
    print("\tview  : to view all or a particular saved command")
    print("\tsearch: to view a particular saved command")
    print("\tedit  : to edit a particular saved command")
    # TODO: remove, webview


def add_command():
    newDict = {}
    cmdName = input("Enter the command name: ")
    newDict['Name'] = cmdName
    cmdDes = input("Enter the command description: ")
    newDict['Description'] = cmdDes
    print('Enter the type of command: ')
    print('Type can be \'bash\', \'conda\', \'apt\', \'flatpak\', \'anyOtherApp\'')
    typ = input()
    newDict['Type'] = typ
    newDict['Examples'] = []
    example = input('Enter at least one example: ')
    while(example != ''):
        newDict['Examples'].append(example.strip())
        example = input('Enter other example or press ENTER to finish: ')
    write_to_commands_json_file(newDict)
    return newDict

def write_to_commands_json_file(newCommandDict, replace_index=None):
    cmdDict = {}
    with open('commands.json', 'r') as infile:
        cmdDict = json.load(infile)
        if replace_index == None:
            cmdDict['commands'].append(newCommandDict)
        else:
            cmdDict['commands'][replace_index] = newCommandDict
    with open('commands.json', 'w') as outfile:
        json.dump(cmdDict, outfile, indent=4)


def rlinput(prompt, prefill=''):
    readline.set_startup_hook(lambda: readline.insert_text(prefill))
    try:
        return input(prompt)
    finally:
      readline.set_startup_hook()

def edit_command(foundDict):
    newDict = {}
    cmdName = rlinput("Name: ",foundDict["Name"])
    newDict['Name'] = cmdName
    cmdDes = rlinput("Description: ",foundDict['Description'])
    newDict['Description'] = cmdDes
    cmdType = rlinput('Type: \nType can be \'bash\', \'conda\', \'apt\', \'flatpak\', \'anyOtherApp\': ',foundDict["Type"])
    newDict['Type'] = cmdType
    newDict['Examples'] = []
    for i in range(0, len(foundDict["Examples"])):
        example = rlinput('Example'+str(i)+': ', foundDict["Examples"][i])
        newDict['Examples'].append(example.strip())
    moreExamples = input("\nAdd more examples? [y/N] ")
    if moreExamples.strip() in ['y', 'Y', 'yes', 'Yes', 'YES']:
        example = input("Enter an example: ")
        while(example != ''):
            newDict['Examples'].append(example.strip())
            example = input("Enter another example or press ENTER to finish: ")
        return newDict
    else:
        return newDict

def convert_to_md():
    infile = open('commands.json', 'r')
    fileDict = json.load(infile)
    listOfCmds = fileDict["commands"]
    typeDict = {}
    setOfTypes = set([])
    for x in listOfCmds:
        if x["Type"] not in setOfTypes:
            setOfTypes.add(x["Type"])
            typeDict[x["Type"]] = [x]
        else:
            typeDict[x["Type"]].append(x)

    # TODO: update the file for new changes only instead of generating entire file again and again
    with open('commands.md', 'w+') as outfile:
        outfile.write("# Commands\n\n")
        for x in typeDict:
            outfile.write("## "+x+"\n\n")
            for y in typeDict[x]:
                name = y["Name"]
                des = y["Description"]
                typ = y["Type"]
                ex = y["Examples"]
                outfile.write("- **"+name+"** | *"+des+"*\n")
                outfile.write("\n\tUsage:\n\n")
                for z in ex:
                    outfile.write("\n\t- `"+z+"`\n\n")

#TODO: don't convert to md and print, instead use colors from xterm to show the output without file I/O operations
def view_single(x):
    string = "**"+x["Name"]+"** | *"+x["Description"]+"*\n\n"
    string += "Type: "+x["Type"]+"\n\n"
    string += "Usage:\n"
    for y in x["Examples"]:
        string += " - "+y+"\n"
    with open('tempviewcmd.md', 'w+') as tempfile:
        tempfile.write(string)
    # TODO: PATH for pygmentize using subprocess in python
    # TODO: Write about pygmentize in README for this project
    # TODO: Make requirements.txt file for dependencies like Pygments
    os.system('pygmentize tempviewcmd.md')
    os.system('rm tempviewcmd.md')


def search_cmd(key):
    found = False
    index = None
    with open('commands.json', 'r') as infile:
        fileDict = json.load(infile)
        foundDict = {}
        for i in range(0, len(fileDict["commands"])):
            if fileDict["commands"][i]["Name"] == key:
                view_single(fileDict["commands"][i])
                foundDict = fileDict["commands"][i]
                found = True
                index = i
                break
        if not found:
            print("Command not found.")
            return foundDict, index
        else:
            return foundDict, index


def make_dummy_json():
    cmdDict = {'commands': []}
    with open('commands.json', 'w+') as f:
        json.dump(cmdDict, f, indent=4)


def file_check():
    # TODO: subprocess ('which commandspells') for absolute path of project where other files like commands.md and commands.json live
    noOfCommands = 0
    if os.path.exists('commands.json'):
        f = open('commands.json')
        try:
            cmdDict = json.load(f)
            if "commands" in cmdDict:
                noOfCommands = len(cmdDict["commands"])
                print("Number of commands already present: ", noOfCommands)
                f.close()
            else:
                print(
                    "\"commands\" key not found in the json file \"commands.json\".")
                print("Making a new file.")
                f.close()
                os.system('mv commands.json commands.json.old')
                print(
                    "Your previous \"commands.json\" file was saved as \"commands.json.old\".")
                make_dummy_json()
        except JSONDecodeError:  # reading from an empty existing file
            print("It seems that there are no commands yet in the file.")
            f.close()
            make_dummy_json()
    else:
        print("It seems that there are no commands yet in the file.")
        make_dummy_json()
    return noOfCommands


def main():
    try:
        choice = sys.argv[1]
        if choice == "add":
            noOfCommands = file_check()
            newDict = add_command()
            print("This is your newly added command to remember: ")
            view_single(newDict)
        elif choice == "view":
            try:
                key = sys.argv[2]
                noOfCommands = file_check()
                if noOfCommands == 0:
                    print("Try the adding some commands with \"add\".")
                else:
                    foundDict, index = search_cmd(key)
            except IndexError:  # view all commands
                noOfCommands = file_check()
                if noOfCommands == 0:
                    print("Try the adding some commands with \"add\".")
                else:
                    convert_to_md()
                    # TODO: PATH for pygmentize using subprocess in python
                    # TODO: relative path for commands.md using subprocess (which commandspells) to find the parent folder
                    os.system('pygmentize commands.md')
        elif choice == "search":
            try:
                key = sys.argv[2]
                noOfCommands = file_check()
                if noOfCommands == 0:
                    print("Try the adding some commands with \"add\".")
                else:
                    foundDict, index = search_cmd(key)
            except IndexError:
                print("Usage: search command-name")
        elif choice == "edit":
            try:
                key = sys.argv[2]
                noOfCommands = file_check()
                if noOfCommands == 0:
                    print("Try adding some commands with \"add\".")
                else:
                    foundDict, index = search_cmd(key)
                    if index != None and foundDict != {}:
                        print("Editing...")
                        newDict = edit_command(foundDict)
                        print("After editing...")
                        view_single(newDict)
                        write_to_commands_json_file(newDict, index)
            except IndexError:
                print("Usage: edit command-name")
        else:
            # TODO: create a class for this exception
            # raise UsageError
            usage_error()
    except IndexError:
        # TODO: create a class for this exception
        usage_error()
        # try:
        #     raise UsageError
        # except UsageError:
        #     pass
    # except UsageError:
    #     pass


if __name__ == "__main__":
    main()
