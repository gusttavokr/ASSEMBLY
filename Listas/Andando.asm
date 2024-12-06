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
	#sw $4, 2048($8)
	
	addi $8, $8, 4

	addi $9, $9, -1
	j for1
fimScr:

	
	
	lui $8, 0x1001
	ori $20, 0xffffff
	
	addi $10, $0, 512
for2:
	beq $10, $0, fim
	sw $20, 0,($8)
	sw $20, 4($8) # "Movimento"
	lw $9, 2048($8) # Recuperando o original
	sw $9, 0($8) # Salvando no passo anterior

	addi $8, $8, 4
	
	jal timer
	
	addi $10, $10, -1
	j for2
fim:
	addi $2, $0, 10
	syscall
	
# ==================================================
# Função Timer
timer:
	sw $16, 0($29)
	addi $29, $29, 4
	
	addi $16, $0, 1000 # "Delay" 
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
