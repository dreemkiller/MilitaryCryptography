EPS_FILES = Chapter2_fig1.eps Chapter2_fig1Continued.eps Chapter2_Figure2.eps Chapter2_Figure3.eps Chapter2_Figure4.eps Chapter2_Figure4.eps Chapter2_Figure5.eps Chapter2_Figure6.eps Chapter2_Figure7.eps Chapter2_Figure8.eps Chapter3_FigB.eps Chapter3_FigC.eps Chapter3_Figure12.eps Chapter3_Figure13.eps
PNG_FILES = $(EPS_FILES:=eps=png)

ElementaryMilitaryCryptography.pdf: ElementaryMilitaryCryptography.dvi
	dvipdf $<
ElementaryMilitaryCryptography.dvi: *.tex *.eps $(EPS_FILES)
	-latex -interaction batchmode ElementaryMilitaryCryptography.tex
	-latex -interaction batchmode ElementaryMilitaryCryptography.tex


%.eps: %.png
	convert $< eps:- > $@
