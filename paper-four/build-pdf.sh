#!/bin/sh

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
LIBPATH="$SCRIPTPATH/../lib"
PATH=$PATH:$LIBPATH

OUT=../output

echo "Running pre-build. This takes a while..."
xelatex -output-directory=$OUT paper-four.tex # > /dev/null 2>&1
echo "...done. Now running the build."
xelatex -output-directory=$OUT paper-four.tex

rm -f texput.log $OUT/*.aux $OUT/*.log $OUT/*.out $OUT/*.tdo $OUT/*.bib
