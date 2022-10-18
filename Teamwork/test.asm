.text
    addi t3, zero, 8 # counter
    addi t4, zero, 6
    addi t5, zero, 2
    addi s1, zero, 0xBC  # Do
    addi t6, zero, 4 # delay counter num
branch_tag:
    # output begin
    add  a0, zero, s1
    addi a7, zero, 34
    ecall
    # output end

delay_tag:
    addi t6, t6, -1
    bge t6, zero, delay_tag
    addi t6, zero, 4

    beq  t3, t4, add_one
    beq  t3, t2, add_one
# change frequence
add_two:
    addi s1, s1, 2
    jal  branch_end
add_one:
    addi s1, s1, 1
# counter--
branch_end:
    addi t3, t3, -1
    bge t3, zero, branch_tag

# system call for exit
addi a7, zero, 10
ecall
