set arrSIZE=0

set instr[0]=    global  main
set instr[1]=    extern  puts
set instr[2]=    section .text
set instr[3]=main:
set instr[4]=        sub     rsp, 28h                        ; Reserve the shadow space
set instr[5]=        mov     rcx, message                    ; First argument is address of message
set instr[6]=        call    puts                            ; puts(message)
set instr[7]=        add     rsp, 28h                        ; Remove shadow space
set instr[8]=        ret
set instr[9]=message:
set instr[10]=        db      'Hello', 0                      ; C strings need a zero byte at the end

:Loop 
if defined instr[%arrSIZE%] ( 
set /a arrSIZE+=1
GOTO :Loop 
)


