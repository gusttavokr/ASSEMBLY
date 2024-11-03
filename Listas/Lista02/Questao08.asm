.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # DIA
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # MÊS
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # ANO
	
	addi $11, $0, 0 # VERIFICADOR NEGATIVO
	addi $12, $0, 32 # VERIFICADOR DIA
	addi $13, $0, 13 # VERIFICADOR MÊS
	addi $15, $0, 4
	addi $17, $0, 2

	div $10, $15
	mfhi $16
	beq $16, $0, BISSEXTO
	beq $9, $17, FEVEREIRO
	j DIA
FEVEREIRO:
	addi $12, $0, 29
	j DIA
BISSEXTO:
	beq $9, $17, FEVEREIRODOIS
	j DIA
FEVEREIRODOIS:
	addi $12, $0, 30

DIA:
	beq $9, $15, ABRIL
	j DIAS
ABRIL:
	addi $12, $0, 31
DIAS:
	slt $14, $11, $8
	beq $14, $0, I
	slt $14, $8, $12
	beq $14, $0, I
	
MÊS:
	slt $14, $11, $9
	beq $14, $0, I
	slt $14, $9, $13
	beq $14, $0, I
	
ANO:
	slt $14, $11, $10
	beq $14, $0, I
	add $4, $0, 'V'
	j print
I:
	add $4, $0, 'I'
print:
	addi $2, $0, 11
	syscall
	add $2, $0, 10
	syscall