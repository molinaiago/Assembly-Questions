.data
ehmaior: 	.asciiz "Maior de idade\n"
ehmenor: 	.asciiz "Menor de idade\n"
text:				.asciiz "Digite sua idade, 0 para sair: "
fim: 				.asciiz "Você digitou 0"

.text

inicio:
li $v0 ,4		
la $a0, text	
syscall
li $v0, 5
syscall
move $t1, $v0
beq $t0, $a0, zero
jal verifica

verifica:
li $t0, 18 # guardar 18 no t0  
beq $t1, $0, zero
bgt $t1, $t0, maior 
blt $t1, $t0, menor 

maior:
li $v0, 4
la $a0, ehmaior
syscall
j inicio

menor:
li $v0, 4
la $a0, ehmenor 
syscall
j inicio
		

zero:		
li $v0, 4	
la $a0, fim	
syscall
li $v0, 10
syscall

