.text
main:
	addi $8, $0, 11 # Condição de Parada
	addi $9, $0, 1	# Inicialização i = 0
test: 	beq $8, $9, fimfor # Teste i<10
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	add $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $9, $9, 1 # Incremento i++
	j test
fimfor:
	addi $2, $0, 10
	syscall