.data
x1: .asciiz "\n\nInforme um numero inteiro: "
Mult: .asciiz "Dobro = "

.macro funcaodobro
.text
li $v0, 5
syscall
move $t0, $v0
li $t1, 2

mult $t0, $t1
mflo $s3

li $v0, 4
la $a0, Mult
syscall

li $v0, 1
move $a0, $s3
syscall
.end_macro

.text
.globl principal
principal:
# programa em si
li $v0, 4
la $a0, x1
syscall
funcaodobro
