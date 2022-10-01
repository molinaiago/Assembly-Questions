.data				#Diretiva de dados
.text				#Diretiva de texto
	li $t1, 9		#$t1 = 9
	li $t2, 2		#$t2 = 2
	sub $t0,$t1, $t2	#$t0 = $t1 - $t2
	subi $t3, $t0, 1	#$t3 = $t0 - 1
	li $v0, 10		#Sair do programa
	syscall			#Executa
	
	