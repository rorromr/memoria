MAIN_FILE = memoria

compile:
	rubber -d $(MAIN_FILE).tex
	mv $(MAIN_FILE).pdf _$(MAIN_FILE).pdf
	mv $(MAIN_FILE).tex _$(MAIN_FILE).tex
	rm -f $(MAIN_FILE).*
	mv _$(MAIN_FILE).tex $(MAIN_FILE).tex
	mv _$(MAIN_FILE).pdf $(MAIN_FILE).pdf
	rm -f *.aux
