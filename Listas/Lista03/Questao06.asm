# Faça um programa que leia números inteiros e calcule a soma. O laço do programa
# termina quando o usuário digita um valor negativo. Em seguida o programa imprime a
# soma dos valores digitados.

.text
main:
	addi $10, $0, 0 # somador
teste:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	slt $9, $8, $0
	bne $9, $0, ffor
	add $10, $10, $8
	j teste
ffor:
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
