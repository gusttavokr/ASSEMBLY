.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	add $9 $0 $8
	
	jal seila
	
seila:
	addi $2, $0, 5
	syscall
	sw $2, 0($29) # Salvando o que tem no $2 pro Endereço de Memória do $29
	
	beq $8, $0, fimfor
	addi $8, $8, -1
	addi $29, $29, -4
	j seila

fimfor:
	lw $4, 0($29) # Resgatando pro $4 o que tem no Endereço de Memória do $29
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	beq $8 $9 fim
	addi $8 $8 1
	addi $29 $29 4
	j fimfor
	
fim:
	addi $2, $0, 10
	syscall
