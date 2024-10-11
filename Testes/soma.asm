.text
main: 

	#Entrada
	addi $2,$0,5 #leitura do inteiro1
	syscall
	add $8 , $2, $0 #armazena no $8
	
	addi $2, $0, 5 #leitura do inteiro2
	syscall
	
	#SOMA
	add $8, $2, $8 #soma e armazena no $8
	
	# SAÍDA
	add $4, $0, $8 #armazena no $4
	addi $2, $0, 1 #escreve o inteiro
	syscall
