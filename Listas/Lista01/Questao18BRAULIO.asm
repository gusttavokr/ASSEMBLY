.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	
	
	
	sub $10, $8, $9
	srl $11, $10, 31
	#imp A
	
	not $12, $10
	srl $13, $12, 31
	#imp B 
	
	mul $14, $8, $11
	mul $15, $9, $13
	add $16, $14, $15
	
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
