PAGES    := guide.html index.html palettes.html
TEMPLATE := template.html
STATIC   := $(PAGES) favicon.ico css/ images/ fonts/ gifs/ videos/ palettes/

build: $(PAGES)

%.html: %.md $(TEMPLATE)
	cmark --unsafe -t html $< | ./build $* $(TEMPLATE) > $@

publish:
	./publish $(STATIC)

clean:
	rm $(PAGES)

.PHONY: build publish clean
