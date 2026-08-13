l101fh_racket_hit:
	ld a,AUDIO_TRACK_BASE + audio_tracks_t.track_sound_racket_hit		; 3e 8c ;101f
	ld (psg_engine.track_request_id),a		; 32 00 de ;1021
	ld hl,l10ebh		; 21 eb 10 ;1024
	ld a,(state.ball_hit_type)		; 3a 46 c0 ;1027
	add a,a			; 87 ;102a
	ld e,a			; 5f ;102b
	ld d,000h		; 16 00 ;102c
	add hl,de			; 19 ;102e
	ld c,(hl)			; 4e ;102f
	inc hl			; 23 ;1030
	ld b,(hl)			; 46 ;1031
	push bc			; c5 ;1032
	ld hl,l10bbh		; 21 bb 10 ;1033
	ld a,(0c041h)		; 3a 41 c0 ;1036
	add a,a			; 87 ;1039
	add a,a			; 87 ;103a
	ld e,a			; 5f ;103b
	ld a,(0c044h)		; 3a 44 c0 ;103c
	add a,a			; 87 ;103f
	add a,e			; 83 ;1040
	ld e,a			; 5f ;1041
	add hl,de			; 19 ;1042
	ld c,(hl)			; 4e ;1043
	inc hl			; 23 ;1044
	ld b,(hl)			; 46 ;1045
	push bc			; c5 ;1046
	ld a,(0c041h)		; 3a 41 c0 ;1047
	add a,a			; 87 ;104a
	ld e,a			; 5f ;104b
	ld hl,l10b3h		; 21 b3 10 ;104c
	add hl,de			; 19 ;104f
	ld a,(0c044h)		; 3a 44 c0 ;1050
	or a			; b7 ;1053
	jr z,l1057h		; 28 01 ;1054
	inc hl			; 23 ;1056
l1057h:
	ld a,(0c50bh)		; 3a 0b c5 ;1057
	sub (hl)			; 96 ;105a
	rrca			; 0f ;105b
	rrca			; 0f ;105c
	rrca			; 0f ;105d
	and 007h		; e6 07 ;105e
	cp 004h		; fe 04 ;1060
	jr c,l1066h		; 38 02 ;1062
	ld a,003h		; 3e 03 ;1064
l1066h:
	add a,a			; 87 ;1066
	ld e,a			; 5f ;1067
	pop hl			; e1 ;1068
	add hl,de			; 19 ;1069
	ld a,r		; ed 5f ;106a
	and 001h		; e6 01 ;106c
	jr z,l1071h		; 28 01 ;106e
	inc hl			; 23 ;1070
l1071h:
	ld a,(hl)			; 7e ;1071
	add a,a			; 87 ;1072
	add a,a			; 87 ;1073
	add a,a			; 87 ;1074
	ld e,a			; 5f ;1075
	pop hl			; e1 ;1076
	add hl,de			; 19 ;1077
	ld e,(hl)			; 5e ;1078
	inc hl			; 23 ;1079
	ld d,(hl)			; 56 ;107a
	inc hl			; 23 ;107b
	ld c,(hl)			; 4e ;107c
	inc hl			; 23 ;107d
	ld b,(hl)			; 46 ;107e
	push de			; d5 ;107f
	push bc			; c5 ;1080
	inc hl			; 23 ;1081
	ld e,(hl)			; 5e ;1082
	inc hl			; 23 ;1083
	ld d,(hl)			; 56 ;1084
	inc hl			; 23 ;1085
	ld c,(hl)			; 4e ;1086
	inc hl			; 23 ;1087
	ld b,(hl)			; 46 ;1088
	ld a,(0c041h)		; 3a 41 c0 ;1089
	and 001h		; e6 01 ;108c
	jr z,l10a0h		; 28 10 ;108e
	xor a			; af ;1090
	ld hl,0		; 21 00 00 ;1091
	sbc hl,de		; ed 52 ;1094
	push hl			; e5 ;1096
	xor a			; af ;1097
	ld hl,0		; 21 00 00 ;1098
	sbc hl,bc		; ed 42 ;109b
	push hl			; e5 ;109d
	pop bc			; c1 ;109e
	pop de			; d1 ;109f
l10a0h:
	ld (ball.y_vel),de		; ed 53 0c c5 ;10a0
	ld (ball.x_vel),bc		; ed 43 0e c5 ;10a4
	pop hl			; e1 ;10a8
	ld (ball.z_vel),hl		; 22 06 c5 ;10a9
	pop hl			; e1 ;10ac
l10adh:
	ld (ball.z_gravity),hl		; 22 02 c5 ;10ad
	jp sub_l1362h_ball		; c3 62 13 ;10b0
l10b3h:
	.DB $90		;10b3
	.DB $60		;10b4
	.DB $50		;10b5
	.DB $80		;10b6
	.DB $90		;10b7
	.DB $60		;10b8
	.DB $50		;10b9
	.DB $80		;10ba
l10bbh:
	.DW l10cbh		;10bb
	.DW l10d3h		;10bd
	.DW l10dbh		;10bf
	.DW l10e3h		;10c1
	.DW l10cbh		;10c3
	.DW l10d3h		;10c5
	.DW l10dbh		;10c7
	.DW l10e3h		;10c9
l10cbh:
	.DB $00		;10cb
	.DB $01		;10cc
	.DB $00		;10cd
	.DB $00		;10ce
	.DB $03		;10cf
	.DB $03		;10d0
	.DB $02		;10d1
	.DB $03		;10d2
l10d3h:
	.DB $07		;10d3
	.DB $06		;10d4
	.DB $07		;10d5
	.DB $07		;10d6
	.DB $04		;10d7
	.DB $04		;10d8
	.DB $05		;10d9
	.DB $04		;10da
l10dbh:
	.DB $03		;10db
	.DB $02		;10dc
	.DB $02		;10dd
	.DB $02		;10de
	.DB $00		;10df
	.DB $00		;10e0
	.DB $01		;10e1
	.DB $00		;10e2
l10e3h:
	.DB $04		;10e3
	.DB $05		;10e4
	.DB $04		;10e5
	.DB $04		;10e6
	.DB $07		;10e7
	.DB $07		;10e8
	.DB $06		;10e9
	.DB $07		;10ea
l10ebh:
	.DB $f1		;10eb
	.DB $10		;10ec
	.DB $31		;10ed
	.DB $11		;10ee
	.DB $71		;10ef
	.DB $11		;10f0
	.DB $03		;10f1
	.DB $00		;10f2
	.DB $e0		;10f3
	.DB $ff		;10f4
	.DB $80		;10f5
	.DB $fe		;10f6
	.DB $78		;10f7
	.DB $ff		;10f8
	.DB $03		;10f9
	.DB $00		;10fa
	.DB $e0		;10fb
	.DB $ff		;10fc
	.DB $80		;10fd
	.DB $fe		;10fe
	.DB $bc		;10ff
	.DB $ff		;1100
	.DB $03		;1101
	.DB $00		;1102
	.DB $e0		;1103
	.DB $ff		;1104
	.DB $80		;1105
	.DB $fe		;1106
	.DB $10		;1107
	.DB $ff		;1108
	.DB $03		;1109
	.DB $00		;110a
	.DB $e0		;110b
	.DB $ff		;110c
	.DB $80		;110d
	.DB $fe		;110e
	.DB $50		;110f
	.DB $ff		;1110
	.DB $03		;1111
	.DB $00		;1112
	.DB $e0		;1113
	.DB $ff		;1114
	.DB $80		;1115
	.DB $fe		;1116
	.DB $88		;1117
	.DB $00		;1118
	.DB $03		;1119
	.DB $00		;111a
	.DB $e0		;111b
	.DB $ff		;111c
	.DB $80		;111d
	.DB $fe		;111e
	.DB $44		;111f
	.DB $00		;1120
	.DB $03		;1121
	.DB $00		;1122
	.DB $e0		;1123
	.DB $ff		;1124
	.DB $80		;1125
	.DB $fe		;1126
	.DB $f0		;1127
	.DB $00		;1128
	.DB $03		;1129
	.DB $00		;112a
	.DB $e0		;112b
	.DB $ff		;112c
	.DB $80		;112d
	.DB $fe		;112e
	.DB $b0		;112f
	.DB $00		;1130
	.DB $05		;1131
	.DB $00		;1132
	.DB $e0		;1133
	.DB $ff		;1134
	.DB $00		;1135
	.DB $fe		;1136
	.DB $48		;1137
	.DB $ff		;1138
	.DB $05		;1139
	.DB $00		;113a
	.DB $e0		;113b
	.DB $ff		;113c
	.DB $00		;113d
	.DB $fe		;113e
	.DB $ac		;113f
	.DB $ff		;1140
	.DB $05		;1141
	.DB $00		;1142
	.DB $e0		;1143
	.DB $ff		;1144
	.DB $00		;1145
	.DB $fe		;1146
	.DB $c0		;1147
	.DB $fe		;1148
	.DB $05		;1149
	.DB $00		;114a
	.DB $e0		;114b
	.DB $ff		;114c
	.DB $00		;114d
	.DB $fe		;114e
	.DB $16		;114f
	.DB $ff		;1150
	.DB $05		;1151
	.DB $00		;1152
	.DB $e0		;1153
	.DB $ff		;1154
	.DB $00		;1155
	.DB $fe		;1156
	.DB $b8		;1157
	.DB $00		;1158
	.DB $05		;1159
	.DB $00		;115a
	.DB $e0		;115b
	.DB $ff		;115c
	.DB $00		;115d
	.DB $fe		;115e
	.DB $5a		;115f
	.DB $00		;1160
	.DB $05		;1161
	.DB $00		;1162
	.DB $e0		;1163
	.DB $ff		;1164
	.DB $00		;1165
	.DB $fe		;1166
	.DB $40		;1167
	.DB $01		;1168
	.DB $05		;1169
	.DB $00		;116a
	.DB $e0		;116b
	.DB $ff		;116c
	.DB $00		;116d
	.DB $fe		;116e
	.DB $ea		;116f
	.DB $00		;1170
l1171h:
	.DB $0b		;1171
	.DB $00		;1172
	.DB $e0		;1173
	.DB $ff		;1174
	.DB $00		;1175
	.DB $fd		;1176
	.DB $f0		;1177
	.DB $fe		;1178
	.DB $0b		;1179
	.DB $00		;117a
	.DB $e0		;117b
	.DB $ff		;117c
	.DB $00		;117d
	.DB $fd		;117e
	.DB $78		;117f
	.DB $ff		;1180
	.DB $0b		;1181
	.DB $00		;1182
	.DB $e0		;1183
	.DB $ff		;1184
	.DB $00		;1185
	.DB $fd		;1186
	.DB $20		;1187
	.DB $fe		;1188
	.DB $0b		;1189
	.DB $00		;118a
	.DB $e0		;118b
	.DB $ff		;118c
	.DB $00		;118d
	.DB $fd		;118e
	.DB $a0		;118f
	.DB $fe		;1190
	.DB $0b		;1191
	.DB $00		;1192
	.DB $e0		;1193
	.DB $ff		;1194
	.DB $00		;1195
	.DB $fd		;1196
	.DB $10		;1197
	.DB $01		;1198
	.DB $0b		;1199
	.DB $00		;119a
	.DB $e0		;119b
	.DB $ff		;119c
	.DB $00		;119d
	.DB $fd		;119e
	.DB $88		;119f
	.DB $00		;11a0
	.DB $0b		;11a1
	.DB $00		;11a2
	.DB $e0		;11a3
	.DB $ff		;11a4
	.DB $00		;11a5
	.DB $fd		;11a6
	.DB $e0		;11a7
	.DB $01		;11a8
	.DB $0b		;11a9
	.DB $00		;11aa
	.DB $e0		;11ab
	.DB $ff		;11ac
	.DB $00		;11ad
	.DB $fd		;11ae
	.DB $60		;11af
	.DB $01		;11b0
