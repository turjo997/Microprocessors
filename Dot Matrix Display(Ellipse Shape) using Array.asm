DM SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: DM
ORG 1000H

START:
MOV AL,80H
OUT 1EH,AL


    TOP1:
	
	    MOV SI , OFFSET DATA
		
	    MOV BX , 030H


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
	   
	   
	   INC SI
	   DEC BX
	   CMP BX , 0000H
	   JE TOP1
	   JMP TOP
	   
	   
 
  
      DATA:  
        DB 7FH
        DB FFH
		DB 08H
		
		DB 7FH
    	DB FFH
		DB 04H
		
		DB BFH
		DB FFH
        DB 02H
		
		DB DFH
	    DB FFH
	    DB 01H
		
		DB EFH
	    DB FFH
	    DB 01H
		
		
		DB F7H
	    DB FFH
	    DB 01H
	
	    DB FBH
	    DB FFH
	    DB 02H
		
		
		DB FDH
	    DB FFH
	    DB 04H
		
		DB FDH
		DB FFH
		DB 08H
		
		DB FDH
		DB FFH
		DB 10H

		DB FBH
		DB FFH
		DB 20H
		
		
	    DB F7H
		DB FFH
		DB 40H
		
		DB EFH
		DB FFH
		DB 40H
		
		DB DFH
		DB FFH
		DB 40H
		
		DB BFH
		DB FFH
		DB 20H
		
		DB 7FH
		DB FFH
		DB 10H

	
DM ENDS
END START	
	
	
