.text
main:
	lui $8, 0x1001
	addi $9, $0, 32764
	
	ori $5, $0, 0xffff 
	sll $5, $5, 8 # 0 - 0x00ffff00 (MÁXIMO SUPERIOR)
	
for1:
	beq $9, $0, fimScr
	
	addi $2, $0, 42 # Gerando cores aleatórias
	syscall
	sw $4, 0($8)
	sw $4, 2048($8)
	
	addi $8, $8, 4

	addi $9, $9, -1
	j for1
fimScr:




	
	
	lui $8, 0x1001
	ori $20, 0xffffff
	
	addi $10, $0, 512
	lui $21, 0xffff
	addi $25, $0, 32
	addi $10, $0, 4
	addi $11, $0, 'a'
	addi $12, $0, 'd'
	addi $13, $0, 's'
	addi $14, $0, 'w'
for2:
	#beq $10, $0, fim
	sw $20, 0,($8)
	jal timer
	#sw $20, 4($8) # "Movimento"
	lw $9, 2048($8) # Recuperando o original
	sw $9, 0($8) # Salvando no passo anterior
	add $8, $8, $10
	
	
	lw $22, 0($21)
	beq $22, $0, cont
	
	lw $23, 4($21)
	beq $23, $25, fim
	beq $23, $11, esq
	beq $23, $12, dir
	beq $23, $13, baixo
	beq $23, $14, cima
	j cont
esq:
	addi $10, $0, -4
	j cont
dir:
	addi $10, $0, 4
	j cont
baixo:
	addi $10, $0, 128
	j cont
cima:
	addi $10, $0, -128
	j cont
	
	#addi $10, $10, -1
cont:
	j for2
fim:
	addi $2, $0, 10
	syscall
	
# ==================================================
# Função Timer
timer:
	sw $16, 0($29)
	addi $29, $29, 4
	
	addi $16, $0, 100000 # "Delay" 
forTimer:
	beq $16, $0, fimTimer

	nop
	nop
	addi $16, $16, -1
	j forTimer
fimTimer:
	
	addi $29, $29, 4
	lw $16, 0($29)
	jr $31
