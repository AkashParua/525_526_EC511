;<PROB.2 GENERATE THE FIRST 10 ELEMENTS OF THE FIBONACCI SERIES.>
jmp start
;data
;code
start: nop
MVI B,08H  ;TO RUN THE LOOP A TOTAL OF 10 TIMES
LXI H,4000H ;the fibonacci series is stored from 4000H to 4009H
MVI M,00H  ;0 AND 1 ARE HARDCODED (1ST 2 ELEMENTS)
INX H
MVI M,01H 
INX H
LOOP: nop
XRA A      ;fibonacci(n) = fibonacci(n-1) + fibonacci(n-2)
DCX H
ADD M
DCX H
ADD M
INX H
INX H
MOV M,A
INX H
DCR B
JNZ LOOP
hlt