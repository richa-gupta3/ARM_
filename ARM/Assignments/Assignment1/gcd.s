C CODE TO FIND GCD OF TWO NUMBERS
#include <stdio.h>
int gcd (int a, int b)
{
if (a>b)
	return gcd(a-b,b);
elseif (a<b)
	return gcd(a,b-a);
else
	return a;    \\if both a and b are equal
}

int main()
{
int a = 10;
int b = 40;
printf ( “GCD of the given two numbers:  ”, gcd(a,b));	
return0;
}








CODE FOR CORTEX-M4
  	AREA     mycode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main FUNCTION
        MOV R0, #0x30            ; test values 
        MOV R1, #0x45            ; test values
		
GCD
while   CMP R0,R1     ;THE TWO REGISTER VALUES ARE COMPARED
        BEQ endw           ;If both are equal, gcd is equal to the number and the program stops
        BGT cond1          ;if first number is greater than second
        B cond2
cond1   SUB R0,R1
        B GCD
cond2   SUB R1,R0
        B GCD
        B while
endw
stop B stop ; stop program

	   ENDFUNC
       END    ; GCD of two numbers stored in R0, R1 is finally stored in both the registers R0 and R1
