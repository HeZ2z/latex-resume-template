LATEXMK := latexmk
TARGET ?= resume

.PHONY: build preview clean distclean

build:
	$(LATEXMK) $(TARGET).tex

preview:
	$(LATEXMK) -pvc $(TARGET).tex

clean:
	$(LATEXMK) -c $(TARGET).tex

distclean:
	$(LATEXMK) -C $(TARGET).tex
