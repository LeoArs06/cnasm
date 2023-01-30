# cnasm

This v1.1 bash script allows for compiling, linking, and creating NASM ELF64 file skeletons.
Usage

The usage format is as follows:

css

./v1.1 [-c file] [-e file] [-b file]

Options

    -c file : Compiles the specified NASM ELF64 file
    -e file : Compiles and executes the specified NASM ELF64 file
    -b file : Creates a specified NASM ELF64 skeleton file

Requirements

The operating system requires the installation of nasm and ld to use this script.
Notes

    If no option is specified, an error message describing available options will be displayed.
    If the specified file does not exist, an error message will be displayed.
    If the skeleton file is not found, an error message will be displayed.
