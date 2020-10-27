# written by DARCY LUGT-FALK

.data 
  # remember, we have to declare our variables before we use them.
  promptMessage: .asciiz "Enter temperature in ˚C: "
  output: .asciiz "Temperature in ˚F: "
  
  # store both temps as "words" aka integers.
  tempC: .word 0
  tempF: .word 0

.text
  # load the prompt and print it
  la $a0, promptMessage
  li $v0, 4
  syscall
  
  # read the integer that the user enters
  li $v0, 5
  syscall
  
  # saves the integer/word to the data label tempC
  sw $v0, tempC
  
  # convert tempC to tempF using the formula:
  # temp_F = (9*temp_C/5 + 32)
  # we can split it up into different steps
  
  ### 1. multiply tempC by 9
  # load tempC into a register
  lw $t0, tempC
  # load the immediate 9 into a register
  li $t1, 9
  
  # multiply the two registers together
  # and saves it to $t2.
  mult $t1, $t0
  mflo $t2
  ### 2. divide by 5
  
  li $t3, 5
  div $t2,$t3
  # saves the lo value to $t4
  mflo $t4
  
  ### 3. add 32
  
  addi $t5, $t4, 32
  
  ### 4. equals tempF
  sw $t5, tempF
  
  # print the alert
  la $a0, output
  li $v0, 4
  syscall
  
  # print the word
  # loading word
  lw $a0, tempF
  li $v0, 1
  syscall
  
  # exiT 
  li $v0, 10
  syscall
  