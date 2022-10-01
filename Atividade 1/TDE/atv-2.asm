.data
cur:	.asciiz "KM PERCORRIDO:  "
need:	.asciiz "KM QUE FALTAM:  "

.text
li $v0, 4
la $a0, cur
syscall	
li $v0, 5
syscall 
move $t0, $v0
li $t1, 15
sub $t2, $t1, $t0

li $v0, 4	
la $a0, need	
syscall
li $v0, 1
la $a0, ($t2)
syscall	