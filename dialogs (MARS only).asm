# written by DARCY LUGT-FALK

.data 
  prompt: .asciiz "is that a good idea?"
  space: .space 40
  
.text 
  la $a0, prompt
  li $v0, 50
  syscall
  ## will show a dialog and set the register $a0 to be equal to the response.
