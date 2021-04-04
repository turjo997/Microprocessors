; LED (R2+G(ON))-G(OFF)-Y(ON)-R2(OFF)-R1(ON)


L SEGMENT PARA PUBLIC'CODE'
ASSUME CS : L
ORG 1000H


START:

 ;CONTROL REGISTER TURN ON

 MOV AL , 80H
 OUT 1FH , AL
 
 ;SEGMENT ADDRESS FORCEFULLY OFF

 MOV AL , 0FFH
 OUT 19H , AL

 LED: 
 ;R2 AND G LED TURN ON

 MOV AL , 0AH
 OUT 1BH , AL

 ;FOR DELAY
 MOV CX , 0FFFFH
 LGR2: LOOP LGR2

 ;G OFF ONLY R2 LED TURN ON

 MOV AL , 08H
 OUT 1BH , AL

 ;FOR DELAY
 MOV CX , 0FFFFH
 LR2: LOOP LR2


 ;Y AND R2 LED TURN ON

 MOV AL , 0CH
 OUT 1BH , AL

 ;FOR DELAY
 MOV CX , 0FFFFH
 LYR2: LOOP LYR2

 ;R2 OFF AND ONLY Y LED TURN ON

 MOV AL , 04H
 OUT 1BH , AL

 ;FOR DELAY
 MOV CX , 0FFFFH
 LY: LOOP LY

 ;R1 AND Y LED TURN ON

 MOV AL , 05H
 OUT 1BH , AL

 ;FOR DELAY
 MOV CX , 0FFFFH
 LR1Y: LOOP LR1Y

 JMP LED

L ENDS
END START

