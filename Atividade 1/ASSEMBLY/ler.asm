.data
	num: .asciiz "Informe um num: "	
.text
	li $v0, 4	#Imprimir a mensagem
	la $a0, num	#Carrega a mensagem
	syscall		#Executa
	li $v0, 5	#Le um n�mero inteiro
	syscall		#Executa
	
	
	
