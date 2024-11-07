.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 4
	addi $10, $0, 100
	
	div $8, $9
	mfhi $11
	beq $11, $0, continue
	j nao
continue:
	div $8, $10
	mfhi $12
	bne $12, $0, sim
nao:
	add $4, $0, 'n'
	j print
sim: 
	add $4, $0, 'B'
print:
	addi $2, $0, 11
	syscall
	addi $2, $0, 10
	syscall
	