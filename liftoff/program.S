.thumb_func		    	@ Necessary because sdk uses BLX
.global main	   	 	@ Provide program starting address

main:
	BL		stdio_init_all	@ initialize uart or usb
@ TODO: Move countdown staring number to register
countdown:
@ TODO: Load countdown print format to register
@ TODO: Move countdown status number to register
@ TODO: printf number
@ TODO: Subtract one from countdown status number
@ TODO: Compare with final countdown number (i.e. 1)
@ TODO: Branch with appropriate B instruction
lift:
@ TODO: Load liftoff format
@ TODO: printf liftoff string
rest:
    NOP             @ "No Operation"
	B 		rest    @ Loop to infinity, until interrupted
	

.data
	format:	.asciz	"%d\n"
	liftoff:.asciz	"LIFTOFF!\n"