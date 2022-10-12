.data
faren: .asciiz "Fahrenheit: "
celsius: .asciiz "Celsius: "
trintadois: .float 32.0
cinco: .float 5.0
nove: .float 9.0

.text
li $v0, 4
la $a0, faren
syscall

li $v0, 6
syscall

l.s $f1, trintadois
l.s $f2, cinco
l.s $f3, nove

sub.s $f0, $f0, $f1
mul.s $f0, $f0, $f2
div.s $f0, $f0, $f3

li $v0, 4
la $a0, celsius
syscall

li $v0, 2
mov.s $f12, $f0
syscall

li $v0, 10
syscall