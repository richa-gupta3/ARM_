;ASSIGNMENT-4

	area ExponentialSeriesCode, CODE, READONLY
	export __main
	ENTRY
__main function
	VMOV.F32 S1, #08     ; stores the value of x in e^x
    VMOV.F32 S2, #20     ; stores the number of terms considered in expansion of e^x = 1+x+(x^2/2!)+(x^3/3!)+(x^4/4!)+....
	VMOV.F32 S3, #01     ; counter to count the number of terms
	VMOV.F32 S4, #01     ; a temporary variable
	VMOV.F32 S5, #01     ; stores the resultant value
	VMOV.F32 S7, #01     ; stores constant value 1 in a register for further manipulations
	
LOOP
	VCMP.F32 S2,S3                  ;compare the present number of terms to required number of terms in taylor series expansion and writes result to FPSR flag
	VMRS.F32 APSR_nzcv, FPSCR       ; moves from FPSCR to APSR register and updates value of N,Z,C,V flags
	
	BLE stop                        ;stops if the maximum number of terms reach equal to or less than current number of terms
	VDIV.F32 S6, S1, S3             ; stores value of numerator/denominator for each term in taylor series expansion
	VMUL.F32 S4, S4, S6             ; a temporary value is taken to store the value computed in previous loop and multiply it in the next loop
	VADD.F32 S5, S5, S4             ; adds each term of taylor series expansion to the equivalent result
	VADD.F32 S3, S3, S7             ; incrementing count value
	B LOOP
	
stop B stop                         ; stop program
	endfunc
	end

