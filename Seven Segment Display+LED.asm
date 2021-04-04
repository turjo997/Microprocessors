;First show the output of Sequential Segment Display and then LED display in the same code

S SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: SA
ORG 1000H


START:

	   ;control register turn on
	   MOV AL , 80H
	   OUT 1FH , AL


	   MOV SI , OFFSET DATA
	   MOV BX , 19H
	   
	 
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
	   CMP BX , 09H
	   JE TOP1
	   JMP TOP

	   
   
     TOP1:
	
	 ;segment address forcefully off
      MOV AL,0FFH 
      OUT 19H,AL
	   
      TOP2:
      ;LED TURN ON

      MOV AL , BYTE PTR CS:[SI]
      OUT 1BH , AL


      ;DELAY
      MOV CX , 0FFFFH
      L5: LOOP5

      MOV CX , 0FFFFH
      L6: LOOP L6

      MOV CX , 0FFFFH
      L7: LOOP L7


      MOV CX , 0FFFFH
      L8: LOOP L8


      INC SI
      DEC BX
      CMP BX , 0000H
      JE EXIT
      JMP TOP2

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

S ENDS
END START
