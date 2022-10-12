.data
peso_msg:       .asciiz "\nQuantos kg voce tem?: "
altura_msg:      .asciiz "\nQual a sua altura?: "
imc_msg:         .asciiz "\nIMC: "

.text
#Peso
li $v0, 4
la $a0, peso_msg
syscall
li $v0, 6
syscall

mov.s $f1, $f0
	
# Altura
li $v0, 4
la $a0, altura_msg
syscall

li $v0, 6
syscall
mov.s $f2, $f0
# altura * altura
mul.s $f2, $f2, $f2
# imc = massa / altura^2
div.s $f3, $f1, $f2
# Imprime as mensagens de resultado
li $v0, 4
la $a0, imc_msg
syscall

li $v0, 2
mov.s $f12, $f3
syscall