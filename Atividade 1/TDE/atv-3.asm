.data
number: .asciiz "Digite um número: "

.text
li $v0, 4
la $a0, number 
syscall	

li $v0, 5
syscall

move $t1, $v0
mul $t2, $t1, $t1 #pegar o numero 2x e multiplicar, depois multiplicar esse 2x mais uma vez pelo numero e aí ter o cubo
mul $t3, $t1, $t2

li $v0, 1
la $a0, ($t3)
syscall

