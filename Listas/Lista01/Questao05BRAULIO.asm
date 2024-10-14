.text
main:
	addi $2, $0, 5
	syscall 
	add $8, $0, $2
	
	addi $9, $0, 10
	
	div $8, $9 #hi <= mod ($8/$9)
	mfhi $20
	mflo $8    #$8 <= quo ($8/$9)
	
	div $8, $9 #hi <= mod ($8/$9)
	mfhi $21
	mflo $8    #$8 <= quo ($8/$9)
	
	div $8, $9 #hi <= mod ($8/$9)
	mfhi $22
	mflo $8    #$8 <= quo ($8/$9)
	
	add $4, $20, $21
	add $4, $4, $22
	
	addi $2, $0, 1
	syscall
