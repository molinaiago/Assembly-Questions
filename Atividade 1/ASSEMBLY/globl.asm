.data			#Diretiva de dados
	msg: .asciiz    "Ol� mundo!"
.text			#Diretiva de texto
.globl bloco1		#Diretiva global
.globl bloco2
bloco1:			#Bloco de c�digo Bloco1
	li $v0, 4	#Impress�o de String
	la $a0, msg	#$a0 reecbe msg
	syscall		#Executa
	#li $v0, 10	#Fim do programa
	#syscall		#Executa
bloco2:			#Bloco de c�digo Bloco1
	li $v1, 4	#Impress�o de String
	la $a1, msg	#$a0 reecbe msg
	syscall		#Executa
	li $v1, 10	#Fim do programa
	syscall		#Executa
	