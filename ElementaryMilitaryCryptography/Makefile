EPS_FILES = Chapter2_fig1.eps Chapter2_fig1Continued.eps Chapter2_Figure2.eps Chapter2_Figure3.eps Chapter2_Figure4.eps Chapter2_Figure4.eps Chapter2_Figure5.eps Chapter2_Figure6.eps Chapter2_Figure7.eps Chapter2_Figure8.eps Chapter3_FigB.eps Chapter3_FigC.eps Chapter3_Figure12.eps Chapter3_Figure13.eps Chapter3_Figure17b.eps Chapter3_Figure18.eps Chapter3_Figure19.eps Chapter3_Figure20.eps Chapter3_Figure21.eps Chapter4_UnnamedFigure.eps Chapter4_UnnamedFigure2.eps Chapter6_Figure1.eps Chapter6_Figure2.eps
PNG_FILES = $(EPS_FILES:=eps=png)

ElementaryMilitaryCryptography.pdf: ElementaryMilitaryCryptography.dvi
	dvipdf $<
ElementaryMilitaryCryptography.dvi: *.tex *.eps $(EPS_FILES)
	-latex -interaction batchmode ElementaryMilitaryCryptography.tex
	-latex -interaction batchmode ElementaryMilitaryCryptography.tex


%.eps: %.png
	convert $< eps:- > $@
