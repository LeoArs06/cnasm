#v1.1
#!/bin/bash

skeleton_file="/esempio/file.asm"

while getopts ":c:e:b:" opt; do
  case $opt in
    #compile and link
    c)
      input_file="$OPTARG"
      if [ -f "$input_file" ]; then
        nasm -f elf64 -o output.o $input_file
        if [ $? -ne 0 ]; then 
          echo "NASM compilation failed"
          exit 1
        fi
        ld -s -o output output.o
      else
        echo "File not found."
      fi
      ;;

    #compile, link execute
    e)
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
    
    #create a skeleton file
    b)
      if [ ! -f $skeleton_file ]; then
        echo "Error: skeleton file not found"
        exit 1
      fi
      if [ -f "$OPTARG" ]; then
        echo "Error: file $OPTARG already exists"
        exit 1
      fi
      cat $skeleton_file >> "$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

if [ $OPTIND -eq 1 ]; then
  echo "Usage: $0 [-c file] [-b file]"
  echo "  -c file : compile NASM ELF64 file"
  echo "  -e file : execute NASM ELF64 file"
  echo "  -b file : create skeleton NASM ELF64 file"
fi
