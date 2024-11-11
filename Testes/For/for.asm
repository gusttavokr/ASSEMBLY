.text
main:
	addi $10, $0, 6
	addi $9, $0, 1
test: 	beq $9, $10, fimfor
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	addi $9, $9, 1
	j test

fimfor:
	addi $2, $0, 10
	syscall