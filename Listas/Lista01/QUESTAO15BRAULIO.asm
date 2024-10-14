.text
main:
	addi $2, $0, 5 #Ler Caractere
	syscall
	
	add $8, $0, $2
	sub $9, $0, $8
	srl $10, $9, 31
	
	sll $11, $10, 4 #multiplica por 16
	addi $12, $11, 32
	add $4, $12, $8
	add $2, $0, 11
	syscall
	
	addi $4, $0, '|'
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall
