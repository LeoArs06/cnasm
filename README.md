cnasm is a bash script that allows you to compile, link, and create NASM ELF64 file skeletons with ease.
Requirements

This script requires nasm and ld to be installed on your operating system.
Installation

There are two ways to install cnasm:

    Clone this repository using git:

bash

git clone https://github.com/your_username/cnasm.git

    Place the file in the /usr/local/bin directory and give it execution permissions:

bash

cd path/to/folder
sudo cp cnasm /usr/local/bin
sudo chmod +x /usr/local/bin/cnasm

Place the skeleton file in a directory that is accessible by the system, such as the home directory:

bash

cp skeleton_file ~/skeleton_file

(Replace skeleton_file with the name of the skeleton file.)
Usage

css

cnasm [-c file] [-e file] [-b file]

Options

    -c file: Compiles the specified NASM ELF64 file.
    -e file: Compiles and executes the specified NASM ELF64 file.
    -b file: Creates a specified NASM ELF64 skeleton file.

If no option is specified, an error message describing the available options will be displayed. If the specified file does not exist, an error message will be displayed. If the skeleton file is not found, an error message will be displayed.