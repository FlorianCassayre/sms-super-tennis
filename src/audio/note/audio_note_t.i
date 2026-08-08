.STRUCT audio_note_t
    rest DB 
    a1 DB	as1 DB	b1 DB	c1 DB	cs1 DB	d1 DB	ds1 DB	e1 DB	f1 DB	fs1 DB	g1 DB	gs1 DB
    a2 DB	as2 DB	b2 DB	c2 DB	cs2 DB	d2 DB	ds2 DB	e2 DB	f2 DB	fs2 DB	g2 DB	gs2 DB
    a3 DB	as3 DB	b3 DB	c3 DB	cs3 DB	d3 DB	ds3 DB	e3 DB	f3 DB	fs3 DB	g3 DB	gs3 DB
    a4 DB	as4 DB	b4 DB	c4 DB	cs4 DB	d4 DB	ds4 DB	e4 DB	f4 DB	fs4 DB	g4 DB	gs4 DB
    a5 DB	as5 DB	b5 DB	c5 DB	cs5 DB	d5 DB	ds5 DB	e5 DB	f5 DB	fs5 DB	g5 DB	gs5 DB
    a6 DB	as6 DB	b6 DB	c6 DB	cs6 DB	d6 DB	ds6 DB	e6 DB	f6 DB	fs6 DB	g6 DB	gs6 DB
.ENDST

.ENUM $80
	note INSTANCEOF audio_note_t
.ENDE
