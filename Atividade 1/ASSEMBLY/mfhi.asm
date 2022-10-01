.data			#Diretiva de dados
.text			#Diretiva de texto
	li $t1, 5	#$t1 = 5
	li $t2, 2	#$t2 = 2
	div $t1, $t2	#hi = $t1/$t2
	mfhi $t0	#Registrador $t0 recebe hi
	li $v0, 10	#Sair do programa
	syscall		#Executa
	
	
