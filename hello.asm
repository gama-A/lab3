# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
    integer: .asciiz "Enter an integer:\n"
    hello: .asciiz "Hello Pandemic World of 2021!\n"
    number: .asciiz "The magic number is "
    end: .asciiz "!!!\n"

#Text Area (i.e. instructions)
.text
main:
	# TODO: Write your code here
    li $v0, 4
    la $a0, integer
    syscall

    li $v0, 5
    syscall

    move $t0, $v0

    li $v0, 4
    la $a0, hello
    syscall

    li $v0, 4
    la $a0, number
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, end
    syscall

exit:
	# Exit SPIM: Write your code here!
    li $v0, 10
    syscall

