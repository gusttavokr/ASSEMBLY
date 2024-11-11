# Faça um programa que identifique um número, se for par imprime 'p', se for ímpar imprime 'i'

.text
main:
	addi $2, $0, 5
	syscall
	andi $8, $2, 1
	beq $8, $0, par
	addi $4, $0, 'i'
	j print
par:
	addi $4, $0, 'p'
print:
	addi $2, $0, 11
	syscall
	addi $2, $0, 10
fim:	
