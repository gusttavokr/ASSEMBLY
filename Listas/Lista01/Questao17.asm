.text
main:
	addi $2, $0, 5
	syscall 
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $10, $0, 5
	addi $11, $0, 10
	
	add $12, $8, $9
	mul $13, $12, $10
	div $13, $11
	
	mflo $14
	mfhi $15
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	add $4, $0, ','
	addi $2, $0, 11
	syscall
	
	add $4, $0, $15
	addi $2, $0, 1
	syscall
