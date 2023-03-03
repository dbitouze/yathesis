# [Unreleased]

# [1.0.11] - 2023-02-24

## Changed
- Some internals for future releases of `etoc` (thanks to Jean-François Burnol).

## Fixed
- Typos in the documentation (thanks to kitanokuma).

# [1.0.10] - 2022-06-13

## Added
- (Far to perfect) Documentation of the code available as a PDF file.

## Changed
- Complete reworked of the `.dtx` source file in order to provide the documented code as a PDF file.

## Fixed
- Bug gh #91 (https://git.io/JMrK8).
- Bug gh #92 (https://github.com/dbitouze/yathesis/issues/92).

# [1.0.9] - 2021-10-13

## Fixed
- Bug gh #90 (https://git.io/JKO3L).
- Bug gh #87 (https://git.io/JKO3Z).
- Bug gh #86 (https://git.io/JKO3W).

# [1.0.8] - 2021-07-13

## Fixed
- Bug gh #85 (https://git.io/JCTjv).
- Bug gh #84 (https://git.io/JCTpu).
- Bug gh #83 (https://git.io/JYfz8).

## Changed
- The fix of #85 above renders ineffective the `\includeonly` command when the
  option `\localbibs` is used. This is an incompatible change but only for
  a command that is used only temporarily, so we don't increment the major
  version number.
- Again expose `\listoflistings` in the samples.

# [1.0.7] - 2021-03-24

## Removed
- Useless and confusing file in the samples removed (no functional changes).

## Changed
- Don't expose `\listoflistings` in the samples (bug gh #83,
  https://git.io/JYfz8).

# [1.0.6] - 2021-03-23

## Added
- Command allowing, for each chapter, to specify a text inserted between its
  head and its possible automatic local table of contents (issue gh #82,
  https://git.io/JYeVe).

## Changed
- Table listing the members of the committee:
  - with \textwidth as width,
  - with  3 and not 4 columns in case president is not specified.
- Documentation revised.

## Fixed
- Bug gh #81 (https://git.io/JYeVY).

# [1.0.5] - 2021-02-05

## Changed
- The class now relies on the new LaTeX core hooks.
- Documentation revised.

## Fixed
- Setting the main language was not taken into account by some packages
  (e.g. `csquotes`).

# [1.0.4] - 2020-10-14

## Changed
- Documentation revised.
- The class now relies on `datetime2` and not on `datetime`.

## Fixed
- Bug gh #76 (https://git.io/JTTpX).
- Bug gh #77 (https://git.io/JTTpu).
- Bug gh #78 (https://git.io/JTTpQ).

# [1.0.3] - 2020-06-16

## Changed
- Documentation revised.
- Specimens improved.
- Package `titlesec` used instead of `titleps`: possible (hopefully slight) layout discrepancies.

## Fixed
- Bug gh #74 (https://git.io/Jf64U).
- Bug gh #65 (https://git.io/Jf64k), continuation and (hopefully) ending.

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
