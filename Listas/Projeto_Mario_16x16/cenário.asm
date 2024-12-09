.text
main:

céu:
	lui $8, 0x1001
	ori $9, 0x00ffff 
	
	addi $20, $0, 512

for1:	
	beq $20, $0, chão
	
	sw $9, 0($8)
	
	addi $8, $8, 4
	addi $20, $20, -1
	j for1
	
chão:

	lui $8, 0x1001
	ori $20, 0xff00
	
	addi $10, $0, 128

for2:
	beq $10, $0, fim
	sw $20, 1664($8)
	
	addi $8, $8, 4
	addi $10, $10, -1
	j for2 	 
	
fim:
	addi $2, $0, 10
	syscall