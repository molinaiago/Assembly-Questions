.data
#soma
num1: .asciiz "\nDigite o primeiro numero[NEGATIVO PARA SAIR]: \n"
num2: .asciiz "\nDigite o segundo numero: \n"
Resultado: .asciiz "Soma = "

#multiplicação
x1: .asciiz "\n\nDigite o 1° número: \n"
x2: .asciiz "\nDigite o 2° número: \n"
Mult: .asciiz "\nMultiplicação = "

fim: 	.asciiz "Voce digitou um numero negativo"

.text
inicio:

#soma
#recolher o num 1
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

jal verificarsoma
verificarsoma:
blt $t0, $0, zero
blt $t1, $0, zero 


#tendo os dois valores 
add $t2, $t0, $t1
li $v0, 4
la $a0, Resultado
syscall

li $v0, 1
move $a0, $t2
syscall

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

jal verificarmult
verificarmult:
blt $t0, $0, zero
blt $t1, $0, zero 

mult $t0, $t1

mflo $s3

li $v0, 4
la $a0, Mult
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
