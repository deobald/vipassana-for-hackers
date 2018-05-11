# Vipassana for Hackers

A document version of the talk "[Vipassana for Hackers](https://www.youtube.com/watch?v=1BWYqHbF00c)" by Steven Deobald ([GitHub: @deobald](https://github.com/deobald), [Twitter: @deobald](https://twitter.com/deobald).

epub version of the LaTeX generated with the following procedure on macOS 10.13.4

```sh
$ git clone https://github.com/deobald/vipassana-for-hackers
$ brew install latexml
$ brew install caskroom/cask/calibre
$ cd vipassana-for-hackers
$ latexml --dest=vipassana-for-hackers.xml vipassana-for-hackers.tex
$ latexmlpost -dest=vipassana-for-hackers.html vipassana-for-hackers.xml
$ which ebook-convert
/usr/local/bin/ebook-convert
$ ebook-convert vipassana-for-hackers.html vipassana-for-hackers.epub --language en --output-profile=kindle --authors="Steven Deobald" --title="Vipassana for Hackers"
```
