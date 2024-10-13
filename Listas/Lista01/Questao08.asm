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
	
	

	addi $11, $0, 3600
	mul $12, $8, $11
	
	addi $13, $0, 60
	mul $14, $9, $13
	
	add $15, $10, $12
	add $16, $15, $14
	
	add $4, $0, $16
	addi $2, $0, 1
	syscall
