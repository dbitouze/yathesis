# [Unreleased]

# [1.0.3] - 2020-06-16

## Changed

- Documentation revised.
- Specimens improved.
- Package `titlesec` used intead of `titleps`: possible (hopefully slight) layout discrepancies.

## Fixed
- Bug gh #74 (https://git.io/Jf64U).
- Bug gh #65 (https://git.io/Jf64k), continuation and (?) ending.

# [1.0.2] - 2020-04-13

## Changed

- Specimens now highlight the automatic local tocs and local bibs features of
  the class.
- Verso of the asbtract page now with empty footer.
- Completion file for TeXstudio improved and updated.

## Fixed
- Switches between pages styles robustified.
- Bug #65 now for bibtex as well.
- French rules were applied to glossaries and acronyms even in case of
  `mainlanguage=english`.
- Subtitles were too close to multiline titles.

# [1.0.1] - 2020-03-28

## Changed
- Documentation revised.
- Specimens improved.

## Fixed
- Bug gh #73.


# [1.0.0] - 2020-03-26

## Added
- (Partial) CHANGELOG file (following https://keepachangelog.com/en/1.0.0/).
- Semantic versionning (following https://semver.org/).
- Colophon automatically added to the thesis, with possibility to:
   - remove it,
   - change:
     - its location from 2nd cover to 3rd one,
     - its content.

## Changed
- `\disclaimer` replaced by (and alias of) `\disclaimertext`.
- Warnings and error messages now contain (expected) accented characters.

## Fixed
- Several bug fixes (among others gh #65 and #67).


# [0.99u] - 2019-03-28

## Added
- `\maketitle` option `noaim` for (slight) customization of the title pages.
- `\institute`, `\coinstitute` and `\company` option `nologo` for (slight)
  customization of the title pages (gh #51).

## Changed
- Documentation revised and extended.
- Key expressions "Titre de la thèse" and "Titre de l’habilitation à diriger les
  recherches" (and English equivalents) now empty.
- Key expression "Directeurs" (and English equivalent) introducing the list of
  the "HDR" directors now replaced by "Habilitation dirigée par" (and English
  equivalent).
- Options `noinstitute`, `nodoctoralschool`, `nolaboratory`, `nodate`,
  `noacademicfield`: now turn off on title pages the display of the
  corresponding elements (as well as the co-institute for `noinstitute` and
  specialty for `noacademicfield`).
- On the title page (s) in French, automatic gender agreement in expressions
  keys introducing the groups member of the committee.

## Removed
- Useless warning from `iflang` package.

## Fixed
- Several bug fixes (among others gh #43).


# [0.99t] - 2018-07-09

## Fixed
- Several bug fixes.


# [0.99s] - 2018-06-22

## Fixed
- Several bug fixes (among others gh #58 and #60).


# [0.99s] - 2018-06-21

## Fixed
- Several bug fixes (among others gh #59).


# [0.99r] - 2018-06-02

## Fixed
- Several bug fixes.


# [0.99q] - 2018-05-04

## Removed
- Useless files on CTAN (no functional changes).


# [0.99q] - 2018-04-10

## Fixed
- Several bug fixes (among others gh #57).


# [0.99p] - 2016-12-08

## Added
- `\chapter` and `\section` have an extra optional argument for an alternative
  title in header different from the one in the ToC.
- Simplification of the use of all starred structuring commands (their
  substructuring commands don't need to be starred).

## Changed
- Documentation revised and extended.


# [0.99o] - 2016-10-30

## Added
- Automatic local (by chapter) tables of contents (thanks to Jean-François
  Burnol's etoc and help): option `localtocs` (gh #45).
- Automatic local (by chapter) bibliographies: option `localbibs`.

## Changed
- Documentation revised and revised and extended. (index of concepts).
- English translation of "MCF" ("Associate Professor" instead of "Lecturer").

## Removed
- Useless warning from `iflang` package.

## Fixed
- Several bug fixes.


# [0.99n] - 2016-06-11

## Changed
- Documentation revised and extended.
- Reorganization and change of names of specimens and templates.


# [0.99m] - 2016-05-22

## Added
- Documentation can be compiled with `pdflatex`.
- Specimens and templates included in the PDF of the documentation as `.zip`
  archive.


## Changed
- Documentation revised and extended.
- Reorganization and change of names of specimens and templates.


# [0.99l] - 2014-10-23

## Changed
- Documentation revised and extended.
- Reorganization and change of names of specimens and templates.

# [0.99k] - 2014-10-01

## Added
- Macro \submissiondate

## Changed
- Documentation revised and extended.
- Page numbers on first page of each chapters (with numberred pages).

## Removed
- Class option `bookmark`.

## Fixed
- Several bug fixes.


# [0.99j] - 2014-07-18

## Added
- Initial CTAN release of the `yathesis` class (2014-07-27).
