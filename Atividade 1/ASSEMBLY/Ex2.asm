.data
	num: .word 20 #Valor inteiro da mem�ria RAM
.text
	li $v0, 1     #Imprimir inteiro
	lw $a0, num   #Buscar na mem�ria o valor de num e colocar em $a0
	syscall
	
	