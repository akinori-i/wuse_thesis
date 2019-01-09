RM = rm -f
PLATEX = platex
DVI2PDF = dvipdfmx

########################################################################

all:	thesis_sample.pdf master_sample.pdf

thesis_sample.pdf:	thesis_sample.tex wuse_thesis.sty
	${RM} thesis_sample.aux
	${RM} thesis_sample.dvi
	${RM} thesis_sample.log
	${RM} thesis_sample.toc
	${PLATEX} thesis_sample.tex
	${PLATEX} thesis_sample.tex
	${PLATEX} thesis_sample.tex
	${DVI2PDF} thesis_sample.dvi

master_sample.pdf:	master_sample.tex wuse_thesis.sty
	${RM} master_sample.aux
	${RM} master_sample.dvi
	${RM} master_sample.log
	${PLATEX} master_sample.tex
	${DVI2PDF} master_sample.dvi

########################################################################

clean::
	${MAKE} thesis-clean
	${MAKE} master-clean

thesis-clean::
	${RM} thesis_sample.aux
	${RM} thesis_sample.dvi
	${RM} thesis_sample.log
	${RM} thesis_sample.toc

master-clean::
	${RM} master_sample.aux
	${RM} master_sample.dvi
	${RM} master_sample.log
