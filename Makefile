LATEXMK = latexmk
RM = rm -r -f

main:
	$(LATEXMK) -pdf  main.tex

clean:
	$(LATEXMK) -silent -C
	$(RM) *.flg *.glo *.maf *.run.xml main.mtc*