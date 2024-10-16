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
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	div $11, $9
	mfhi $12
	mflo $13
	
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	div $13, $9
	mfhi $14
	mflo $15
	
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	div $15, $9
	mfhi $16
	
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $2, $0, 10
	syscall
