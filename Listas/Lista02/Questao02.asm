.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	srl $9, $8, 31
	beq $9, $0, positivo
	mul $4, $8, $8
	j print
positivo:
	addi $11, $0, 2
	mul $12, $8, $11
	add $4, $0, $12
print:
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
