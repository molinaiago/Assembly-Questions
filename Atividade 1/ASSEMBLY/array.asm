.data				#Diretiva de dados
	vetor1: .space 12	#vetor1 = 3 números
.text				#Diretiva de texto
	la $t0, vetor1 		#Carregar o vetor em $t0
	li $t1, 5		#$t1 = 5 Value(+0)
	sw $t1, 0($t0)		#Primeiro elemento
	li $t1, 13		#$t1 = 13 Value(+4)
	sw $t1, 4($t0)		#Segundo elemento
	li $t1, -7		#$t1 = -7 Value(+8)
	sw $t1, 8($t0)		#Terceiro elemento
	li $v0, 10		#Sair do programa
	syscall
	
	