.text
loop:
    addi a0, zero, 0  # 重置a0
    addi t3, zero, 0 # 小星星音符个数计数器
    addi a4, zero, 56
    addi a7, zero, 34
    # 播放音乐
    play:
        lw a0, 0(t3) # 读取内存中对应音�?
        ecall  # 输出

        srli t4, a0, 8
        andi t4, t4, 0xff # 计算音长
        # 通过循环实现音长
        delay:
            addi t4, t4, -1
            bne t4, zero, delay

        addi t3, t3, 4 # 音符数加1
        bne t3, a4, play

    # system call for loop
    addi a7, zero, 10
    ecall
    jal zero, loop





