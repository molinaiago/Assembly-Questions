.data
#soma
birthday: .asciiz "\nQue ano voce nasceu? \n"
curryear: .asciiz "\nEm que ano voce está? \n"
age: .asciiz "\nIDADE = "
nextage: .asciiz "\nIDADE EM 2035 = "

.text

#recolher o ano de nascimento
li $v0, 4
la $a0, birthday
syscall
li $v0, 5
syscall
move $t0, $v0

# recolher o ano atual
li $v0, 4
la $a0, curryear
syscall
li $v0, 5
syscall
move $t1, $v0

#para idade
sub $t2, $t1, $t0

li $v0, 4
la $a0, age
syscall

li $v0, 1
move $a0, $t2
syscall

#para 2035
li $t3, 2035
sub $t4, $t3, $t1
#adicionando na idade
add $t5, $t2, $t4

li $v0, 4
la $a0, nextage
syscall

li $v0, 1
move $a0, $t5
syscall


