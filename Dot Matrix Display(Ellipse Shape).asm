DM SEGMENT PARA PUBLIC 'CODE'
ASSUME CS: DM
ORG 1000H
START:
MOV AL,80H
OUT 1EH,AL
  
  
        MOV AL,7FH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,08H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L0:LOOP L0
	


	
	MOV AL,7FH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,04H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L1:LOOP L1
	


	
        MOV AL,BFH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,02H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L2:LOOP L2
  
  
  
        MOV AL,DFH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,01H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L3:LOOP L3
	
	
	MOV AL,EFH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,01H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L4:LOOP L4
	
	
	
	MOV AL,F7H
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,01H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L5:LOOP L5

    
	MOV AL,FBH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,02H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L6:LOOP L6


        MOV AL,FDH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,04H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L7:LOOP L7


        MOV AL,FDH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,08H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L8:LOOP L8
	
	
	MOV AL,FDH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,10H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L9:LOOP L9
	
	
	MOV AL,FBH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,20H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L10:LOOP L10
	
	
	
	MOV AL,F7H
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,40H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L11:LOOP L11
	
	
        MOV AL,EFH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,40H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L12:LOOP L12
	
	
	
	MOV AL,DFH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,40H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L13:LOOP L13
	
	
	
	
	MOV AL,BFH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,20H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L14:LOOP L14
	
	
	
	MOV AL,7FH
	OUT 18H,AL ;PORT A
	
	MOV AL,FFH
	OUT 1AH,AL ;PORT B
	
	MOV AL,10H
	OUT 1CH,AL ;PORT C
	
	;for delay
	MOV CX,0FFFFH
	L15:LOOP L15
	
	
	
DM ENDS
END START	
	
	
	
	
	
	
	





