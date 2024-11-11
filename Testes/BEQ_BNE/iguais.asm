.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	beq $8, $2, iguais
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	add $4, $0, '%'
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j fim
iguais:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	add $4, $0, '='
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
fim:
	addi $2, $0, 10
	syscall