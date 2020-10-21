## written by DARCY LUGT-FALK

# declaring our variables
.data  
    # defines the variable "ourCoolString" to be a null-terminated ascii string.
    ourCoolString: .asciiz "hello, gamers!" 
    # the above is equivalent to the python:
    # ourCoolString = "hello, gamers!"

# this is where the main program logic lives
.text 
    # loads the variable to the argument register.
    # la is short for [l]oad [a]ddress 
    la $a0, ourCoolString

    # loads an immediate value into the return/value register.
    # li is short for [l]oad [i]mmediate
    li $v0, 4
    # we are assinging return register 0 with the word 4. 
    # this is because the syscall function call (below) understands the value 4 to be printing text.
    syscall
    
    