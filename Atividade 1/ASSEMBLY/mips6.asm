.data			#Diretiva de dados
	idade: .word 37 #idade - 37
.text			#Diretiva de texto
	lw $t0, idade	#$t0 = idade
	li $v0, 10
	syscall
	