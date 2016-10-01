-----------------------------------------------------------------------

- `yathesis` --- Yet Another Thesis Class, version 0.99m
- E-mail: `denis.bitouze@lmpa.univ-littoral.fr`
- Released under the LaTeX Project Public License v1.3c or later. See
  http://www.latex-project.org/lppl.txt

-----------------------------------------------------------------------

**The `yathesis` bundle provides a LaTeX class file to help to write a thesis
following French rules.**

The class is supplied in `.dtx` format. If you want to unpack the `.dtx`
yourself, running:

     pdftex yathesis.dtx

will extract the class whereas:

     pdflatex yathesis.dtx

will extract it and also typeset the documentation of the code.

Typesetting the documentation of the class requires:

- a number of packages in addition to those needed to use the `yathesis`
   classes.  To compile the documentation without error, you will need, among
   others, my personal (dirty) package `denisbdoc` for documenting the classes
   I've written.
- a complete `pdflatex` run of `these.tex` to be found in the
  `.../yathesis/doc/latex/yathesis/french/exemples/specimen/a-plat` directory,
  with `yathesis-demo` package load at first place. If `latexmk` is available,
  it is easier to run:

        latexmk -f -pdf -jobname=these -pdflatex= \
        "pdflatex %O '\RequirePackage{etoolbox}\AtEndPreamble{\RequirePackage{yathesis-demo}}\input{%S}'" these.tex

- to run `pdflatex` on `yathesis.tex` to be found in the
   `.../yathesis/doc/latex/yathesis/documentation/french` directory. If
   `latexmk` is available, it is easier to run:

        latexmk yathesis.tex
