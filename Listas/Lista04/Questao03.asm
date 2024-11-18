.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # Quantos sinais?
	
	addi $9, $0, 0 # Inicializador
	
	jal DesenhaLinha
	addi $2, $0, 10
	syscall

DesenhaLinha:
	beq $9, $8, fimfor
	
	add $4, $0, '='
	addi $2, $0, 11
	syscall
	
	addi $9, $9, 1
	j DesenhaLinha

fimfor:
	jr $31
	
