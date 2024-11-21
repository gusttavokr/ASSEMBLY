.text
main:
	addi $8, $0, 1 #Primeiro
	addi $9, $0, 1 # Segundo
	addi $10, $0, 10 # Fim linhas
	addi $15, $0, 10 # Verificador
	addi $11, $0, 4 # Fim colunas
	
linha:
	beq $8, $11, fimfor1
	mul $12, $8, $9 # Multiplicação
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	jal printX
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	jal printIgual
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	jal Separador
	addi $8, $8, 1
	
	j linha

fimfor1:
	beq $9, $10, fim
	addi $8, $0, 1
	addi $9, $9, 1
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall	
	j linha

fim:
	addi $2, $0, 10
	syscall	
# ===============
printX:
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, 'x'
	addi $2, $0, 11
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	jr $31

# =================
printIgual:
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, '='
	addi $2, $0, 11
	syscall
	slt $13, $12, $15
	bne $13, $0, menor
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	jr $31
menor:
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	jr $31
# =====================
Separador:
	add $4, $0, ' '
	addi $2, $0, 11
	syscall	
	add $4, $0, ' '
	addi $2, $0, 11
	syscall	
	#add $4, $0, ' '
	#addi $2, $0, 11
	#syscall	
	jr $31
