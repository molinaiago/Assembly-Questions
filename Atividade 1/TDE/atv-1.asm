.data
#soma
num1: .asciiz "Digite o primeiro numero: "
num2: .asciiz "Digite o segundo numero: "
num3: .asciiz "Digite o terceiro numero: "
num4: .asciiz "Digite o quarto numero: "

Resultado: .asciiz "Perimetro = "

.text
li $v0, 4
la $a0, num1
syscall

li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, num2
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 4
la $a0, num3
syscall

li $v0, 5
syscall
move $t2, $v0

li $v0, 4
la $a0, num4
syscall

li $v0, 5
syscall
move $t3, $v0

add $t5, $t0, $t1
li $v0, 4
add $t6, $t2, $t3
li $v1, 4

add $t7, $t6, $t5
li $v0, 4

la $a0, Resultado
syscall

li $v0, 1
move $a0, $t7
syscall
