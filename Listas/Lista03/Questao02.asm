# Faça um programa que solicite ao usuário um número para ser a referência e outro para ser a quantidade de valores a ser impresso no caso do programa da Q1. Para a mesma resposta, por exemplo, o usuário forneceria a referência 3 e a quantidade 10.

.text 
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Referência
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # Quantidade 
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $10, $0, 1 # Inicializador
	addi $11, $0, 0 # Contador
	
dividindo:
	div $10, $8
	mfhi $12
	
teste:	
	beq $12, $0, ffor
	
	addi $10, $10, 1 # incremento++
	j dividindo

ffor:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $11, $11, 1
	beq $11, $9, fim
	
	addi $10, $10, 1
	j dividindo
fim:
	addi $2, $0, 10
	syscall