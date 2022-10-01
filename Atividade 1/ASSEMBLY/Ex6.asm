.data
kp:	.asciiz "Digite o Km percorrido: "
kf:	.asciiz "Km finais = "

.text
li $v0, 4	# imprimir uma string
la $a0, kp	# a0 = kp
syscall		# Execute
li $v0, 5	# Ler um número inteiro
syscall 	# Executa
move $t0, $v0	# t0 = v0
li $t1, 15	# t1 = 15
sub $t2, $t1, $t0	# t2 = t1 - t0

li $v0, 4	# Imprima uma string
la $a0, kf	# a0 = kf
syscall
li $v0, 1
la $a0, ($t2)	#a0 = t2
syscall		# Executa