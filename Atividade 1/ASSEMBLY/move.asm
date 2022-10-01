.data			#Diretiva de dados
.text			#Diretiva de texto
	li $v0, 5	#Ler um número inteiro do teclado
	syscall		#Executa
	move $t0, $v0	#Salvar no registrador $t0
	li $v0, 10	#Sair do programa
	syscall
	
	