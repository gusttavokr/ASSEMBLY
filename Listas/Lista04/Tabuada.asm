.text
main:
	addi $8, $0, 1 # Primeiro 
	addi $9, $0, 1 # Segundo
	addi $10, $0, 4 # Limite por coluna
	addi $11, $0, 10 # Limite por linha
	
	jal Funcao
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $8, $0, 4 # Primeiro 
	addi $9, $0, 1 # Segundo
	addi $10, $0, 7 # Limite por coluna
	addi $11, $0, 10 # Limite por linha
	
	jal Funcao2
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $8, $0, 7 # Primeiro 
	addi $9, $0, 1 # Segundo
	addi $10, $0, 10 # Limite por coluna
	addi $11, $0, 10 # Limite por linha
	
	jal Funcao3
	
	addi $2, $0, 10
	syscall
	
	
# ====================================
# Entradas: 8,9,10,11

Funcao:
	beq $8, $10, fimfor
	mul $12, $8, $9
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	add $4, $0, 'x'
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	add $4, $0, '='
	addi $2, $0, 11
	syscall
	beq $9, $11, finalizando
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
finalizando:
	slt $14, $12, $11
	beq $14, $0, prossiga
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
prossiga:
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $8, $8, 1
	j Funcao
fimfor:
	beq $9, $11, fim
	addi $9, $9, 1
	addi $8, $0, 1
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j Funcao
fim:
	jr $31

# ==========================================
			
Funcao2:
	beq $8, $10, fimfor2
	mul $12, $8, $9
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	add $4, $0, 'x'
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	add $4, $0, '='
	addi $2, $0, 11
	syscall
	beq $9, $11, finalizando2
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
finalizando2:
	slt $14, $12, $11
	beq $14, $0, prossiga2
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
prossiga2:
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $8, $8, 1
	j Funcao2
fimfor2:
	beq $9, $11, fim2
	addi $9, $9, 1
	addi $8, $0, 4
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j Funcao2
fim2:
	jr $31

# ==========================================
			
Funcao3:
	beq $8, $10, fimfor3
	mul $12, $8, $9
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	add $4, $0, 'x'
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	add $4, $0, '='
	addi $2, $0, 11
	syscall
	beq $9, $11, finalizando3
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
finalizando3:
	slt $14, $12, $11
	beq $14, $0, prossiga3
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
prossiga3:
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	
	addi $8, $8, 1
	j Funcao3
fimfor3:
	beq $9, $11, fim3
	addi $9, $9, 1
	addi $8, $0, 7
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j Funcao3
fim3:
	jr $31
	
# ===============================
