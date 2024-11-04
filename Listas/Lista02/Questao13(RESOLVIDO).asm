.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	add $9, $0, $2
	
	addi $10, $0, 10
	div $8, $10
	mfhi $20 # UNIDADE
	mflo $8
	
	addi $10, $0, 10
	div $8, $10
	mfhi $21 # DEZENA
	mflo $8
	
	addi $10, $0, 10
	div $8, $10
	mfhi $22 # CENTENA
	mflo $23 # MILHAR
	
	beq $23, $0, space
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j fim
	
space:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	beq $22, $0, space2
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j fim
space2:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	beq $21, $0, space3
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	j fim
space3:
	addi $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
fim:
	addi $2, $0, 10
	syscall