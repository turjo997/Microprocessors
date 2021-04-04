DM SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: DM
ORG 1000H

START:
MOV AL,80H
OUT 1EH,AL



MOV CX , 0AH
		 
		 
    TOP1: 
	
	    MOV SI , OFFSET DATA
	    MOV BX , 032H
		
		DEC CX
		CMP CX, 0000H
		JE TOP3


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
	     
	   ;DELAY
	   MOV CX , 0FFH
	   L3: LOOP L3
	   
	   
	    ;FOR DISPLAYING CORRESPONDING ROW NUMBER
	   MOV AL , BYTE PTR CS:[SI]
	   OUT 19H , AL
	   
	   
	   ;DELAY
	   MOV CX , 0FFH
	   L4: LOOP L4
	   ;DELAY
	   MOV CX , 0FFH
	   L5: LOOP L5
	   ;DELAY
	   MOV CX , 0FFH
	   L6: LOOP L6
	   ;DELAY
	   MOV CX , 0FFH
	   L7: LOOP L7
	   
	   ;LED TURN ON
       MOV AL , BYTE PTR CS:[SI]
       OUT 1BH , AL
	   
	   
	   ;DELAY
	   MOV CX , 0FFH
	   L8: LOOP L8
	   ;DELAY
	   MOV CX , 0FFH
	   L9: LOOP L9
	   ;DELAY
	   MOV CX , 0FFH
	   L10: LOOP L10
	   ;DELAY
	   MOV CX , 0FFH
	   L11: LOOP L11
	   
	  	   
	   INC SI
	   DEC BX
	   CMP BX , 0000H
	   JE TOP1 
	   JMP TOP
	   
	   
      DATA:  
        DB BFH
        DB FFH
		DB 04H
		
		DB 82H
		DB 01H
		
		
		DB DFH
        DB FFH
		DB 04H
		
		DB 92H
		DB 01H
		
		
		
		DB EFH
        DB FFH
		DB 04H
		
		DB 88H
		DB 01H
		
		
		DB F7H
        DB FFH
		DB 04H
		
		DB B0H
		DB 01H
		
		
		DB FBH
        DB FFH
		DB 08H
		
		DB A4H
		DB 01H
		
		
		DB FBH
        DB FFH
		DB 10H
		
		DB A4H
		DB 01H
		
		
		
		DB F7H
        DB FFH
		DB 20H
		
		DB B0H
		DB 01H
		
		
		DB EFH
        DB FFH
		DB 20H
		
		DB 88H
		DB 01H
		
		
		DB DFH
        DB FFH
		DB 20H
		
		DB 92H
		DB 01H
		
		
		
		DB BFH
        DB FFH
		DB 20H
		
		DB 82H
		DB 01H
		
		
		
	MOV CX , 0AH	
		
		TOP3:
		
		      MOV SI , OFFSET DATA
			  MOV BX , 028H
				
			  DEC CX
			  CMP CX, 0000H
			  JE EXIT
		     
		
		
    TOP4:
	
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
	     
	   ;DELAY
	   MOV CX , 0FFH
	   L12: LOOP L12
	   
	   
	    ;FOR DISPLAYING CORRESPONDING ROW NUMBER
	   MOV AL , BYTE PTR CS:[SI]
	   OUT 19H , AL
	   
	   
	   ;DELAY
	   MOV CX , 0FFH
	   L13: LOOP L13
	   ;DELAY
	   MOV CX , 0FFH
	   L14: LOOP L14
	   ;DELAY
	   MOV CX , 0FFH
	   L15: LOOP L15
	   ;DELAY
	   MOV CX , 0FFH
	   L16: LOOP L6
	   
	   ;LED TURN ON
       MOV AL , BYTE PTR CS:[SI]
       OUT 1BH , AL
	   
	   ;DELAY
	   MOV CX , 0FFH
	   L17: LOOP L17
	   ;DELAY
	   MOV CX , 0FFH
	   L18: LOOP L18
	   ;DELAY
	   MOV CX , 0FFH
	   L19: LOOP L19
	   ;DELAY
	   MOV CX , 0FFH
	   L20: LOOP L20
	   ;DELAY
	  
	   
	  	   
	   INC SI
	   DEC BX
	   CMP BX , 0000H
	   JE TOP3
	   JMP TOP4
		
	DATA:
	
	    DB BFH
        DB FFH
		DB 04H
		
		DB 82H
		DB 01H
		
		
		DB DFH
        DB FFH
		DB 04H
		
		DB 92H
		DB 01H
		
		
		
		DB EFH
        DB FFH
		DB 04H
		
		DB 88H
		DB 01H
		
		
		DB F7H
        DB FFH
		DB 04H
		
		DB B0H
		DB 01H
		
		DB FBH
        DB FFH
		DB 04H
		
		DB B0H
		DB 01H
		
		
	    DB FBH
        DB FFH
		DB 08H
		
		DB A4H
		DB 01H
		
		
		DB FBH
        DB FFH
		DB 10H
		
		DB A4H
		DB 01H
		
	    DB FBH
        DB FFH
		DB 20H
		
		DB A4H
		DB 01H
		
		
		
EXIT:
	
DM ENDS
END START	
	
	
	
	
	
	
	





