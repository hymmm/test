#!/bin/sh

# These tables are based upon `International Register of Coded Character Sets 
# to be Used with Escape Sequences' at http://www.itscj.ipsj.or.jp/ISO-IR/
# which is Registration Authority specified in ISO 2375.
#
# Latin-1: 100.pdf, Latin-2: 101.pdf, Latin-3: 109.pdf, Latin-4: 110.pdf, 
# Latin-5: 148.pdf, Latin-6: 157.pdf, Latin-7: 179.pdf, Latin-8: 199.pdf,
# Latin-9: 203.pdf, Latin-10: 226.pdf.
#
# Note that `section' is called as `PARAGRAPH SIGN' in earlier registrations,
# and paragraph is as `PILCROW SIGN'.
#
# Other sources:
# http://www.ecma-international.org/publications/standards/ECMA-094.htm
# http://www.ecma-international.org/publications/standards/ECMA-128.htm
# http://www.ecma-international.org/publications/standards/ECMA-144.htm
#
# ECMA-144 contains wrong glyph for `Eng' and `eng' in glyph table (displayed
# as the same form with `Ncedilla' and `ncedilla'). 
#
# My implementation of `Eng' has different form from most of other 
# implementations (N with tail), this is based on the description
# `glyph may also have appearance of large form of the small letter' in
# unicode standard (U+014A) and Koichi Yasuoka's glyph table
# http://kanji.zinbun.kyoto-u.ac.jp/~yasuoka/CJK/96CHAR/iso8859.4-1988.gif .
#
# Glyph names are taken from PostScript names and slightly modified; 
# Oslash -> Ostroke, oslash -> ostroke, Lslash -> Lstroke, lslash -> lstroke,
# hungarumlaut -> doubleacute.

LATIN1="
    nobreakspace 160	exclamdown 161	cent 162	sterling 163
    currency 164	yen 165		brokenbar 166	section 167
    dieresis 168	copyright 169	ordfeminine 170	guillemotleft 171
    logicalnot 172	softhyphen 173	registered 174	macron 175
    degree 176		plusminus 177	twosuperior 178	threesuperior 179
    acute 180		mu 181		paragraph 182	periodcentered 183
    cedilla 184	       onesuperior 185 ordmasculine 186	guillemotright 187
    onequarter 188	onehalf	189	threequarters 190    questiondown 191
    Agrave 192		Aacute 193      Acircumflex 194	Atilde 195
    Adieresis 196	Aring 197	AE 198		Ccedilla 199
    Egrave 200		Eacute 201	Ecircumflex 202	Edieresis 203
    Igrave 204		Iacute 205	Icircumflex 206	Idieresis 207
    Eth 208		Ntilde 209	Ograve 210	Oacute 211
    Ocircumflex 212	Otilde 213	Odieresis 214	multiply 215
    Ostroke 216		Ugrave 217	Uacute 218	Ucircumflex 219
    Udieresis 220	Yacute 221	Thorn 222	germandbls 223
    agrave 224		aacute 225      acircumflex 226	atilde 227
    adieresis 228	aring 229	ae 230		ccedilla 231
    egrave 232		eacute 233	ecircumflex 234	edieresis 235
    igrave 236		iacute 237	icircumflex 238	idieresis 239
    eth 240		ntilde 241	ograve 242	oacute 243
    ocircumflex 244	otilde 245	odieresis 246	divide 247
    ostroke 248		ugrave 249	uacute 250	ucircumflex 251
    udieresis 252	yacute 253	thorn 254	ydieresis 255"

LATIN2="
    nobreakspace 160	Aogonek 161	breve 162	Lstroke 163
    currency 164	Lcaron 165	Sacute 166	section 167
    dieresis 168	Scaron 169	Scedilla 170	Tcaron 171
    Zacute 172		softhyphen 173	Zcaron 174	Zdotabove 175
    degree 176		aogonek 177	ogonek 178	lstroke 179
    acute 180		lcaron 181	sacute 182	caron 183
    cedilla 184		scaron 185	scedilla 186	tcaron 187
    zacute 188		doubleacute 189	zcaron 190	zdotabove 191
    Racute 192		Aacute 193      Acircumflex 194	Abreve 195
    Adieresis 196	Lacute 197	Cacute 198	Ccedilla 199
    Ccaron 200		Eacute 201	Eogonek 202	Edieresis 203
    Ecaron 204		Iacute 205	Icircumflex 206	Dcaron 207
    Dstroke 208		Nacute 209	Ncaron 210	Oacute 211
    Ocircumflex 212	Odoubleacute 213 Odieresis 214	multiply 215
    Rcaron 216		Uring 217	Uacute 218	Udoubleacute 219
    Udieresis 220	Yacute 221	Tcedilla 222	germandbls 223
    racute 224		aacute 225      acircumflex 226	abreve 227
    adieresis 228	lacute 229	cacute 230	ccedilla 231
    ccaron 232		eacute 233	eogonek 234	edieresis 235
    ecaron 236		iacute 237	icircumflex 238	dcaron 239
    dstroke 240		nacute 241	ncaron 242	oacute 243
    ocircumflex 244	odoubleacute 245 odieresis 246	divide 247
    rcaron 248		uring 249	uacute 250	udoubleacute 251
    udieresis 252	yacute 253	tcedilla 254	dotabove 255"

LATIN3="
    nobreakspace 160	Hstroke 161	breve 162	sterling 163
    currency 164			Hcircumflex 166	section 167
    dieresis 168	Idotabove 169	Scedilla 170	Gbreve 171
    Jcircumflex 172	softhyphen 173			Zdotabove 175
    degree 176		hstroke 177	twosuperior 178	threesuperior 179
    acute 180		mu 181		hcircumflex 182	periodcentered 183
    cedilla 184	        dotlessi 185	scedilla 186	gbreve 187
    jcircumflex 188	onehalf	189			zdotabove 191
    Agrave 192		Aacute 193      Acircumflex 194
    Adieresis 196	Cdotabove 197	Ccircumflex 198	Ccedilla 199
    Egrave 200		Eacute 201	Ecircumflex 202	Edieresis 203
    Igrave 204		Iacute 205	Icircumflex 206	Idieresis 207
			Ntilde 209	Ograve 210	Oacute 211
    Ocircumflex 212	Gdotabove 213	Odieresis 214	multiply 215
    Gcircumflex 216	Ugrave 217	Uacute 218	Ucircumflex 219
    Udieresis 220	Ubreve 221	Scircumflex 222	germandbls 223
    agrave 224		aacute 225      acircumflex 226
    adieresis 228	cdotabove 229	ccircumflex 230	ccedilla 231
    egrave 232		eacute 233	ecircumflex 234	edieresis 235
    igrave 236		iacute 237	icircumflex 238	idieresis 239
    			ntilde 241	ograve 242	oacute 243
    ocircumflex 244	gdotabove 245	odieresis 246	divide 247
    gcircumflex 248	ugrave 249	uacute 250	ucircumflex 251
    udieresis 252	ubreve 253	scircumflex 254	dotabove 255"

LATIN4="
    nobreakspace 160	Aogonek 161     kra 162		Rcedilla 163
    currency 164	Itilde 165	Lcedilla 166	section 167
    dieresis 168	Scaron 169	Emacron 170	Gcedilla 171
    Tstroke 172		softhyphen 173	Zcaron 174	macron 175
    degree 176		aogonek 177	ogonek 178	rcedilla 179
    acute 180		itilde 181	lcedilla 182	caron 183
    cedilla 184		scaron 185	emacron 186	gcedilla 187
    tstroke 188		Eng 189		zcaron 190	eng 191
    Amacron 192		Aacute 193      Acircumflex 194	Atilde 195
    Adieresis 196	Aring 197	AE 198		Iogonek 199
    Ccaron 200		Eacute 201	Eogonek 202	Edieresis 203
    Edotabove 204	Iacute 205	Icircumflex 206	Imacron 207
    Dstroke 208		Ncedilla 209	Omacron 210	Kcedilla 211
    Ocircumflex 212	Otilde 213	Odieresis 214	multiply 215
    Ostroke 216		Uogonek 217	Uacute 218	Ucircumflex 219
    Udieresis 220	Utilde 221	Umacron 222	germandbls 223
    amacron 224		aacute 225      acircumflex 226	atilde 227
    adieresis 228	aring 229	ae 230		iogonek 231
    ccaron 232		eacute 233	eogonek 234	edieresis 235
    edotabove 236	iacute 237	icircumflex 238	imacron 239
    dstroke 240		ncedilla 241	omacron 242	kcedilla 243
    ocircumflex 244	otilde 245	odieresis 246	divide 247
    ostroke 248		uogonek 249	uacute 250	ucircumflex 251
    udieresis 252	utilde 253	umacron 254	dotabove 255"

LATIN5="
    nobreakspace 160	exclamdown 161	cent 162	sterling 163
    currency 164	yen 165		brokenbar 166	section 167
    dieresis 168	copyright 169	ordfeminine 170	guillemotleft 171
    logicalnot 172	softhyphen 173	registered 174	macron 175
    degree 176		plusminus 177	twosuperior 178	threesuperior 179
    acute 180		mu 181		paragraph 182	periodcentered 183
    cedilla 184	       onesuperior 185 ordmasculine 186	guillemotright 187
    onequarter 188	onehalf	189	threequarters 190    questiondown 191
    Agrave 192		Aacute 193      Acircumflex 194	Atilde 195
    Adieresis 196	Aring 197	AE 198		Ccedilla 199
    Egrave 200		Eacute 201	Ecircumflex 202	Edieresis 203
    Igrave 204		Iacute 205	Icircumflex 206	Idieresis 207
    Gbreve 208		Ntilde 209	Ograve 210	Oacute 211
    Ocircumflex 212	Otilde 213	Odieresis 214	multiply 215
    Ostroke 216		Ugrave 217	Uacute 218	Ucircumflex 219
    Udieresis 220	Idotabove 221	Scedilla 222	germandbls 223
    agrave 224		aacute 225      acircumflex 226	atilde 227
    adieresis 228	aring 229	ae 230		ccedilla 231
    egrave 232		eacute 233	ecircumflex 234	edieresis 235
    igrave 236		iacute 237	icircumflex 238	idieresis 239
    gbreve 240		ntilde 241	ograve 242	oacute 243
    ocircumflex 244	otilde 245	odieresis 246	divide 247
    ostroke 248		ugrave 249	uacute 250	ucircumflex 251
    udieresis 252	dotlessi 253	scedilla 254	ydieresis 255"

LATIN6="
    nobreakspace 160	Aogonek 161     Emacron 162	Gcedilla 163
    Imacron 164		Itilde 165	Kcedilla 166	section 167
    Lcedilla 168	Dstroke 169	Scaron 170	Tstroke 171
    Zcaron 172		softhyphen 173	Umacron 174	Eng 175
    degree 176		aogonek 177	emacron 178	gcedilla 179
    imacron 180		itilde 181	kcedilla 182	periodcentered 183
    lcedilla 184	dstroke 185	scaron 186	tstroke 187
    zcaron 188		emdash 189	umacron 190	eng 191
    Amacron 192		Aacute 193      Acircumflex 194	Atilde 195
    Adieresis 196	Aring 197	AE 198		Iogonek 199
    Ccaron 200		Eacute 201	Eogonek 202	Edieresis 203
    Edotabove 204	Iacute 205	Icircumflex 206	Idieresis 207
    Eth 208		Ncedilla 209	Omacron 210	Oacute 211
    Ocircumflex 212	Otilde 213	Odieresis 214	Utilde 215
    Ostroke 216		Uogonek 217	Uacute 218	Ucircumflex 219
    Udieresis 220	Yacute 221	Thorn 222	germandbls 223
    amacron 224		aacute 225      acircumflex 226	atilde 227
    adieresis 228	aring 229	ae 230		iogonek 231
    ccaron 232		eacute 233	eogonek 234	edieresis 235
    edotabove 236	iacute 237	icircumflex 238	idieresis 239
    eth 240		ncedilla 241	omacron 242	oacute 243
    ocircumflex 244	otilde 245	odieresis 246	utilde 247
    ostroke 248		uogonek 249	uacute 250	ucircumflex 251
    udieresis 252	yacute 253	thorn 254	kra 255"

LATIN7="
    nobreakspace 160  quotedblright 161	cent 162	sterling 163
    currency 164       quotedblbase 165	brokenbar 166	section 167
    Ostroke 168		copyright 169	Rcedilla 170	guillemotleft 171
    logicalnot 172	softhyphen 173	registered 174	AE 175
    degree 176		plusminus 177	twosuperior 178	threesuperior 179
    quotedblleft 180	mu 181		paragraph 182	periodcentered 183
    ostroke 184	        onesuperior 185 rcedilla 186	guillemotright 187
    onequarter 188	onehalf	189	threequarters 190	ae 191
    Aogonek 192		Iogonek 193     Amacron 194	Cacute 195
    Adieresis 196	Aring 197	Eogonek 198	Emacron 199
    Ccaron 200		Eacute 201	Zacute 202	Edotabove 203
    Gcedilla 204	Kcedilla 205	Imacron 206	Lcedilla 207
    Scaron 208		Nacute 209	Ncedilla 210	Oacute 211
    Omacron 212		Otilde 213	Odieresis 214	multiply 215
    Uogonek 216		Lstroke 217	Sacute 218	Umacron 219
    Udieresis 220	Zdotabove 221	Zcaron 222	germandbls 223
    aogonek 224		iogonek 225	amacron 226	cacute 227
    adieresis 228	aring 229	eogonek 230	emacron 231
    ccaron 232		eacute 233	zacute 234	edotabove 235
    gcedilla 236	kcedilla 237	imacron 238	lcedilla 239
    scaron 240		nacute 241	ncedilla 242	oacute 243
    omacron 244		otilde 245	odieresis 246	divide 247
    uogonek 248		lstroke 249	sacute 250	umacron 251
    udieresis 252	zdotabove 253	zcaron 254	quoteright 255"

LATIN8="
    nobreakspace 160	Bdotabove 161	bdotabove 162	sterling 163
    Cdotabove 164	cdotabove 165	Ddotabove 166	section 167
    Wgrave 168		copyright 169	Wacute 170	ddotabove 171
    Ygrave 172		softhyphen 173	registered 174	Ydieresis 175
    Fdotabove 176	fdotabove 177	Gdotabove 178	gdotabove 179
    Mdotabove 180	mdotabove 181	paragraph 182	Pdotabove 183
    wgrave 184		pdotabove 185	wacute 186	Sdotabove 187
    ygrave 188		Wdieresis 189	wdieresis 190	sdotabove 191
    Agrave 192		Aacute 193      Acircumflex 194	Atilde 195
    Adieresis 196	Aring 197	AE 198		Ccedilla 199
    Egrave 200		Eacute 201	Ecircumflex 202	Edieresis 203
    Igrave 204		Iacute 205	Icircumflex 206	Idieresis 207
    Wcircumflex 208	Ntilde 209	Ograve 210	Oacute 211
    Ocircumflex 212	Otilde 213	Odieresis 214	Tdotabove 215
    Ostroke 216		Ugrave 217	Uacute 218	Ucircumflex 219
    Udieresis 220	Yacute 221	Ycircumflex 222	germandbls 223
    agrave 224		aacute 225      acircumflex 226	atilde 227
    adieresis 228	aring 229	ae 230		ccedilla 231
    egrave 232		eacute 233	ecircumflex 234	edieresis 235
    igrave 236		iacute 237	icircumflex 238	idieresis 239
    wcircumflex 240	ntilde 241	ograve 242	oacute 243
    ocircumflex 244	otilde 245	odieresis 246	tdotabove 247
    ostroke 248		ugrave 249	uacute 250	ucircumflex 251
    udieresis 252	yacute 253	ycircumflex 254	ydieresis 255"

LATIN9="
    nobreakspace 160	exclamdown 161	cent 162	sterling 163
    euro 164		yen 165		Scaron 166	section 167
    scaron 168		copyright 169	ordfeminine 170	guillemotleft 171
    logicalnot 172	softhyphen 173	registered 174	macron 175
    degree 176		plusminus 177	twosuperior 178	threesuperior 179
    Zcaron 180		mu 181		paragraph 182	periodcentered 183
    zcaron 184	       onesuperior 185 ordmasculine 186	guillemotright 187
    OE 188		oe 189		Ydieresis 190	questiondown 191
    Agrave 192		Aacute 193      Acircumflex 194	Atilde 195
    Adieresis 196	Aring 197	AE 198		Ccedilla 199
    Egrave 200		Eacute 201	Ecircumflex 202	Edieresis 203
    Igrave 204		Iacute 205	Icircumflex 206	Idieresis 207
    Eth 208		Ntilde 209	Ograve 210	Oacute 211
    Ocircumflex 212	Otilde 213	Odieresis 214	multiply 215
    Ostroke 216		Ugrave 217	Uacute 218	Ucircumflex 219
    Udieresis 220	Yacute 221	Thorn 222	germandbls 223
    agrave 224		aacute 225      acircumflex 226	atilde 227
    adieresis 228	aring 229	ae 230		ccedilla 231
    egrave 232		eacute 233	ecircumflex 234	edieresis 235
    igrave 236		iacute 237	icircumflex 238	idieresis 239
    eth 240		ntilde 241	ograve 242	oacute 243
    ocircumflex 244	otilde 245	odieresis 246	divide 247
    ostroke 248		ugrave 249	uacute 250	ucircumflex 251
    udieresis 252	yacute 253	thorn 254	ydieresis 255"

LATIN10="
    nobreakspace 160	Aogonek 161	aogonek 162	Lstroke 163
    euro 164		quotedblbase 165 Scaron 166	section 167
    scaron 168		copyright 169	Scommabelow 170	guillemotleft 171
    Zacute 172		softhyphen 173	zacute 174	Zdotabove 175
    degree 176		plusminus 177	Ccaron 178	lstroke 179
    Zcaron 180	      quotedblright 181	paragraph 182	periodcentered 183
    zcaron 184		ccaron 185	scommabelow 186	guillemotright 187
    OE 188		oe 189		Ydieresis 190	zdotabove 191
    Agrave 192		Aacute 193      Acircumflex 194	Abreve 195
    Adieresis 196	Cacute 197	AE 198		Ccedilla 199
    Egrave 200		Eacute 201	Ecircumflex 202	Edieresis 203
    Igrave 204		Iacute 205	Icircumflex 206	Idieresis 207
    Dstroke 208		Nacute 209	Ograve 210	Oacute 211
    Ocircumflex 212    Odoubleacute 213	Odieresis 214	Sacute 215
    Udoubleacute 216	Ugrave 217	Uacute 218	Ucircumflex 219
    Udieresis 220	Eogonek 221	Tcommabelow 222	germandbls 223
    agrave 224		aacute 225      acircumflex 226	abreve 227
    adieresis 228	cacute 229	ae 230		ccedilla 231
    egrave 232		eacute 233	ecircumflex 234	edieresis 235
    igrave 236		iacute 237	icircumflex 238	idieresis 239
    dstroke 240		nacute 241	ograve 242	oacute 243
    ocircumflex 244    odoubleacute 245	odieresis 246	sacute 247
    udoubleacute 248	ugrave 249	uacute 250	ucircumflex 251
    udieresis 252	eogonek 253	tcommabelow 254	ydieresis 255"

for WT in m b; do
    if [ $WT = m ]; then WEIGHT=Medium; else WEIGHT=Bold; fi
    for LATIN in 1 2 3 4 5 6 7 8 9 10; do
    	if [ $LATIN -le 4 ]; then ISO8859=$LATIN;
	elif [ $LATIN -le 6 ]; then ISO8859=`expr $LATIN + 4`;
    	else ISO8859=`expr $LATIN + 6`;
	fi
    	if [ $LATIN -eq 1 ]; then BDF="10x20$WT.bdf";
	else BDF="10x20L$LATIN$WT.bdf";
	fi
	ENCODING=`eval echo "$""LATIN$LATIN"`

	echo generating $BDF
	set -- $ENCODING
	CHARS=`expr $# / 2 + 95`

        cp /dev/null $BDF
        while read LINE ; do
	       eval echo $LINE >> $BDF
        done < iso8859/header

	cat iso8859/$WEIGHT/ASCII >> $BDF
	while [ $# -gt 0 ]; do
	    echo "STARTCHAR $1" >> $BDF
	    echo "ENCODING $2" >> $BDF
	    cat iso8859/$WEIGHT/$1 >> $BDF
	    shift 2
	done
	echo "ENDFONT" >> $BDF
    done
done
