.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 4
	div $8, $9
	mfhi $10
	
	bne $10, $0, não_bi
	add $4, $0, 'b'
	j print
não_bi:
	addi $4, $0, 'n'
print:
	addi $2, $0, 11
	syscall
	addi $2, $0, 10
	syscall
