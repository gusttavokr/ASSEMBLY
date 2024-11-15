# Faça um programa que leia 10 valores e imprima a sua soma.

.text
main:
	addi $8, $0, 0 # Inicializador
	addi $10, $0, 10 # Limite
	addi $11, $0, 0 # Somador
	
teste:
	beq $8, $10, ffor
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # Variável
	
	add $11, $11, $9
	addi $8, $8, 1
	
	j teste

ffor:
	add $4, $0, $11
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
