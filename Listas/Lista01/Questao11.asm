.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10
	
	div $8, $9
	mfhi $10
	mflo $11
	
	add $4, $0, $10
	addi $2, $0, 1
	syscall

	div $11, $9
	mfhi $12
	mflo $13
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	div $13, $9
	mfhi $14
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall

	addi $2, $0, 10
	syscall
