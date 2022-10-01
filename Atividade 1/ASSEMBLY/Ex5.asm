.data				#Diretiva de dados
.text				#Diretiva de texto
	li $t0, 3		#$t0 = 3
	li $t1, 2		#$t1 = 2
	mul $t2,$t0, $t1	#$t2 = $t0 * $t1	
	li $v0, 10		#Sair do programa
	syscall			#Executa
	
	