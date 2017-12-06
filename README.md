# SB-IA32
Codigos de treino para a disciplina de Software Basico.
Linguagem IA-32

##Como montar e executar um programa de Assembly no terminal do Linux

Dado um programa chamado hello.asm:
Assembles: nasm -f elf -o hello.o hello.asm

Links in 32-bit: ld -o hello hello.o 
Links in 64-bit: ld -m elf_i386 -o hello hello.o
(Add libraries files by the end of the link command line)

Executes: ./hello


Libraries obtained from: http://service.scs.carleton.ca/sivarama/org_book/org_book_web/source_code.html
