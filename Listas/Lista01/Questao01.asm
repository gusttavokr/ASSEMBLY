.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 2
	
	mul $9, $8, $2
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
