.data			#Diretiva de dados
	var1: .byte 'A'	#var1 = 'A'
.text			#Diretiva de dados
	lb $t0, var1	#$t0 = var1
	li $t1, 97	#$t1 = 97
	sb $t1, var1	#$t1 = var1
	
	