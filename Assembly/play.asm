.text
loop:
    addi a0, zero, 0  # 重置a0
    addi t3, zero, 0 # 音符个数计数器
    lw a4, 0(zero) # 将内存中首字节存放的音符个数读取给a4寄存器
    slli a4, a4, 2
    addi a7, zero, 34
    # 播放音乐
    play:
        lw a0, 4(t3) # 读取内存中对应音符
        srli t4, a0, 10
        andi t4, t4, 0xff # 计算音长
        ecall  # 输出音符
        # 通过循环实现音长
        delay:
            beq t4, zero, next
            addi t4, t4, -1
            jal zero, delay
        
        next:
            addi a0, zero, 0

        addi t3, t3, 4 # 音符数加1
        bne t3, a4, play

    # system call for loop
    addi a7, zero, 10
    ecall
    jal zero, loop





