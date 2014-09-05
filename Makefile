TEX = magazine.cls 
TEX += logo/chbz.png
TEX += logo/GitHub.png logo/linuxpowered.png 
TEX += logo/OpenHardware.png 

TEX += N00.tex logo/trolley.jpg

N00.pdf: $(TEX)
	pdflatex N00.tex
	pdflatex N00.tex
	rm -f *.toc *.aux *.out *.log