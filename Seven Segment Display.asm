;display FGH




S SEGMENT PARA PUBLIC'CODE'
ASSUME CS: S
ORG 1000H


START:

 ;control register turn on
 
 MOV AL , 80H
 OUT 1FH , AL

 SSD:
 ;DISPLAY F

 MOV AL , 08EH
 OUT 19H , AL
 
 ;FOR DELAY

 MOV CX , 0FFFFH
 L0: LOOP L0


;DISPLAY G

 MOV AL , 0C2H
 OUT 19H , AL
 
 ;FOR DELAY

 MOV CX , 0FFFFH
 L1: LOOP L1




  ;DISPLAY H

 MOV AL , 089H
 OUT 19H , AL
 
 ;FOR DELAY

 MOV CX , 0FFFFH
 L2: LOOP L2


 JMP SSD

S ENDS
END START


 

 
