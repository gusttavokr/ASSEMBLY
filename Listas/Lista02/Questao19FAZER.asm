.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10
	
	div $8, $9
	mflo $10
	mfhi $11 # ultimo bit
	
	div $10, $9
	mflo $10
	mfhi $12
	sll $12, $12, 1
	
	div $10, $9
	mflo $10
	mfhi $13
	sll $13, $13, 2
	
	div $10, $9
	mflo $10
	mfhi $14
	sll $14, $14, 3
	
	div $10, $9
	mflo $10
	mfhi $15
	sll $15, $15, 4
	
	div $10, $9
	mflo $10
	mfhi $16
	sll $16, $16, 5
	
	div $10, $9
	mflo $10
	mfhi $17
	sll $17, $17, 6
	
	div $10, $9
	mflo $10
	mfhi $18
	sll $18, $18, 7
	
	add $18, $18, $17
	add $18, $18, $16
	add $18, $18, $15
	add $18, $18, $14
	add $18, $18, $13
	add $18, $18, $12
	add $18, $18, $11
	
	add $4, $0, $18
	addi $2, $0, 1
	syscall