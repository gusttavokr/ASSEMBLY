# Faça um programa que leia do usuário um intervalo fechado e imprima os números pares desse intervalo (inclusive os limites).

.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Inicio
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # Fim
	
	addi $10, $0, 2 # Par
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall 
	
teste:
	beq $8, $9, ffor
	
	div $8, $10
	mfhi $11
	
	beq $11, $0, par
	addi $8, $8, 1
	j teste
par:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $8, $8, 1
	j teste
ffor:
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
