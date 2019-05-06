
build: output/paper-one.pdf output/paper-one.epub \
       output/paper-four.pdf

output/paper-one.pdf:
	cd paper-one && ./build-pdf.sh

output/paper-one.epub:
	cd paper-one && ./build-epub.sh

output/paper-four.pdf:
	cd paper-four && ./build-pdf.sh

clean:
	rm -f output/*.pdf output/*.epub
