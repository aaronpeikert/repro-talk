STEM = repro-talk

all: $(STEM).pdf notes bright
notes: $(STEM)_withnotes.pdf
bright: $(STEM)_bright.pdf
clean:
	Ruby/clean.rb

$(STEM).pdf: $(STEM).tex header.tex Figs Figs/nutshell.pdf
	xelatex $<

$(STEM)_withnotes.pdf: $(STEM)_withnotes.tex header.tex Figs
	xelatex $(STEM)_withnotes
	pdfnup $(STEM)_withnotes.pdf --nup 1x2 --no-landscape --paper letterpaper --frame true --scale 0.9
	mv $(STEM)_withnotes-nup.pdf $(STEM)_withnotes.pdf

$(STEM)_withnotes.tex: $(STEM).tex Ruby/createVersionWithNotes.rb
	Ruby/createVersionWithNotes.rb $(STEM).tex $(STEM)_withnotes.tex

$(STEM)_bright.pdf: $(STEM)_bright.tex header.tex Figs
	xelatex $<

$(STEM)_bright.tex: $(STEM).tex Ruby/createVersionInBright.rb
	Ruby/createVersionInBright.rb $(STEM).tex $(STEM)_bright.tex

Figs/nutshell.pdf:
	wget -O $@ https://github.com/aaronpeikert/repro-tutorial/raw/main/images/nutshell.pdf
