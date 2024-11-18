.text
main:
	
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	jal verif
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall


# =========================================
verif:
	beq $8, $0, zero
	slt $9, $8, $0
	beq $9, $0, positivo
	addi $10, $0, -1
	jr $31
	
positivo:
	addi $10, $0, 1
	jr $31

zero:
	addi $10, $0, 0
	jr $31
