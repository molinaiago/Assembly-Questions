.data			#Diretiva de dados
.text			#Diretiva de texto
	li $t1, 18	#$t1 = 18
	li $t2, 3	#$t2 = 3
	div $t1, $t2	#lo = $t1/$t2
	mflo $t0	#Registrador $t0 recebe lo
	
	li $v0, 10	#Sair do programa
	syscall		#Executa
	
