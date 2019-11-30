
build: output/paper-one.pdf output/paper-one.epub \
       output/paper-two.pdf output/paper-two.epub \
       output/paper-three.pdf \
       output/paper-four.pdf \
       output/the-proposal.pdf

output/paper-one.pdf:
	cd paper-one && ./build-pdf.sh

output/paper-one.epub:
	cd paper-one && ./build-epub.sh

output/paper-two.pdf:
	cd paper-two && ./build-pdf.sh

output/paper-two.epub:
	cd paper-two && ./build-epub.sh

output/paper-three.pdf:
	cd paper-three && ./build-pdf.sh

output/paper-four.pdf:
	cd paper-four && ./build-pdf.sh

output/the-proposal.pdf:
	cd the-proposal && ./build-pdf.sh

clean:
	rm -f output/*.pdf output/*.epub
    rm -f texput.log output/*.aux output/*.log output/*.out output/*.tdo output/Notes*.bib
	rm -f the-proposal/*.aux the-proposal/*.log the-proposal/*.out the-proposal/*.tdo the-proposal/*Notes.bib
