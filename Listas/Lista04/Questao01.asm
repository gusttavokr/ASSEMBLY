.text
main:
	
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $9, $0, 2
	jal dobrar
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
	
# ============================
# Função: Dobrar

dobrar:
	mult $8, $9
	mflo $10
	jr $31
