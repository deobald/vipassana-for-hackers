#!/bin/sh

# pdflatex was used originally but cannot render Sanskrit without a lot of hoop-jumping
# pdflatex vipassana-for-hackers.tex

# xelatex is apparently less capable than pdflatex at font-rendering in general, but
# is capable of rendering non-Latin fonts (like Hindi/Sanskrit) by default

# Compile twice to resolve references.

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
LIBPATH="$SCRIPTPATH/../lib"
PATH=$PATH:$LIBPATH

echo "Running bibliography pre-build. This takes a while..."
xelatex the-proposal.tex > /dev/null 2>&1
echo "Generating bibliography..."
bibtex the-proposal.aux
read -p "Press enter to continue"

echo "Running PDF pre-build. This takes a while..."
xelatex the-proposal.tex > /dev/null 2>&1
echo "...done. Now running the PDF build."
xelatex the-proposal.tex

mv the-proposal.pdf ../output/the-proposal.pdf
