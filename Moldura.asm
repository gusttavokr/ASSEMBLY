.text
main:
	lui $8, 0x1001
	ori $9, 0xff00
	
	addi $20, $0, 512
	addi $21, $0, 480 #480
	addi $22, $0, 451 #451
	addi $10, $0, 1
	

teste:
	beq $20, $0, fimfor
	
	slt $23, $20, $21 # Menor
	beq $23, $10, pulo
	
	# slt $23, $20, $22 # Maior
	# beq $23, $0, pulo
	
	sw $9, 0($8)
pulo:
	addi $8, $8, 4
	addi $20, $20, -1
	j teste
fimfor:

	addi $2, $0, 10
	syscall
	
	
