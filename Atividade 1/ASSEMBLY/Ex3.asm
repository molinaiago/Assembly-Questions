.data				#Diretiva de dados
.text				#Diretiva de texto
	li $t1, 5		#$t1 = 5
	li $t2, 2		#$t2 = 2
	add $t0,$t1, $t2	#$t0 = $t1 + $t2
	addi $t3, $t0, 10	#$t3 = $t0 + 10
	li $v0, 10		#Sair do programa
	syscall			#Executa

	
	