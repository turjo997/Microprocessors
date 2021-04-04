S SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: SA
ORG 1000H


START:

   ;control register turn on
   MOV AL , 80H
   OUT 1FH , AL


   MOV SI , OFFSET DATA

   MOV BX , 10H

   TOP:

   ;LED TURN ON

   MOV AL , BYTE PTR CS:[SI]
   OUT 19H , AL


   ;DELAY
   MOV CX , 0FFFFH
   L1: LOOP1

   MOV CX , 0FFFFH
   L2: LOOP L2

   MOV CX , 0FFFFH
   L3: LOOP L3


   MOV CX , 0FFFFH
   L4: LOOP L4


   INC SI
   DEC BX
   CMP BX , 0000H
   JE EXIT

   JMP TOP


DATA:
  
     DB FEH
     DB DEH   ;F
     DB 9EH
     DB 8EH
    
     DB 0FFH  ;BLANK


     DB FEH
     DB DEH   ;G
     DB CEH
     DB C6H
     DB C2H


     DB 0FFH   ;BLANK


     DB DFH
     DB DDH   ;H
     DB 9DH
     DB 8DH
     DB 89H


    EXIT:

S ENDS
END START
