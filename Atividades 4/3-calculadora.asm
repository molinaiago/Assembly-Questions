.data
#texto menu
menu: .asciiz	"\n\1 - SOMA\n2 - MULTIPLICACAO\n3 - SUBTRACAO\n4 - DIVISAO\n0 - SAIR\nOpção: "

#soma
num1: .asciiz "\nDigite o primeiro numero: \n"
num2: .asciiz "\nDigite o segundo numero: \n"
Resultado: .asciiz "Soma = "

#multiplicação
x1: .asciiz "\n\nDigite o 1° número: \n"
x2: .asciiz "\nDigite o 2° número: \n"
Mult: .asciiz "\nMultiplicação = "

#subtração
n1: .asciiz "\n\nDigite o 1° num: "
n2: .asciiz "Digite o 2° num: "
result: .asciiz "Subração = "

#divisão
z1: .asciiz "\n\nDigite o 1° número: "
z2: .asciiz "Digite o 2° número: "
Rdiv: .asciiz "Divisão = "

fim: 	.asciiz "Voce digitou um numero negativo"

.text
inicio:
loop:				
li $v0, 4		
la $a0, menu
syscall		
li $v0, 5		
syscall
move $t1, $v0	
beq $t1, 0, zero
jal opcoes		
j loop		

opcoes:		
beq $t1, 1, blocosoma
beq $t1, 2, blocomultiplicacao		
beq $t1, 3, blocosubtracao
beq $t1, 4, blocodivisao
beq $t1, 0, zero

#soma
#recolher o num 1
blocosoma:
li $v0, 4
la $a0, num1
syscall

li $v0, 5
syscall
move $t0, $v0

# recolher o num2
li $v0, 4
la $a0, num2
syscall

li $v0, 5
syscall
move $t1, $v0

#tendo os dois valores 
add $t2, $t0, $t1
li $v0, 4
la $a0, Resultado
syscall

li $v0, 1
move $a0, $t2
syscall
j inicio

blocomultiplicacao:
# multiplicação
li $v0, 4
la $a0, x1
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 4
la $a0, x2
syscall

li $v0, 5
syscall

move $t1, $v0

mult $t0, $t1

mflo $s3

li $v0, 4
la $a0, Mult
syscall

li $v0, 1
move $a0, $s3
syscall
j inicio


blocosubtracao:
#subtração
li $v0, 4
la $a0, z1
syscall

li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, z2
syscall

li $v0, 5
syscall
move $t1, $v0

sub $t2, $t0, $t1

li $v0, 4
la $a0, result
syscall

li $v0, 1
move $a0, $t2
syscall
j inicio



blocodivisao:
#bloco da divisão
li $v0, 4
la $a0, x1
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 4
la $a0, x2
syscall

li $v0, 5
syscall
move $t1, $v0

div $t0, $t1

mflo $s3 #pega o valor menor
li $v0, 4
la $a0, Rdiv
syscall

li $v0, 1
move $a0, $s3
syscall
j inicio

#fim
zero:		
li $v0, 4	
la $a0, fim	
syscall
li $v0, 10
syscall
