# Vipassana for Hackers

A document version of the talk
"[Vipassana for Hackers](https://www.youtube.com/watch?v=1BWYqHbF00c)"
by Steven Deobald ([GitHub](https://github.com/deobald),
[Twitter](https://twitter.com/deobald)).

---

## TODO

- [ ] tex4ebook vs. LaTeXML?
- [ ] Preethi to format references in Paper Two
- [ ] Transcribe Paper Three and Paper Four notes
- [ ] Invert brain diagram colours for Paper One
- [x] Create output directory
- [x] Script epub generation
- [x] Add a Makefile
- [x] Switch Paper One 70-minute (children's) Anapana to 20-minute (adult)
- [x] Test epub gen, add to makefile, add full build target

---

## Setup

### Linux:

```
sudo apt install texlive-full
sudo apt install fonts-deva-extra
sudo apt install latexml
sudo apt install calibre
sudo apt install tidy
sudo apt install graphicsmagick graphicsmagick-dbg # optional
```

### Mac:

* Install MacTeX: https://www.tug.org/mactex/mactex-download.html
* For EPUB builds, you'll need:

```
brew install latexml
brew install caskroom/cask/calibre
brew install graphicsmagick # optional
```

---

## Generate the Papers

Clone and make:

```sh
$ git clone https://github.com/deobald/vipassana-for-hackers
$ cd vipassana-for-hackers
$ make clean && make
```

---

## PDF Generation

On a Mac, the easiest option is installing [MacTeX](https://tug.org/mactex/mactex-download.html). It's also possible to install only the required packages but that process has been abandoned for this project. Once you have MacTeX installed, clone the repo and run each paper's build script:

```sh
$ git clone https://github.com/deobald/vipassana-for-hackers
$ cd vipassana-for-hackers/paper-one
$ ./build-pdf.sh
$ cd vipassana-for-hackers/paper-two
$ ./build-pdf.sh
```

You will see many warnings but you shouldn't see any errors.

---

## EPUB Generation

The epub version of the LaTeX was generated with the following procedure on macOS 10.10.5 and 10.13.4. Each script builds an epub for one paper at a time.

```sh
git clone https://github.com/deobald/vipassana-for-hackers
brew install latexml
brew install caskroom/cask/calibre
brew install graphicsmagick # optional
cd vipassana-for-hackers/paper-one
./build-epub.sh
cd vipassana-for-hackers/paper-two
./build-epub.sh # will produce an ignorable error: Unknown option `reprint'
```
