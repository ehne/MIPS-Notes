## written by DARCY LUGT-FALK

.data 
hello: .asciiz "Hello"
prompt: .asciiz "Enter a name (max 60 chars)"
nameSpace: .space 60


.text

# prints the text prompt
la $a0, prompt
addi $v0, $0, 4
syscall 

# waits for a user to input some text and writes that to nameSpace
la $a0, nameSpace
addi $a1, $0, 60
addi $v0, $0, 8
syscall

# prints whatever the user wrote
la $0, nameSpace
addi $v0, $0, 4
syscall