.data
positivo: 	.asciiz "Este número é positivo\n"
negativo: 	.asciiz "Este número é negativo\n"
zero1: 	.asciiz "Este número é zero!\n"
texto:		.asciiz "Digite um número: "

.text
li $v0 ,4
la $a0, texto
syscall
li $v0, 5
syscall
move $t0, $v0	
beq $t0, $a0,zero
jal verifica

verifica:
beq $t0, 0, zero
bgt $t0, $0, maior 
blt $t0, $a0, menor 

maior:
li $v0, 4
la $a0, positivo
syscall
li $v0, 10
syscall

menor:
li $v0, 4
la $a0, negativo 
syscall
li $v0, 10
syscall

zero:
li $v0, 4
la $a0, zero1
syscall
li $v0, 10
syscall

