.data
#texto para saldo inicial
saldoinicio:	.asciiz	"\nQuanto dinheiro voce quer na conta: : "
#texto menu
menu: .asciiz	"\n\1 - Mostrar o saldo\n2 - Depositar\n3 - Efeturar o saque\n0 - Sair\nOpção: "
#texto saldo
saidasaldo:	.asciiz	"\nSALDO = "
#texto deposito
saidadep:	.asciiz	"\nNOVO SALDO APOS O DEPOSITO: "
saidadep2: .asciiz	"Quanto voce quer depositar? : "
#texto saque
saidasaq:	.asciiz	"Seu NOVO SALDO APOS O SAQUE: "
saidasaq2: .asciiz 	"Informe seu Saque: "
# texto da saida 0
saida:	.asciiz	"Voce escolheu sair! Obrigado!\n"

.text			
main:		
li $v0, 4	
la $a0, saldoinicio	
syscall
li $v0, 5	
syscall	
move $t0, $v0	

loop:				
li $v0, 4		
la $a0, menu
syscall		
li $v0, 5		
syscall
move $t1, $v0	
beq $t1, 0, sair
jal opcoes		
j loop		

opcoes:		
beq $t1, 1, saldo		
beq $t1, 3, saque	
beq $t1, 2, deposito	

saldo:		
li $v0, 4	
la $a0, saidasaldo
syscall
li $v0, 1	
move $a0, $t0	
syscall
jr $ra	

saque:
li $v0, 4
la $a0, saidasaq2
syscall
li $v0, 5
syscall
move $t4, $v0
sub $t0, $t0, $t4
li $v0, 4
la $a0, saidasaq
syscall
li $v0, 1
move $a0, $t0
syscall
jr $ra

deposito:
li $v0, 4
la $a0, saidadep2	
syscall
li $v0, 5
syscall
move $t2, $v0
add $t0, $t0, $t2
li $v0, 4
la $a0, saidadep
syscall
li $v0, 1
move $a0, $t0
syscall
jr $ra

sair:				
li $v0, 4
la $a0, saida
syscall
li $v0, 10			
syscall