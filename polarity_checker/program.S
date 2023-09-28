.thumb_func		    	@ Necessary because sdk uses BLX
.global main	   	 	@ Provide program starting address

main:
	BL		stdio_init_all	@ initialize uart or usb
    LDR     R0, =polarities
    MOV     R3, #0          @ count of negative values
    MOV     R4, #0          @ count of positive values
    MOV     R5, #0          @ largest negative value
    MOV     R6, #0          @ largest positive value
    MOV     R7, #0
    
polarity:
@ TODO: Load the array size location
@ TODO: Keep track of amount of numbers
@ TODO: Compare the amount of numbers seen to size
@ TODO: If numbers are equal, then we're done -- go to print
@ TODO: If not, load the number from the array
@ TODO: Find out if number is negative or non-negative
@ TODO: Branch to correct handler

@ TODO: Handle negative numbers
@ TODO: Record max negative number
@ TODO: Handle positive numbers
@ TODO: Record max positive number
@ TODO: Move to next entry

@ TODO: Print results
    
rest:
    NOP 
    B       rest

.data
    format_pos:     .asciz  "POSITIVES: %d; MAX: %d\n"
    format_neg:     .asciz  "NEGATIVES: %d; MAX: %d\n"
    polarities: .byte 10, 88, -30, 98, 83, 29, -85, 36, -26, 79, 39, -35
                .byte 62, 40, 26, 33, -14, 12, -17, 64, -43, 57, 17, -88
                .byte -18, 82, -34, -7, -72, -42, -96, -70, -62, -45, -25, 9
                .byte 6, -48, -47, -100, -90, 44, -27, -65, 92, 1, -1, -49
    end:  
    .set    size,   end - polarities