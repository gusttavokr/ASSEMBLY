.text
main:
	addi $2, $0, 5
	syscall
	add $4, $2, $2
	addi $2, $0, 1
	syscall
