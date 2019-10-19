#!/bin/sh

SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"
LIBPATH="$SCRIPTPATH/../lib"
PATH=$PATH:$LIBPATH

OUT=../output

latexml --dest=paper-one.xml paper-one.tex
latexmlpost -dest=paper-one.html paper-one.xml

# which ebook-convert
# /usr/local/bin/ebook-convert

ebook-convert paper-one.html ../output/paper-one.epub --language en --output-profile=kindle --authors="Steven Deobald" --series="Vipassana for Hackers" --title="Paper One: Curious Mechanics" --no-default-epub-cover

rm -f paper-one.xml paper-one.html LaTeXML.cache LaTeXML.css ltx-article.css
