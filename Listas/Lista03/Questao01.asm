# Faça um programa que calcule e mostre os 10 primeiros números múltiplos de 3, considerando valores maiores que 0

.text
main:
	addi $8, $0, 1 # Inicialização i 
	addi $9, $0, 3 # Verificador
	addi $11, $0, 0 # Contador++
	addi $12, $0, 10 # Limitador

dividindo:	
	div $8, $9
	mfhi $10
teste:
	beq $10, $0, ffor
	
	addi $8, $8, 1 # Incremento++
	j dividindo
ffor:
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $11, $11, 1 # Contador++
	beq $11, $12, fim
	
	addi $8, $8, 1
	j dividindo
fim:
	addi $2, $0, 10
	syscall