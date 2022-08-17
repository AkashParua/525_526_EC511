
;<PROB.3 ADDITION/SUBTRACTION OF TWO NUMBERS GIVEN THROUGH PORTS. RESULT
;WILL ALSO BE STORED IN SOME PORT ADDRESS.>
jmp start
;data
;code
start: nop
IN 50H    ;FIRST VALUE TAKEN FROM PORT NO 50
MOV B,A   ;FIRST NO [B]
IN 51H    ;TAKING THE SECOND VALUE 
MOV C,A   ;SECOND NO IN [C]
ADD B     ; [A] = [A] + [B]
OUT 52H   ; Sum output through port 52H
MOV A,B   ; [A] <- [B]
SUB C     ; [A] = [A] - [C]
OUT 53H   ; difference output through port 52H
hlt