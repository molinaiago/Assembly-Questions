.data
ehpos: 	.asciiz "Positivo\n"
ehneg: 	.asciiz "Negativo\n"
text:				.asciiz "Digite um número, 0 para sair: "
fim: 				.asciiz "Voce digitou 0"

.text
inicio:
li $v0 ,4		
la $a0, text	
syscall
li $v0, 5
syscall
move $t0, $v0
beq $t0, $a0, zero
jal verifica

verifica:
beq $t0, $0, zero
bgt $t0, $0, maior 
blt $t0, $a0, menor 

maior:
li $v0, 4
la $a0, ehpos
syscall
j inicio		

menor:
li $v0, 4
la $a0, ehneg 
syscall
j inicio

zero:		
li $v0, 4	
la $a0, fim	
syscall
li $v0, 10
syscall
