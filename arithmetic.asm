# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
# Gama Aristondo

.text
main:

	# TODO: Write your code here
    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 5
    syscall
    move $t2, $v0

    sub $t0, $t0, $t1
    sll $t0, $t0, 6

    li $t3, 100
    mult $t2, $t3
    mflo $t2

    add $t4, $t0, $t2

    li $v0, 1
    move $a0, $t4
    syscall

exit:
	# Exit SPIM: Write your code here!
    li $v0, 10
    syscall

