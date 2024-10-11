.text
main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2

  addi $2, $0, 5
  syscall

  sub $8, $8, $2 #Código de subtração

  add $4, $0, $8 #Armazena o valor anterior em um novo banco de registrador
  addi $2, $0, 1 #Código de "print"
  syscall
