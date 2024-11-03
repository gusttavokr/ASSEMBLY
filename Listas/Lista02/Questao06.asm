.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	addi $10, $0, 65
	addi $12, $0, 40
	addi $13, $0, 60
	addi $14, $0, 35
	
	slt $11, $8, $10
	beq $11, $0, S
	
	slt $11, $9, $12
	beq $11, $0, S

	slt $11, $8, $13
	beq $11, $0, trintacinco
	j N
trintacinco:
	slt $11, $9, $14
	beq $11, $0, S
N:
	add $4, $0, 'N'
	j fim
S:
	add $4, $0, 'S'

fim:
	addi $2, $0, 11
	syscall
	addi $2, $0, 10
	syscall