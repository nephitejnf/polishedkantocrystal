	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
.frame1
	db $00 ; bitmask
	db $31, $32, $33, $34, $35, $36, $37, $38, $39, $00, $3a, $3b
	db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
	db $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53
	db $54, $55, $56, $57
.frame2
	db $01 ; bitmask
	db $00, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
.frame3
	db $02 ; bitmask
	db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
	db $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77
	db $78, $79, $7a, $7b, $7c, $7d, $7e, $80, $81, $82, $83, $84
	db $85, $86, $87, $5f, $87, $89
.frame4
	db $03 ; bitmask
	db $8a, $8b
