FIBONACCI SERIES CODE FOR CORTEX M4
     
AREA     myseccode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main FUNCTION
		MOV R0, #00     ;INITIALIZE f[0]=0
		MOV R1, #0x01   ;initialize f[1]=1
		MOV R3, #0x05  ;number=5 (n=5) i.e. the Fibonacci series is extended till 5 numbers
		MOV R5,R3
		ADD R4,R0,#0x02 ;INITIALIZE i=2
		CMP R4,R3       
		BGT endw        ;FOR i>number ends program
LOOP
		ADD R2,R0,R1
		MOV R0,R1
		MOV R1,R2
		SUB R5,R5,#01
		CMP R5,#01
		BGT LOOP      ;R2 stores the nth number in Fibonacci series
endw
STOP B STOP
		ENDFUNC
		END
		
		
	
