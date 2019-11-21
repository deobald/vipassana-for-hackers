#!/bin/sh

# pdflatex was used originally but cannot render Sanskrit without a lot of hoop-jumping
# pdflatex vipassana-for-hackers.tex

# xelatex is apparently less capable than pdflatex at font-rendering in general, but
# is capable of rendering non-Latin fonts (like Hindi/Sanskrit) by default

# Compile twice to resolve references.

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
LIBPATH="$SCRIPTPATH/../lib"
PATH=$PATH:$LIBPATH

OUT=../output

echo "Running pre-build. This takes a while..."
xelatex -output-directory=$OUT paper-two.tex > /dev/null 2>&1
echo "...done. Now running the build."
xelatex -output-directory=$OUT paper-two.tex

rm -f texput.log $OUT/*.aux $OUT/*.log $OUT/*.out $OUT/*.tdo $OUT/*.bib
