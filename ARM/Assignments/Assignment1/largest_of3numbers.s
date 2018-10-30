CODE FOR CORTEX M4
 AREA     myseccode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main FUNCTION
		MOV R0, #0x34     ;Number1
		MOV R1, #0x01     ;Number2
		MOV R2, #0x05     ;Number3
		CMP R0,R1
		BGT LOOP
		CMP R1,R2
		BGT result1
		MOV R4,R2
result1
		MOV R4,R1
		
LOOP
		CMP R0,R2
		BGT result2
		MOV R4,R2		
result2
		MOV R4,R0         ;R4 contains the largest numbers of the given three numbers
		
stop B stop
		ENDFUNC
		END
		
		
	
