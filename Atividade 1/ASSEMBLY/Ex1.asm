.data
	char:	.byte 'R' #Caractere que será impresso
.text
	li $v0, 4	  #Imprimir uma string
	la $a0, char
	syscall
	li $v0, 10	  #Encerrar o programa
	syscall		  
	
	
