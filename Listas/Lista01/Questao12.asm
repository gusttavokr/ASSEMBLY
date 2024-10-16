.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	
	
	sll $11, $8, 1
	add $12, $8, $11
	
	sll $13, $9, 3
	add $14, $13, $9
	
	sll $15, $10, 4
	sub $16, $15, $10
	
	
	
	addi $17, $0, 27
	
	add $18, $12, $14
	add $19, $18, $16
	
	div $19, $17
	mflo $20
	
	add $4, $0, $20
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
