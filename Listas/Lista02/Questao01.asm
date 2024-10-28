# Faça um programa que leia dois números e imprima o maior.

.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	
	sub $10, $8, $9 #Subtrai os valores
	srl $11, $10, 31 #Pega o bit de sinal
	bne $11, $0, B #Se o bit for diferente de $0, print o B
	add $4, $0, $8
	j print #Pule pro Print
B:
	add $4, $0, $9
print:
	addi $2, $0, 1
	syscall
