.text
main:
	addi $2 $0, 5
	syscall
	add $8, $0, $2
	
	addi $2 $0, 5
	syscall
	add $9, $0, $2
	
	add $4, $0, $8
	add $5, $0, $9
	
	jal Pot
	add $4, $0, $2
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
# ============================================================
# Função Pot para calcular potência
# Calculo = pow($4, $5) ou $4 ^ $5
# Entradas: $4, $5
# Saída: $2
# Alterados: $8, $9
# Rótulos: for
Pot: 
	addi $8, $0, 1 # Elemento neutro da multiplicação
	add $9, $0, $5
for:
	beq $9, $0, fimfor
	mul $8, $8, $4
	
	addi $9, $9, -1
	j for
fimfor:
	add $2, $0, $8
	jr $31