## written by DARCY LUGT-FALK

.data 
hello: .asciiz "Hello"
prompt: .asciiz "Enter a name (max 60 chars)"
nameSpace: .space 60


.text

# prints the text prompt
la $a0, prompt
li $v0, 4
syscall 

# waits for a user to input some text and writes that to nameSpace
la $a0, nameSpace
li $a1, 60
li $v0, 8
syscall

# prints whatever the user wrote
la $0, nameSpace
li $v0, 4
syscall
