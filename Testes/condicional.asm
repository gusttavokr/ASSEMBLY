# beq
# sintaxe: se $8 == $9, rótulo
# exemplo: beq $8, $9, main

# bne
# sintaxe: se $8 != $9, rótulo
# exemplo: bne $8, $9, main

# jump
# exemplo: j main

.text
main:
	addi $2, $0, 5
	syscall
	beq $2, $0, fim
	addi $2, $0, 5
	syscall
soma:
	add $9, $2, $8  
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
 	syscall
fim:	nop
