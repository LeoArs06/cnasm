# cnasm

This v1.1 bash script allows for compiling, linking, and creating NASM ELF64 file skeletons.
Usage

The usage format is as follows:

Requirements

The operating system requires the installation of nasm and ld to use this script.
Notes

Installation

To use cnasm as a normal command, you have two options:

    Clone this repository using git:

bash

git clone https://github.com/your_username/cnasm.git

    Place the file in the /usr/local/bin directory and grant it execution permissions. Here are the steps to do so:

bash

cd path/to/folder
sudo cp cnasm /usr/local/bin
sudo chmod +x /usr/local/bin/cnasm

Regarding the skeleton file, it should be placed in a directory accessible by the system, such as the home directory:

bash

cp skeleton_file ~/skeleton_file

In the code above, replace skeleton_file with the name of the skeleton file.

Usage

cnasm [-c file] [-e file] [-b file]

Options

    -c file : Compiles the specified NASM ELF64 file
    -e file : Compiles and executes the specified NASM ELF64 file
    -b file : Creates a specified NASM ELF64 skeleton file

    If no option is specified, an error message describing available options will be displayed.
    If the specified file does not exist, an error message will be displayed.
    If the skeleton file is not found, an error message will be displayed.
