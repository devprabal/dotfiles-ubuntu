with open('references.txt','r') as infile:
    lines = infile.readlines()
#FIXME: for this to work, references.txt should not have any newline at the end of the file
with open('references.md', 'w+') as outfile:
    outfile.write("## References for command-spells\n\n")
    for x in lines:
        splitted_str_list = x.split('|')
        # print(splitted_str_list)
        url = splitted_str_list[0].rstrip()
        description = splitted_str_list[1].strip()
        outfile.write("- ["+description+"]("+url+")\n\n")
