# Faça um programa que implementa um laço com um teste no início que conte de 0 a 10 imprimindo esses números, um em cada linha da saída.

.text
main:
	addi $8, $0, 0 # inicializador
	addi $9, $0, 11 # limite
	
test:
	beq $8, $9, ffor
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $8, $8, 1
	j test

ffor:
	addi $2, $0, 10
	syscall