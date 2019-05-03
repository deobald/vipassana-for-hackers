#!/bin/sh

OUT=../output

latexml --dest=paper-one.xml paper-one.tex
latexmlpost -dest=paper-one.html paper-one.xml
which ebook-convert
/usr/local/bin/ebook-convert
ebook-convert paper-one.html paper-one.epub --language en --output-profile=kindle --authors="Steven Deobald" --title="Vipassana for Hackers"
