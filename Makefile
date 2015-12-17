# Makefile for Kappa 20dot Fonts Version 0.396 (2003/10/06).

TARGETDIR = $(DESTDIR)/usr/share/fonts/X11/misc/

COMPRESSCMD = gzip -c9 -n
COMPRESSEXT = .gz
#COMPRESSCMD = compress
#COMPRESSEXT = .Z
##COMPRESSCMD = cat
##COMPRESSEXT = 

PATCH = patch

default:: pcf fonts.alias
	cd pcf; mkfontdir

pcf:	pcf/k20m.pcf${COMPRESSEXT} pcf/k20b.pcf${COMPRESSEXT} \
	pcf/10x20m.pcf${COMPRESSEXT} pcf/10x20b.pcf${COMPRESSEXT} \
	pcf/10x20rkm.pcf${COMPRESSEXT} pcf/10x20rkb.pcf${COMPRESSEXT} \
	pcf/10x20L2m.pcf${COMPRESSEXT} pcf/10x20L2b.pcf${COMPRESSEXT} \
	pcf/10x20L3m.pcf${COMPRESSEXT} pcf/10x20L3b.pcf${COMPRESSEXT} \
	pcf/10x20L4m.pcf${COMPRESSEXT} pcf/10x20L4b.pcf${COMPRESSEXT} \
	pcf/10x20L5m.pcf${COMPRESSEXT} pcf/10x20L5b.pcf${COMPRESSEXT} \
	pcf/10x20L6m.pcf${COMPRESSEXT} pcf/10x20L6b.pcf${COMPRESSEXT} \
	pcf/10x20L7m.pcf${COMPRESSEXT} pcf/10x20L7b.pcf${COMPRESSEXT} \
	pcf/10x20L8m.pcf${COMPRESSEXT} pcf/10x20L8b.pcf${COMPRESSEXT} \
	pcf/10x20L9m.pcf${COMPRESSEXT} pcf/10x20L9b.pcf${COMPRESSEXT} \
	pcf/10x20L10m.pcf${COMPRESSEXT} pcf/10x20L10b.pcf${COMPRESSEXT} \
	pcf/ipa-10x20m.pcf${COMPRESSEXT} pcf/ipa-10x20b.pcf${COMPRESSEXT} \
	pcf/vk20m.pcf${COMPRESSEXT} pcf/vk20b.pcf${COMPRESSEXT}

all:: pcf pcf/nk20b-1.pcf${COMPRESSEXT} fonts.alias 
	cd pcf; mkfontdir

pcf/k20m.pcf${COMPRESSEXT}:	k20m.bdf
	bdftopcf k20m.bdf | ${COMPRESSCMD} > pcf/k20m.pcf${COMPRESSEXT}

pcf/k20b.pcf${COMPRESSEXT}:	k20b.bdf
	bdftopcf k20b.bdf | ${COMPRESSCMD} > pcf/k20b.pcf${COMPRESSEXT}

pcf/10x20m.pcf${COMPRESSEXT}:	10x20m.bdf
	bdftopcf 10x20m.bdf | ${COMPRESSCMD} > pcf/10x20m.pcf${COMPRESSEXT}

pcf/10x20b.pcf${COMPRESSEXT}:	10x20b.bdf
	bdftopcf 10x20b.bdf | ${COMPRESSCMD} > pcf/10x20b.pcf${COMPRESSEXT}

pcf/10x20rkm.pcf${COMPRESSEXT}:	10x20rkm.bdf
	bdftopcf 10x20rkm.bdf | ${COMPRESSCMD} > pcf/10x20rkm.pcf${COMPRESSEXT}

pcf/10x20rkb.pcf${COMPRESSEXT}:	10x20rkb.bdf
	bdftopcf 10x20rkb.bdf | ${COMPRESSCMD} > pcf/10x20rkb.pcf${COMPRESSEXT}

pcf/ipa-10x20m.pcf${COMPRESSEXT}:	ipa-10x20m.bdf
	bdftopcf ipa-10x20m.bdf | ${COMPRESSCMD} > pcf/ipa-10x20m.pcf${COMPRESSEXT}

pcf/ipa-10x20b.pcf${COMPRESSEXT}:	ipa-10x20b.bdf
	bdftopcf ipa-10x20b.bdf | ${COMPRESSCMD} > pcf/ipa-10x20b.pcf${COMPRESSEXT}

pcf/10x20L2m.pcf${COMPRESSEXT}:	10x20L2m.bdf
	bdftopcf 10x20L2m.bdf | ${COMPRESSCMD} > pcf/10x20L2m.pcf${COMPRESSEXT}

pcf/10x20L2b.pcf${COMPRESSEXT}:	10x20L2b.bdf
	bdftopcf 10x20L2b.bdf | ${COMPRESSCMD} > pcf/10x20L2b.pcf${COMPRESSEXT}

pcf/10x20L3m.pcf${COMPRESSEXT}:	10x20L3m.bdf
	bdftopcf 10x20L3m.bdf | ${COMPRESSCMD} > pcf/10x20L3m.pcf${COMPRESSEXT}

pcf/10x20L3b.pcf${COMPRESSEXT}:	10x20L3b.bdf
	bdftopcf 10x20L3b.bdf | ${COMPRESSCMD} > pcf/10x20L3b.pcf${COMPRESSEXT}

pcf/10x20L4m.pcf${COMPRESSEXT}:	10x20L4m.bdf
	bdftopcf 10x20L4m.bdf | ${COMPRESSCMD} > pcf/10x20L4m.pcf${COMPRESSEXT}

pcf/10x20L4b.pcf${COMPRESSEXT}:	10x20L4b.bdf
	bdftopcf 10x20L4b.bdf | ${COMPRESSCMD} > pcf/10x20L4b.pcf${COMPRESSEXT}

pcf/10x20L5m.pcf${COMPRESSEXT}:	10x20L5m.bdf
	bdftopcf 10x20L5m.bdf | ${COMPRESSCMD} > pcf/10x20L5m.pcf${COMPRESSEXT}

pcf/10x20L5b.pcf${COMPRESSEXT}:	10x20L5b.bdf
	bdftopcf 10x20L5b.bdf | ${COMPRESSCMD} > pcf/10x20L5b.pcf${COMPRESSEXT}

pcf/10x20L6m.pcf${COMPRESSEXT}:	10x20L6m.bdf
	bdftopcf 10x20L6m.bdf | ${COMPRESSCMD} > pcf/10x20L6m.pcf${COMPRESSEXT}

pcf/10x20L6b.pcf${COMPRESSEXT}:	10x20L6b.bdf
	bdftopcf 10x20L6b.bdf | ${COMPRESSCMD} > pcf/10x20L6b.pcf${COMPRESSEXT}

pcf/10x20L7m.pcf${COMPRESSEXT}:	10x20L7m.bdf
	bdftopcf 10x20L7m.bdf | ${COMPRESSCMD} > pcf/10x20L7m.pcf${COMPRESSEXT}

pcf/10x20L7b.pcf${COMPRESSEXT}:	10x20L7b.bdf
	bdftopcf 10x20L7b.bdf | ${COMPRESSCMD} > pcf/10x20L7b.pcf${COMPRESSEXT}

pcf/10x20L8m.pcf${COMPRESSEXT}:	10x20L8m.bdf
	bdftopcf 10x20L8m.bdf | ${COMPRESSCMD} > pcf/10x20L8m.pcf${COMPRESSEXT}

pcf/10x20L8b.pcf${COMPRESSEXT}:	10x20L8b.bdf
	bdftopcf 10x20L8b.bdf | ${COMPRESSCMD} > pcf/10x20L8b.pcf${COMPRESSEXT}

pcf/10x20L9m.pcf${COMPRESSEXT}:	10x20L9m.bdf
	bdftopcf 10x20L9m.bdf | ${COMPRESSCMD} > pcf/10x20L9m.pcf${COMPRESSEXT}

pcf/10x20L9b.pcf${COMPRESSEXT}:	10x20L9b.bdf
	bdftopcf 10x20L9b.bdf | ${COMPRESSCMD} > pcf/10x20L9b.pcf${COMPRESSEXT}

pcf/10x20L10m.pcf${COMPRESSEXT}: 10x20L10m.bdf
	bdftopcf 10x20L10m.bdf | ${COMPRESSCMD} > pcf/10x20L10m.pcf${COMPRESSEXT}

pcf/10x20L10b.pcf${COMPRESSEXT}: 10x20L10b.bdf
	bdftopcf 10x20L10b.bdf | ${COMPRESSCMD} > pcf/10x20L10b.pcf${COMPRESSEXT}

pcf/vk20m.pcf${COMPRESSEXT}:	vk20m.bdf
	bdftopcf vk20m.bdf | ${COMPRESSCMD} > pcf/vk20m.pcf${COMPRESSEXT}

pcf/vk20b.pcf${COMPRESSEXT}:	vk20b.bdf
	bdftopcf vk20b.bdf | ${COMPRESSCMD} > pcf/vk20b.pcf${COMPRESSEXT}

vk20m.bdf:	k20m.bdf tategaki.diff
	sed /vk20b.bdf/,\$$d tategaki.diff | ${PATCH} -o vk20m.bdf k20m.bdf

vk20b.bdf:	k20b.bdf tategaki.diff
	sed -n /k20b.bdf/,\$$p tategaki.diff | ${PATCH} -o vk20b.bdf k20b.bdf

pcf/nk20b-1.pcf${COMPRESSEXT}:	nk20b-1.bdf
	bdftopcf nk20b-1.bdf | ${COMPRESSCMD} > pcf/nk20b-1.pcf${COMPRESSEXT}

nk20b-1.bdf: 	k20b.bdf newjis.diff
	${PATCH} -o nk20b-1.bdf k20b.bdf < newjis.diff

10x20m.bdf: iso8859/header
	sh makebdf.sh

fonts.alias:
	egrep -iv '^(-kappa-[^ 	]*--20-|(v?k|a|r)20[mb][ 	]|(ipa-)?10x20[mb][ 	]|10x20(rk|L[2-9])[mb][ 	])' ${TARGETDIR}/fonts.alias > pcf/fonts.alias || true
	echo -kappa-mincho-bold-r-normal--20-190-75-75-c-200-jisx0208.1983-0 -kappa-mincho-bold-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-minchou-bold-r-normal--20-190-75-75-c-200-jisx0208.1983-0 -kappa-mincho-bold-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-minchou-bold-r-normal--20-190-75-75-c-200-jisx0208.1990-0 -kappa-mincho-bold-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-fixed-bold-r-normal--20-190-75-75-c-200-jisx0208.1983-0 -kappa-mincho-bold-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-fixed-bold-r-normal--20-190-75-75-c-200-jisx0208.1990-0 -kappa-mincho-bold-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo k20b -kappa-fixed-bold-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-mincho-medium-r-normal--20-190-75-75-c-200-jisx0208.1983-0 -kappa-mincho-medium-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-minchou-medium-r-normal--20-190-75-75-c-200-jisx0208.1983-0 -kappa-mincho-medium-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-minchou-medium-r-normal--20-190-75-75-c-200-jisx0208.1990-0 -kappa-mincho-medium-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-fixed-medium-r-normal--20-190-75-75-c-200-jisx0208.1983-0 -kappa-mincho-medium-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-fixed-medium-r-normal--20-190-75-75-c-200-jisx0208.1990-0 -kappa-mincho-medium-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo k20m -kappa-fixed-medium-r-normal--20-190-75-75-c-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo 10x20b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-1 >> pcf/fonts.alias
	echo a20b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-1 >> pcf/fonts.alias
	echo 10x20m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-1 >> pcf/fonts.alias
	echo a20m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-1 >> pcf/fonts.alias
	echo 10x20rkb -kappa-fixed-bold-r-normal--20-190-75-75-c-100-jisx0201.1976-0 >> pcf/fonts.alias
	echo r20b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-jisx0201.1976-0 >> pcf/fonts.alias
	echo 10x20rkm -kappa-fixed-medium-r-normal--20-190-75-75-c-100-jisx0201.1976-0 >> pcf/fonts.alias
	echo r20m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-jisx0201.1976-0 >> pcf/fonts.alias
	echo -kappa-mincho-bold-r-normal--20-190-75-75-vc-200-jisx0208.1983-0 -kappa-mincho-bold-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-minchou-bold-r-normal--20-190-75-75-vc-200-jisx0208.1983-0 -kappa-mincho-bold-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-minchou-bold-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 -kappa-mincho-bold-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-fixed-bold-r-normal--20-190-75-75-vc-200-jisx0208.1983-0 -kappa-mincho-bold-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-fixed-bold-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 -kappa-mincho-bold-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo vk20b -kappa-fixed-bold-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-mincho-medium-r-normal--20-190-75-75-vc-200-jisx0208.1983-0 -kappa-mincho-medium-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-minchou-medium-r-normal--20-190-75-75-vc-200-jisx0208.1983-0 -kappa-mincho-medium-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-minchou-medium-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 -kappa-mincho-medium-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-fixed-medium-r-normal--20-190-75-75-vc-200-jisx0208.1983-0 -kappa-mincho-medium-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo -kappa-fixed-medium-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 -kappa-mincho-medium-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo vk20m -kappa-fixed-medium-r-normal--20-190-75-75-vc-200-jisx0208.1990-0 >> pcf/fonts.alias
	echo ipa-10x20m  -kappa-fixed-medium-r-normal--20-190-75-75-c-100-muleipa-1 >> pcf/fonts.alias
	echo ipa-10x20b  -kappa-fixed-bold-r-normal--20-190-75-75-c-100-muleipa-1 >> pcf/fonts.alias
	echo 10x20L2m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-2 >> pcf/fonts.alias
	echo 10x20L2b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-2 >> pcf/fonts.alias
	echo 10x20L3m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-3 >> pcf/fonts.alias
	echo 10x20L3b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-3 >> pcf/fonts.alias
	echo 10x20L4m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-4 >> pcf/fonts.alias
	echo 10x20L4b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-4 >> pcf/fonts.alias
	echo 10x20L5m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-9 >> pcf/fonts.alias
	echo 10x20L5b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-9 >> pcf/fonts.alias
	echo 10x20L6m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-10 >> pcf/fonts.alias
	echo 10x20L6b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-10 >> pcf/fonts.alias
	echo 10x20L7m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-13 >> pcf/fonts.alias
	echo 10x20L7b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-13 >> pcf/fonts.alias
	echo 10x20L8m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-14 >> pcf/fonts.alias
	echo 10x20L8b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-14 >> pcf/fonts.alias
	echo 10x20L9m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-15 >> pcf/fonts.alias
	echo 10x20L9b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-15 >> pcf/fonts.alias
	echo 10x20L10m -kappa-fixed-medium-r-normal--20-190-75-75-c-100-iso8859-16 >> pcf/fonts.alias
	echo 10x20L10b -kappa-fixed-bold-r-normal--20-190-75-75-c-100-iso8859-16 >> pcf/fonts.alias

install::
	test -d ${TARGETDIR} || mkdir ${TARGETDIR}
	install -m 644 -c pcf/*.pcf* pcf/fonts.alias ${TARGETDIR}

clean::
	rm -f *~ iso8859/*~ pcf/*.pcf* pcf/fonts.dir pcf/fonts.alias vk20m.bdf vk20b.bdf nk20?-?.bdf 10x20?.bdf 10x20L*.bdf vk20m.bdf.orig
