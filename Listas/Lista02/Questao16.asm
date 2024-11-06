.text
main:
	addi $2, $0, 5
	syscall 
	add $8, $0, $2 # INSERINDO O NÚMERO TODO
	
	addi $9, $0, 10 # DIVISOR PARA PEGAR OS DÍGITOS
	addi $10, $0, 2 # PESO DO ULTIMO DIGITO ATÉ O PRIMEIRO
	
	div $8, $9 
	mflo $11 # PARA PEGAR OS PRÓXIMOS
	mfhi $12 # DIGITO
	mul $12, $12, $10 # PESANDO
	
	div $11, $9
	mflo $11
	mfhi $13
	addi $10, $0, 3 # MUDANDO O PESO
	mul $13, $13, $10 # PESANDO
	
	div $11, $9
	mflo $11
	mfhi $14
	addi $10, $0, 4
	mul $14, $14, $10
	
	div $11, $9
	mflo $11
	mfhi $15
	addi $10, $0, 5
	mul $15, $15, $10
	
	div $11, $9
	mflo $11
	mfhi $16
	addi $10, $0, 6
	mul $16, $16, $10
	
	div $11, $9
	mflo $11
	mfhi $17
	addi $10, $0, 7
	mul $17, $17, $10
	
	div $11, $9
	mflo $11
	mfhi $18
	addi $10, $0, 8
	mul $18, $18, $10
	
	div $11, $9
	mflo $11
	mfhi $19
	addi $10, $0, 9
	mul $19, $19, $10
	
	div $11, $9
	mflo $11
	mfhi $20
	addi $10, $0, 10
	mul $20, $20, $10
	
	add $20, $20, $19 # SOMANDO OS RESULTADOS
	add $20, $20, $18
	add $20, $20, $17
	add $20, $20, $16
	add $20, $20, $15
	add $20, $20, $14
	add $20, $20, $13
	add $20, $20, $12
	
	addi $21, $0, 11
	div $20, $21
	mfhi $20 # RESTO DE DIVISÃO
	addi $22, $0, 2 # Se for menor que 2
	slt $23, $20, $22
	addi $25, $0, 1
	beq $23, $25, zero # Verificando e indo pro zero
	sub $23, $21, $20 # Se não, faça 11 - resto
	add $4, $0, $23
	j prossiga
zero:
	add $23, $0, $0
prossiga:
	addi $9, $0, 10
	addi $10, $0, 3
	
	div $8, $9
	mflo $11
	mfhi $12
	mul $12, $12, $10
	
	div $11, $9
	mflo $11
	mfhi $13
	addi $10, $0, 4
	mul $13, $13, $10
	
	div $11, $9
	mflo $11
	mfhi $14
	addi $10, $0, 5
	mul $14, $14, $10
	
	div $11, $9
	mflo $11
	mfhi $15
	addi $10, $0, 6
	mul $15, $15, $10
	
	div $11, $9
	mflo $11
	mfhi $16
	addi $10, $0, 7
	mul $16, $16, $10
	
	div $11, $9
	mflo $11
	mfhi $17
	addi $10, $0, 8
	mul $17, $17, $10
	
	div $11, $9
	mflo $11
	mfhi $18
	addi $10, $0, 9
	mul $18, $18, $10
	
	div $11, $9
	mflo $11
	mfhi $19
	addi $10, $0, 10
	mul $19, $19, $10
	
	div $11, $9
	mflo $11
	mfhi $20
	addi $10, $0, 11
	mul $20, $20, $10
	
	sub $8, $8, $8
	mul $8, $22, $23
	
	add $20, $20, $19
	add $20, $20, $18
	add $20, $20, $17
	add $20, $20, $16
	add $20, $20, $15
	add $20, $20, $14
	add $20, $20, $13
	add $20, $20, $12
	add $20, $20, $8
	
	addi $21, $0, 11
	div $20, $21
	mfhi $20
	addi $22, $0, 2
	slt $24, $20, $22
	addi $25, $0, 1
	beq $24, $25, zero2
	sub $24, $21, $20
	add $4, $0, $24
	j fim
zero2:
	add $24, $0, $0
fim: # Printando os ultimos digitos
	add $4, $0, $23
	addi $2, $0, 1
	syscall
	add $4, $0, $24
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall