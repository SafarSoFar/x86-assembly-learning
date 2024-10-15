read -p "Enter ASM file name to compile (without .asm): " i_file_name
nasm -f elf "${i_file_name}.asm"
ld -m elf_i386 "${i_file_name}.o" -o $i_file_name
