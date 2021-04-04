;Show the same shape output of 8x8 Dot Matrix that has been assigned to you but along with that show the row number 
;of the led glowed (in the Dot Matrix) in the seven segment display.  

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
	   
	   ;FOR DISPLAYING CORRESPONDING ROW NUMBER
	   MOV AL , BYTE PTR CS:[SI]
	   OUT 19H , AL
	   
	   
	     
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
		DB F8H
		
		DB 7FH
    	DB FFH
		DB 04H
		DB F8H
		
		DB BFH
		DB FFH
        DB 02H
		DB 82H
		
		DB DFH
	    DB FFH
	    DB 01H
		DB 92H
		
		DB EFH
	    DB FFH
	    DB 01H
		DB 99H
		
		
		DB F7H
	    DB FFH
	    DB 01H
		DB B0H
	
	    DB FBH
	    DB FFH
	    DB 02H
		DB A4H
		
		
		DB FDH
	    DB FFH
	    DB 04H
		DB F9H
		
		DB FDH
		DB FFH
		DB 08H
		DB F9H
		
		DB FDH
		DB FFH
		DB 10H
		DB F9H

		DB FBH
		DB FFH
		DB 20H
		DB A4H
		
		
	    DB F7H
		DB FFH
		DB 40H
		DB B0H
		
		DB EFH
		DB FFH
		DB 40H
		DB 99H
		
		DB DFH
		DB FFH
		DB 40H
		DB 92H
		
		DB BFH
		DB FFH
		DB 20H
		DB 82H
		
		DB 7FH
		DB FFH
		DB 10H
		DB F8H

	
DM ENDS
END START	
	
	
	
	
	
	
	





