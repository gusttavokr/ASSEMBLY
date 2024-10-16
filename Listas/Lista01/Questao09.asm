.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 3600 #Horas
	
	div $8, $9
	mflo $10
	mfhi $11
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	add $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	addi $12, $0, 60 #Minutos
	
	div $11, $12
	mflo $13
	mfhi $14
	
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	add $4, $0, ':'
	addi $2, $0, 11
	syscall
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
