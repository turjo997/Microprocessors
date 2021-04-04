L SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: LA
ORG 1000H


START:
      ;control register turn on
      MOV AL,80H
      OUT 1FH,AL


      ;segment address forcefully off
      MOV AL,0FFH 
      OUT 19H,AL


      MOV SI , OFFSET DATA
      MOV BX , 9H


      TOP:

      ;LED TURN ON

      MOV AL , BYTE PTR CS:[SI]
      OUT 1BH , AL


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

     ;R2 AND G LED TURN ON
     DB 0AH


     DB 0FFH   ;BLANK

     ;G OFF ONLY R2 LED TURN ON
     DB 08H


     DB 0FFH   ;BLANK

     ;Y AND R2 LED TURN ON
     DB 0CH

    
     DB 0FFH   ;BLANK
    
     ;R2 OFF AND ONLY Y LED TURN ON
     DB 04H 


     DB 0FFH   ;BLANK  

     ;R1 AND Y LED TURN ON
     DB 05H

 

    EXIT:

L ENDS
END START


