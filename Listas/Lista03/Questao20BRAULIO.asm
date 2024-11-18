.text
main:
	addi $23, $0, 0 # Numero de picos

	addi $2, $0, 5
	syscall
	add $16, $0, $2 # 16 => N - Número de amostras
	
	addi $2, $0, 5
	syscall
	add $17, $0, $2 # Primeiro valor
	addi $2, $0, 5
	syscall
	add $18, $0, $2 # Segundo valor
	
	
	add $4, $0, $17
	add $5, $0, $18
	
	addi $19, $16, -2
teste:	
	beq $19, $0, fimLaco
	addi $2, $0, 5
	syscall
	add $6, $0, $2
	jal pico
	add $23, $23, $2
	add $4, $0, $5
	add $5, $0, $6	

	addi $19, $19, -1	
	j teste
fimLaco:
	add $6, $0, $17
	jal pico
	add $23, $23, $2
	add $4, $0, $5
	add $5, $0, $6
	add $6, $0, $18
	jal pico
	add $23, $23, $2
	add $4, $0, $23
	addi $2, $0, 1
	syscall
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	j main
	
	addi $2, $0, 10
	syscall
	
# =====================================================
# Função Pico
# ENtrada: $4, $5, $6,=
# Saída: $2
# Reg. Usados:
pico:
	slt $8, $4, $5
	slt $9, $6, $5
	and $10, $8, $9
	
	slt $8, $5, $4
	slt $9, $5, $6
	and $11, $8, $9
	or $2, $10, $11
	jr $31