EPS_FILES = 
PNG_FILES = $(EPS_FILES:=eps=png)

AdvancedMilitaryCryptography.pdf: AdvancedMilitaryCryptography.dvi
	dvipdf $<
AdvancedMilitaryCryptography.dvi: *.tex $(EPS_FILES)
	-latex -interaction batchmode AdvancedMilitaryCryptography.tex
	-latex -interaction batchmode AdvancedMilitaryCryptography.tex


%.eps: %.png
	convert $< eps:- > $@
