.text
main:
	addi $2, $0, 5
	syscall 
	add $8, $0, $2
	
	
	mul $9, $8, $8
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall	
	
	addi $2, $0, 10
	syscall
