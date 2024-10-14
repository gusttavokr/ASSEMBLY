.text
main:
	addi $2, $0, 5
	syscall 
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	sll $10, $8, 1
	sll $11, $9, 1
	add $11, $9, $11
	
	addi $12, $0, 5
	add $13, $10, $11
	div $13, $12
	
	mflo $4
	addi $2, $0, 1
	syscall	
	
