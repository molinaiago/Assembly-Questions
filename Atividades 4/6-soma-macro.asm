.data

num1: .asciiz "Digite o primeiro numero: "
num2: .asciiz "Digite o segundo numero: "
Resultado: .asciiz "Soma = "

.macro funcaosoma
.text
add $t2, $t0, $t1
li $v0, 4
la $a0, Resultado
syscall

li $v0, 1
move $a0, $t2
syscall
.end_macro

.text
.globl principal
principal:
# programa em si
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

funcaosoma