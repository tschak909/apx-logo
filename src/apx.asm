	;; 
	;; APX Logo in Character set
	;; @author  Thomas Cherryhomes
	;; @email   thom dot cherryhomes at gmail dot com
	;; @license gpl v. 3
	;;

C0	=	$F0
C1	=	$F1
C2	=	$F2
C3	=	$F3
DL	=	$FE
DH	=	$FF
CS	=	$F6
CO	=	$F7	

SDMCTL  =       $022F	
SDLSTL	=	$0230
SDLSTH	=	$0231
GPRIOR	=	$026F
CHBAS	=	$02F4
	
VDSLSTL	=       $0200
VDSLSTH =	$0201	

GRACTL	=	$D01D
PMBASE  =	$D407
WSYNC	=	$D40A
VCOUNT  =       $D40B
NMIEN	=	$D40E
	
	ORG	$3400

FONT:	INS	"apx.fnt"

	ORG	$3800
PMG:				; P/M Data
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; Empty.
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00	

	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07,$07
	.BYTE $07,$07,$07,$07,$07,$07,$07,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	.BYTE $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	
	;; Display List
	
DLST:	.BYTE	$F0,$70,$70,$70,$70,$70,$70
	.BYTE	$47,.LO(SCR),.HI(SCR)
	.BYTE	$07,$07,$07,$07
	.BYTE	$41,.LO(DLST),.HI(DLST)

	;; Screen Data
SCR:
	.BYTE $01,$02,$03,$04,$04,$04,$04,$04,$04,$05,$06,$07,$08,$09,$0a,$0b,$bc,$fc,$7c,$00
	.BYTE $0d,$04,$0e,$0f,$10,$11,$12,$04,$13,$14,$04,$15,$16,$17,$18,$19,$bc,$fc,$7c,$00
	.BYTE $1a,$04,$1b,$1c,$1d,$04,$1e,$04,$1f,$20,$21,$22,$23,$24,$25,$00,$bc,$fc,$7c,$00
	.BYTE $26,$04,$04,$04,$04,$04,$1e,$04,$27,$28,$29,$2a,$2b,$2c,$2d,$2e,$bc,$fc,$7c,$00
	.BYTE $2f,$30,$31,$32,$33,$04,$1e,$04,$34,$00,$35,$36,$37,$38,$39,$3a,$bd,$fd,$7d,$00

DLI:	PHA
L0:	STA WSYNC
	LDA #$AC
	STA $D000
	LDA VCOUNT
	AND #$07
	BEQ L2
L1:     NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP	
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	JMP LC
L2:	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
LC:	LDA #$C8
	STA $D000
	LDA VCOUNT
	CMP #80
	BNE L0
	PLA
	RTI
	
START:
	;; CLEAR KEYBOARD BUFFER
	LDA	#$FF
	STA	$02FC
	
	;; SAVE DISPLAY LIST

	LDA	SDLSTL
	STA	DL
	LDA	SDLSTH
	STA	DH

	;; SAVE COLOR REGISTERS

	LDX	#$04
SL1:	LDA	$02C4,X
	STA	C0,X
	DEX
	BPL	SL1

	;; SAVE CHARSET

	LDA	CHBAS
	STA	CS
	
	;; SET COLOR REGISTERS

	LDA	#$80
	STA	$02C0
	LDA	#$34
	STA	$02C1
	LDA	#$1E
	STA	$02C2
	LDA	#$C4
	STA	$02C3
	
	LDA	#$00
	STA	$02C4
	LDA	#$D8
	STA	$02C5
	LDA	#$30
	STA	$02C6
	LDA	#$2A
	STA	$02C7
	LDA	#$0E
	STA	$02C8

	;; Set Up PMG
	LDA	#>PMG
	STA	PMBASE
	LDA	#$10
	STA	GPRIOR
	LDA	#$03
	STA	GRACTL
	LDA	#$2E		; Normal with DMA for both P & M
	STA	SDMCTL

	LDA	#$ac
	STA	$D000

	LDA	#$B4
	STA	$D001

	LDA	#$BC
	STA	$D002

	LDA	#$C4
	STA	$D003

	;; LDA	#$CD
	;; STA	$D004
	;; LDA	#$CE
	;; STA	$D005
	
	;; SET DISPLAY LIST

	LDA	#.lo(DLST)
	STA	SDLSTL
	LDA	#.hi(DLST)
	STA	SDLSTH

	LDX	#$FF
	STX	$02FC
	
	;; SET CHARSET

	LDA	#.HI(FONT)
	STA	CHBAS

	;; DLI NMI enable
	LDA	#.lo(DLI)
	STA	VDSLSTL
	LDA	#.hi(DLI)
	STA	VDSLSTH
	LDA	#$C0
	STA	NMIEN
	
	;; Main loop

LOOP:	JMP	LOOP

	;; RESTORE DISPLAY LIST

	LDA	DL
	STA	SDLSTL
	LDA	DH
	STA	SDLSTH
	
	;; RESTORE COLOR REGISTERS

	LDX	#$04
SL2:	LDA	C0,X
	STA	$02C4,X
	DEX
	BPL	SL2

	;; RESTORE CHARACTER SET

	LDA	CS
	STA	CHBAS
	
	RTS

	RUN	START
	
