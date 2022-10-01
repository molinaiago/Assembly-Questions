.data
printEntrada:    .asciiz "\nInforme um numero: "
pritPar:    	  .asciiz "\n Par!"
printImpar:   	  .asciiz "\n Ímpar!"
.text
main:

    li  $v0,4           			 
    la  $a0,printEntrada      
    syscall             			

    li  $v0,5           		
    syscall             			
    move $s0,$v0     

    jal par			
    li $v0, 10	
    syscall 

par:
	li $t2, 2 			
	div $s0, $t2 				# divide o numero por 2 (quociente: LO, resto: HI)
	mfhi $t1

	bne $t1, 0, impar 			
	
	# se não...
	li $v0, 1
	move $a0, $s0		
	syscall 				
		
	li $v0, 4
	la $a0, pritPar	
	syscall 			
	
	jr $ra 			
	
impar:
	li $v0, 1
	move $a0, $s0				
	syscall 				
	li $v0, 4
	la $a0, printImpar	
	syscall 					
	
	jr $ra 	