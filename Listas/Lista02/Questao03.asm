.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9
	beq $10, $0, primeiro
	add $4, $0, $9
	j print
primeiro:
	add $4, $0, $8
print:
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
diferença:
	sub $4, $8, $9
print2:
	addi $2, $0, 1
	syscall
fim:	
	addi $2, $0, 10
	syscall	