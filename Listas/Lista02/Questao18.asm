.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 2
	
	div $8, $9
	mflo $10
	mfhi $11 # ultimo bit
	beq $10, $0, fim
	
	div $10, $9
	mflo $10
	mfhi $12
	beq $10, $0, fim
	
	div $10, $9
	mflo $10
	mfhi $13
	beq $10, $0, fim
	
	div $10, $9
	mflo $10
	mfhi $14
	beq $10, $0, fim
	
	div $10, $9
	mflo $10
	mfhi $15
	beq $10, $0, fim
	
	div $10, $9
	mflo $10
	mfhi $16
	beq $10, $0, fim
	
	div $10, $9
	mflo $10
	mfhi $17
	beq $10, $0, fim
	
	div $10, $9
	mflo $10
	mfhi $18
	beq $10, $0, fim
	
	div $10, $9
	mflo $10
	mfhi $19
	beq $10, $0, fim
	
	div $10, $9
	mflo $10
	mfhi $20
	beq $10, $0, fim
fim:
	add $4, $0, $20
	addi $2, $0, 1
	syscall
	add $4, $0, $19
	addi $2, $0, 1
	syscall
	add $4, $0, $18
	addi $2, $0, 1
	syscall
	add $4, $0, $17
	addi $2, $0, 1
	syscall
	add $4, $0, $16
	addi $2, $0, 1
	syscall
	add $4, $0, $15
	addi $2, $0, 1
	syscall
	add $4, $0, $14
	addi $2, $0, 1
	syscall
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	add $4, $0, $11
	addi $2, $0, 1
	syscall