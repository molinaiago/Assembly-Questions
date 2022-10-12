.data
msg1: .asciiz "\nDigite a nota 1: "
msg2: .asciiz "\nDigite a nota 2: "
msg3: .asciiz "\nDigite a nota 3: "
media: .asciiz "\nSua media e: "
tres: .float 3.0

.text
#nota 1
li $v0, 4
la $a0, msg1
syscall

li $v0,6
syscall
mov.s $f1, $f0

#nota 2
li $v0, 4
la $a0, msg2
syscall

li $v0,6
syscall
mov.s $f2, $f0

#nota 3
li $v0, 4
la $a0, msg3
syscall

li $v0,6
syscall
mov.s $f3, $f0

#somando os numeros
add.s $f4, $f1, $f2
add.s $f5, $f3, $f4
#dividindo por 3
lwc1 $f6, tres
div.s $f7, $f5, $f6

#resultado
li $v0, 4
la $a0, media
syscall

li $v0, 2
mov.s $f12, $f7
syscall

li $v0,10
syscall