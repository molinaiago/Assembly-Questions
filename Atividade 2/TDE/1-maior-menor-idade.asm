.data
question: .asciiz "Digite a sua idade: "
txt1: 	.asciiz "Você é menor de idade!"
txt2: 	.asciiz "Você é maior de idade!"

.text
li $v0, 4
la $a0, question
syscall	

li $v0, 5
syscall	

move $t1, $v0
	
li $t0, 18 # guardar 18 no t0  
blt $t1, $t0, menor # comparativo de menor
bge $t1, $t0, maior # comparativo de maior

maior:
li $v0, 4
la $a0, txt2
syscall
li $v0, 10
syscall

menor: 
li $v0, 4
la $a0, txt1
syscall
li $v0, 10