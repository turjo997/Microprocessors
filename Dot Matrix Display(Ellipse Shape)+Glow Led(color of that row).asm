;Show the same shape output of 8x8 Dot Matrix that has been assigned to you but along with that show the color of the led glowed (in the Dot Matrix) 
;in the led display R1 for red, G for green and Y+R2 for orange.

DM SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: DM
ORG 1000H

START:
MOV AL,80H
OUT 1EH,AL


    TOP1:
	
	    MOV SI , OFFSET DATA
		
	    MOV BX , 040H


    TOP:
	
	   ;PORT A 
	   MOV AL , BYTE PTR CS:[SI]
	   OUT 18H,AL 
	   
	   INC SI
	   DEC BX
	   
	   ;PORT B 
	   MOV AL , BYTE PTR CS:[SI]
	   OUT 1AH,AL 
	   
	   INC SI
	   DEC BX
	   
	   
	   ;PORT C 
	   MOV AL , BYTE PTR CS:[SI]
	   OUT 1CH,AL 
	   
	   
	   ;LED TURN ON
       MOV AL , BYTE PTR CS:[SI]
       OUT 1BH , AL

	   
	     
	   ;DELAY
	   MOV CX , 0FFH
	   L1: LOOP L1
	   ;DELAY
	   MOV CX , 0FFH
	   L2: LOOP L2
	   ;DELAY
	   MOV CX , 0FFH
	   L3: LOOP L3
	   ;DELAY
	   MOV CX , 0FFH
	   L4: LOOP L4
	   
	   
	   INC SI
	   DEC BX
	   CMP BX , 0000H
	   JE TOP1
	   JMP TOP
	   
	   
 
  
      DATA:  
        DB 7FH
        DB FFH
		DB 08H
		DB 02H
		
		DB FFH
    	DB 7FH
		DB 04H
		DB 01H
		
		DB BFH
		DB FFH
        DB 02H
		DB 02H
		
		DB FFH
	    DB DFH
	    DB 01H
		DB 01H
		
		DB EFH
	    DB EFH
	    DB 01H
		DB 0CH
		
		
		DB F7H
	    DB FFH
	    DB 01H
		DB 02H
	
	    DB FFH
	    DB FBH
	    DB 02H
		DB 01H
		
		
		DB FDH
	    DB FDH
	    DB 04H
		DB 0CH
		
		DB FDH
		DB FFH
		DB 08H
		DB 02H
		
		DB FFH
		DB FDH
		DB 10H
		DB 01H

		DB FBH
		DB FBH
		DB 20H
		DB 0CH
		
		
	    DB F7H
		DB FFH
		DB 40H
		DB 02H
		
		DB FFH
		DB EFH
		DB 40H
		DB 01H
		
		DB FFH
		DB FFH
		DB 40H
		DB 0CH
		
		DB FFH
		DB BFH
		DB 20H
		DB 01H
		
		DB 7FH
		DB 7FH
		DB 10H
		DB 0CH

	
DM ENDS
END START	
	
	
	
	
	
	
	





