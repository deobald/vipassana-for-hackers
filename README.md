# Vipassana for Hackers

A document version of the talk "[Vipassana for Hackers](https://www.youtube.com/watch?v=1BWYqHbF00c)" by Steven Deobald ([GitHub](https://github.com/deobald), [Twitter](https://twitter.com/deobald)).

---

## PDF Generation

On a Mac, the easiest option is installing [MacTeX](https://tug.org/mactex/mactex-download.html). It's also possible to install only the required packages but that process has been abandoned for this project. Once you have MacTeX installed, clone the repo and run the build script:

```sh
$ git clone https://github.com/deobald/vipassana-for-hackers
$ cd vipassana-for-hackers
$ ./build.sh
```

You will see many warnings but you shouldn't see any errors.

---

## EPUB Generation

The epub version of the LaTeX was generated with the following procedure on macOS 10.13.4 (also tested on 10.10.5):

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

