.data
n1: .asciiz "Digie um valor n1: "
n2: .asciiz "Digite um valor n2: "
divi: .asciiz "N1/N2 = "
.text
li $v0, 4
la $a0, n1
syscall	

li $v0, 5
syscall	
	
move $t1, $v0
li $v0, 4
la $a0, n2
syscall

li $v0, 5
syscall

move $t2, $v0
div $t3, $t1, $t2
li $v0, 4
la $a0, divi	
syscall		

li $v0, 1	
la $a0, ($t3)	
syscall

li $v0, 10
syscall