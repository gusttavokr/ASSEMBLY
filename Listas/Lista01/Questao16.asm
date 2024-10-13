.text
main:
	addi $2, $0, 5
	syscall 
	add $8, $0, $2
	
	addi $9, $0, 2
	
	div $8, $9
	
	mfhi $10
	
	addi $11, $0, -1
	mul $12, $10, $11
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
