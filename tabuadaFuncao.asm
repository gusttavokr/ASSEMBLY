.text
main:
	addi $8, $0, 1 #Primeiro
	addi $9, $0, 1 # Segundo
	addi $10, $0, 9 # Fim linhas
	addi $11, $0, 10 # Verificador
	addi $12, $0, 4 # Fim colunas
	
	jal Tabuada

fim:
	addi $2, $0, 10
	syscall
	
# =========================================================

Tabuada:
	beq $8, $12, fimfor
	mul $13, $8, $9
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	jal printX
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	jal printIgual
	add $4, $0, $13
	addi $2, $0, 1
	syscall
	
	addi $8, $8, 1
	j Tabuada
fimfor:
	beq $9, $11, finaliza
	addi $8, $0, 1
	addi $9, $9, 1
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j Tabuada
finaliza:
	jr $31
# ================================================

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

# ====================================================

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
	j final
menor:
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
	add $4, $0, ' '
	addi $2, $0, 11
	syscall
final:
	jr $31
