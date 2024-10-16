.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 10
	div $8, $9
	mfhi $10
	
	div $8,$9
	mflo $11
	div $11,$9
	mfhi $12
	
	div $11,$9
	mflo $13
	div $13,$9
	mfhi $14
	
	
	add $15, $10, $12
	add $16, $15, $14
	
	
	#PRINT
	add $4, $0, $16
	addi $2, $0, 1
	syscall

	
	addi $2, $0, 10
	syscall
