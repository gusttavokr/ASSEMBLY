.text
main:
	lui $8, 0x1001
	ori $9, 0xff00
	
	addi $20, $0, 32
	addi $21, $0, 480
	addi $22, $0, 512
	
teste:
	beq $20, $0, teste2
	
	sw $9, 0($8)
	sw $9, 1924($8)
	addi $8, $8, 4
	addi $20, $20, -1
	j teste
teste2:
	beq $21, $0, fim
	sw $9, -4($8)
	sw $9, 0($8)
	addi $8, $8, 128
	addi $20, $20, -1
	j teste2
fim:
	addi $2, $0, 10
	syscall
