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
	
	addi $11, $0, 5
	addi $12, $0, 15
	
	add $8, $8, $9
	add $8, $8, $10
	mul $13, $11, $8
	div $13, $12
	mflo $14
	mfhi $15
	
	beq $15, $11, prox
	addi $14, $14, 1
	add $4, $0, $14
	j fim
prox:
	add $4, $0, $14
fim:
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
