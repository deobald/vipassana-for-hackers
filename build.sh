#!/bin/sh

# pdflatex was used originally but cannot render Sanskrit without a lot of hoop-jumping
# pdflatex vipassana-for-hackers.tex

# xelatex is apparently less capable than pdflatex at font-rendering in general, but
# is capable of rendering non-Latin fonts (like Hindi/Sanskrit) by default

xelatex vipassana-for-hackers.tex

