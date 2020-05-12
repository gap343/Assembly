        area FinalProject70, code, readonly
        export __main
__main  proc
        ldr r12,=500
        ldr r11,=250
        LDR r0,=0x40004C20
        mov r1, #2_00000001
        LSL r2,r1,#1
        LSL r3,r1,#4
        LSL r6,r1,#6
        LSL r8,r1,#7
        add r5,r1,r2
        add r9,r6,r8
        add r10,r5,r9
        STRB r10, [r0,#0x24]
        STRB r10, [r0,#0x26]
        STRB r10, [r0,#0x28]
        STRB r3, [r0,#0x26]
        STRB r10, [r0,#0x25]
        STRB r10, [r0,#0x27]
        STRB r10, [r0,#0x29]
        STRB r10, [r0,#0x27]
        STRB r3, [r0,#0x27]
L1open
    STRB r9,[r0,#0x23]
    push {r11}
    bl delay
    pop {r11}    
    push {r11}
    bl delay
    pop {r11}
    push {r11}
    bl delay
    pop {r11}
    push {r11}
    bl delay
    pop {r11}
    STRB r2,[r0,#0x23]    
    push {r11}
    bl delay
    pop {r11}    
    STRB r1,[r0,#0x23]
    push {r11}
    bl delay
    pop {r11}
    push {r11}
    bl delay
    pop {r11}
    b L2open
halt     b L1open
        b halt
L2open
    STRB r9,[r0,#0x22]
    push {r11}
    bl delay
    pop {r11}    
    push {r11}
    bl delay
    pop {r11}
    push {r11}
    bl delay
    pop {r11}
    push {r11}
    bl delay
    pop {r11}
    STRB r2,[r0,#0x22]    
    push {r11}
    bl delay
    pop {r11}    
    STRB r1,[r0,#0x22]
    push {r11}
    bl delay
    pop {r11}
    push {r11}
    bl delay
    pop {r11}
    b L1open
delay
    sub r11,#1
    push {r12}
loop
    sub r12,#1
    cmp r12,#0
    bne loop
    pop {r12}
    cmp r11, #0
    bne delay 
    bx    lr
    
        endp
        end
