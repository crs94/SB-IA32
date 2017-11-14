# SB-IA32
Codigos de treino para a disciplina de Software Basico.
Linguagem IA-32

##Como montar e executar um programa de Assembly no terminal do Linux

Dado um programa chamado hello.asm:

nasm -f elf -o hello.o hello.asm (monta o arquivo)

ld -o hello hello.o (caso o sistema seja nativo 64 bits use o comando ld -m elf_i386 -o hello hello.o para gerar o executavel)

./hello (executa o arquivo)
