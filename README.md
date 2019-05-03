# Vipassana for Hackers

A document version of the talk "[Vipassana for Hackers](https://www.youtube.com/watch?v=1BWYqHbF00c)" by Steven Deobald ([GitHub](https://github.com/deobald), [Twitter](https://twitter.com/deobald)).

---

## Generate the Papers

On a Mac, install MacTeX, LaTeXML, and Calibre as instructed below. (Linux should be similar.) Clone and make:

```sh
$ git clone https://github.com/deobald/vipassana-for-hackers
$ cd vipassana-for-hackers
$ make
```

---

## PDF Generation

On a Mac, the easiest option is installing [MacTeX](https://tug.org/mactex/mactex-download.html). It's also possible to install only the required packages but that process has been abandoned for this project. Once you have MacTeX installed, clone the repo and run each paper's build script:

```sh
$ git clone https://github.com/deobald/vipassana-for-hackers
$ cd vipassana-for-hackers/paper-one
$ ./build-pdf.sh
```

You will see many warnings but you shouldn't see any errors.

---

## EPUB Generation

The epub version of the LaTeX was generated with the following procedure on macOS 10.10.5 and 10.13.4. Each script builds an epub for one paper at a time.

```sh
$ git clone https://github.com/deobald/vipassana-for-hackers
$ brew install latexml
$ brew install caskroom/cask/calibre
$ cd vipassana-for-hackers/paper-one
$ ./build-epub.sh
```

## TODO

- [x] Create output directory
- [x] Script epub generation
- [x] Add a Makefile
- [ ] Test epub gen, add to makefile, add full build target
- [ ] Invert brain diagram colours for Paper One
