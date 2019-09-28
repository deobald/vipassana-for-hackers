#!/bin/sh

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
LIBPATH="$SCRIPTPATH/../lib"
PATH=$PATH:$LIBPATH

OUT=../output

latexml --dest=paper-two.xml paper-two.tex
latexmlpost -dest=paper-two.html paper-two.xml

# which ebook-convert
# /usr/local/bin/ebook-convert

ebook-convert paper-two.html ../output/paper-two.epub --language en --output-profile=kindle --authors="Steven Deobald" --title="Vipassana for Hackers"

rm -f paper-two.xml paper-two.html LaTeXML.cache LaTeXML.css ltx-article.css
