.text
main:
	# NOTAS
	addi $2, $0, 5
	syscall
	add $11, $0, $2
	
	addi $2, $0, 5
	syscall
	add $12, $0, $2
	
	addi $2, $0, 5
	syscall
	add $13, $0, $2
	
	# PESOS
	addi $8, $0, 1
	addi $9, $0, 2
	addi $10, $0, 3
	
	# Nota ponderada
	mult $11, $8
	mflo $11
	
	mult $12, $9
	mflo $12
	
	mult $13, $10
	mflo $13
	
	# SOMA DAS PONDERADAS
	add $11, $11, $12
	add $11, $11, $13
	
	# DENOMINADOR DA MEDIA
	addi $8, $0, 6
	
	# CALCULO 
	div $11, $8
	mflo $10
	mfhi $12
	
	
	
	# MEDIA 
	addi $8, $0, 60
	slt $13, $10, $8
	beq $13, $0, aprovado
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	add $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, 'R'
	addi $2, $0, 11
	syscall
	j fim
aprovado:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	add $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, 'A'
	addi $2, $0, 11
	syscall
fim:
	addi $2, $0, 10
	syscall