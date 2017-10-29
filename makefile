FLAGS = -S --epub-cover-image=cover.png

s-town.epub : source/*
	pandoc $(FLAGS) -o $@ $^

.PHONY: mobi
mobi: s-town.mobi

s-town.mobi : s-town.epub
	kindlegen $^

.PHONY: clean
clean :
	rm s-town.*
