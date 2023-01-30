#!/bin/bash

while getopts ":c:b:" opt; do
  case $opt in
    c)
      input_file="$OPTARG"
      if [ -f "$input_file" ]; then
        nasm -f elf64 -o output.o $input_file
        if [ $? -ne 0 ]; then 
          echo "NASM compilation failed"
          exit 1
        fi
        ld -s -o output output.o
        ./output
      else
        echo "File not found."
      fi
      ;;
    b)
      skeleton_file="$OPTARG"
      if [ -f "$skeleton_file" ]; then
        echo "File already exists. Can't create skeleton."
      else
        echo "section .data\n\nsection .bss\n\nsection .text" > $skeleton_file
        echo "\n\nglobal _start\n\n_start:\n\n     mov eax,0\n\n" >> $skeleton_file
        echo "_fine:\n\n     mov eax,1\n     mov ebx,0\n     int 0x80" >> $skeleton_file
        echo "Skeleton file created at $skeleton_file"
      fi
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

if [ $OPTIND -eq 1 ]; then
  echo "Usage: $0 [-c file] [-b file]"
  echo "  -c file : execute NASM ELF64 file"
  echo "  -b file : create skeleton NASM ELF64 file"
fi
