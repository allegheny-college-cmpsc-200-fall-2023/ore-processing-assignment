.thumb_func		    	@ Necessary because sdk uses BLX
.global main	   	 	@ Provide program starting address

main:
	BL		stdio_init_all	@ initialize uart or usb
@ TODO: Load size of array to register
@ TODO: Load array to register

@ TODO: label adding subroutine according to wiki instructions

@ TODO: Load byte of array to register
@ TODO: Increment memory address by appropriate amount
@ TODO: Add new number to running total number
@ TODO: Compare current memory location to memory location at size
@ TODO: If _not equal_ continue looping by calling loop label

@ TODO: label print subroutine according to wiki instructions

@ TODO: Load sum format string to proper register
@ TODO: Move running total/sum to printable register
@ TODO: printf

rest:
	NOP                @ "No operation"
	B		rest       @ Loop until interrupt
data:
	arr:	.hword	120, 10, 20
	end:	
	.set	size,	end - arr
	format:	.asciz	"SUM: %d\n"
