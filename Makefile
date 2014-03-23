# resume builder
TMPFILE = $(shell mktemp -u /tmp/XXXXX)
PREAMBLE_tex  = preamble.tex
EDUCATION_tex = education.tex
ACADEMIC_tex  = academic.tex
INDUSTRY_tex  = industry.tex
POSTAMBLE_tex = postamble.tex

all: academic industry 


academic: 
	cat $(PREAMBLE_tex) $(EDUCATION_tex) $(ACADEMIC_tex) $(POSTAMBLE_tex) >> academic_final.tex
	pdflatex academic_final.tex


industry: 
	cat $(PREAMBLE_tex) $(EDUCATION_tex) $(INDUSTRY_tex) $(POSTAMBLE_tex) >> industry_final.tex
	pdflatex industry_final.tex


	


