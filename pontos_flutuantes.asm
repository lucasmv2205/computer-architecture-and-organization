.data
	msg: .asciiz "Informe um numero float? "
	zero: .float 0.0

.text
	#impressao da pergunta
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 6 #leitura de float
	syscall #valor lido estara em $f0
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	li $v0, 2
	syscall 