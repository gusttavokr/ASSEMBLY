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

	jal verif
	
	add $4, $0, $20
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall

verif:
	addi $11, $0, 1
	addi $12, $0, 31
	addi $13, $0, 12
	addi $14, $0, 4
	addi $15, $0, 100
	
	slt $4, $10, $11
	bne $4, $0, Invalida
	slt $4, $9, $11
	bne $4, $0, Invalida
	slt $4, $8, $11
	bne $4, $0, Invalida

Bissexto:
	
	div $10, $14
	mfhi $4
	
	bne $4, $0, Invalida
	div $10, $15
	mfhi $4
	beq $4, $0, Invalida
	
mes:
	
		
Invalida:
	addi $20, $0, 0
	jr $31
	
	
