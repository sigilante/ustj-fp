# KnowhutImean?
TARGET = mss
BIBFILE = mss

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).tex $(BIBFILE).bib
	xelatex -interaction=nonstopmode $(TARGET)
	/usr/bin/biber $(TARGET)
	xelatex -interaction=nonstopmode $(TARGET)
	xelatex -interaction=nonstopmode $(TARGET)

clean:
	rm -f $(TARGET).pdf *.aux *.bbl *.blg *.log *.out *.toc *.bcf *run.xml

.PHONY: all clean
