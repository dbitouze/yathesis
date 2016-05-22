%%
%% This is file `yathesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% yathesis.dtx  (with options: `class')
%% -----------------------------------------------------------------------
%% yathesis --- Yet Another Thesis Class
%% E-mail: denis.bitouze@lmpa.univ-littoral.fr
%% Released under the LaTeX Project Public License v1.3c or later
%% See http://www.latex-project.org/lppl.txt
%% -----------------------------------------------------------------------
\def\fileversion{v0.99m}
\def\filedate{2016/05/22}
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{yathesis}[\filedate\space\fileversion\space Yet another class for writing thesis (DB)]
\RequirePackage{pgfopts}[2011/06/02]%
\RequirePackage{etoolbox}[2011/01/03]%
\RequirePackage{xpatch}[2012/10/02]%
\AtEndPreamble{%
  \RequirePackage{morewrites}%
}%
\RequirePackage{filehook}[2011/10/12]%
\RequirePackage{hopatch}[2012/05/28]%
\RequirePackage{xifthen}[2009/04/17]%
\newbool{YAD@cosupervisor@or@comonitor}
\newbool{YAD@inprogress@work@star}
\newbool{YAD@inprogress@work}
\newbool{YAD@submitted@work}
\newbool{YAD@submitted@work@star}
\newbool{YAD@final@work}
\newbool{YAD@draft}
\newbool{YAD@output@paper}
\newbool{YAD@output@paper@star}
\newbool{YAD@in@footnote}
\newbool{YAD@second@title}
\newbool{YAD@second@abstract}
\newbool{YAD@maketitle@used}
\newbool{YAD@keywords@used}
\newbool{YAD@introduction@used}
\newbool{YAD@introduction@empty}
\newbool{YAD@conclusion@used}
\newbool{YAD@conclusion@empty}
\newbool{YAD@makeabstract@used}
\newbool{YAD@second@abstract@used}
\newbool{YAD@abstract@used}
\newbool{YAD@main@abstract@empty}
\newbool{YAD@second@abstract@empty}
\newbool{YAD@tableofcontents@used}
\newbool{YAD@printbibliography@used}
\newbool{YAD@two@titles}
\newbool{YAD@cover@page}
\newbool{YAD@supervisor@specified}
\newbool{YAD@symbols@isolated}
\newbool{YAD@logo@before}
\newbool{YAD@valid@day}
\newbool{YAD@valid@month}
\newbool{YAD@valid@year}
\newbool{YAD@mainmatter@used}
\newlength{\cmdKV@YAD@logoheight}
\newlength{\YAD@max@logoheight}
\newlength{\YAD@default@logoheight}
\newlength{\YAD@titleboxheight}%
\newlength{\YAD@titleboxwidth}%
\newlength{\YAD@otherboxheight}%
\newlength{\YAD@laboratory@width}%
\setlength\YAD@default@logoheight{1.5cm}%
\setlength\cmdKV@YAD@logoheight{\YAD@default@logoheight}%
\setlength\YAD@max@logoheight{\cmdKV@YAD@logoheight}%
\newsavebox{\YAD@titlebox}%
\newsavebox{\YAD@beforetitlebox}%
\newsavebox{\YAD@aftertitlebox}%
\newsavebox{\YAD@abstract@mainlanguage}%
\newsavebox{\YAD@abstract@secondarylanguage}%
\newcounter{YAD@abstracts}%
\newcounter{YAD@warnings}%
\setcounter{YAD@abstracts}{0}%
\setcounter{YAD@warnings}{0}%
\def\YAD@mainlanguage{french}%
\def\YAD@secondarylanguage{english}%
\def\YAD@tocdepth{subsection}%
\def\YAD@secnumdepth{subsection}%
\def\YAD@mainkeywords{\YAD@generic@argument@translate{keywords}}%
\def\YAD@secondarykeywords{\YAD@generic@argument@translate{keywords}}%
\def\YAD@global@sepcorpaffil@french{}%
\def\YAD@global@sepcorpaffil@english{}%
\def\cmdKV@YAD@frametitle{fbox}%
\newcommand{\YAD@generic@text}{%
  Un texte generique risque d'etre affiche a la place.\MessageBreak%
}%
\newcommand{\YAD@quiet@text}[1]{%
  Pour ne plus etre importune par la presente erreur,\MessageBreak%
  on peut passer l'option\MessageBreak%
  \space\space`#1'\MessageBreak%
  a la classe `yathesis', mais cela peut serieusement\MessageBreak%
  alterer son fonctionnement : option a utiliser\MessageBreak%
  \space\space\space\space/a ses risques et perils !/%
}%
\newcommand{\YAD@extra@help@text}{%
  \MessageBreak%
  Consulter la documentation de la classe `yathesis'\MessageBreak%
  pour plus de precisions.%
}%
\newcommand{\YAD@ClassError}{\@ifstar{\@tempswatrue\@YAD@ClassError}{\@tempswafalse\@YAD@ClassError}}
\newcommand{\@YAD@ClassError}[3][]{%
  \ifbool{YAD@noerror}{%
  }{%
    \ifboolexpr{%
      bool {YAD@inprogress@work}%
      or bool {YAD@inprogress@work@star}%
      or bool {YAD@draft}%
      or bool {YAD@noerror}%
    }{%
    }{%
      \ifthenelse{\isempty{#1}}{%
        \ClassError{yathesis}{%
          #2%
        }{%
          #3%
          \MessageBreak
          \if@tempswa%
          \else%
          \YAD@generic@text%
          \fi%
          \YAD@extra@help@text%
        }%
      }{%
        \ClassError{yathesis}{%
          #2%
        }{%
          #3%
          \MessageBreak
          \if@tempswa%
          \else%
          \YAD@generic@text%
          \fi%
          \YAD@quiet@text{#1}%
          \YAD@extra@help@text%
        }%
      }%
    }%
  }%
}%
\newcommand{\YAD@ClassWarningNoLine}[1]{%
  \ifboolexpr{%
    bool {YAD@inprogress@work}%
    or bool {YAD@inprogress@work@star}%
    or bool {YAD@draft}%
    or bool {YAD@nowarning}%
  }{%
    \stepcounter{YAD@warnings}%
  }{%
    \ClassWarningNoLine{yathesis}{%
      #1%
    }%
  }%
}%
\pgfkeys{/yad/.is family}
\pgfkeys{/yad/.cd}
\def\yadsetup{\pgfqkeys{/yad}}
\newcommand{\YAD@create@boolean}[1]{%
  % \yadsetup{#1/.is if = #1}
  \newbool{YAD@#1}%
  \yadsetup{%
    #1/.is choice,
    #1/true/.code={%
      \booltrue{YAD@#1}%
    },
    #1/false/.code={%
      \boolfalse{YAD@#1}%
    },
    #1/.initial=false,
    #1/.default=true,
  }%
  % }{%
  %   \ClassWarningNoLine{yathesis}{%
  %     Valeur passee a la cle `#1' non valide :\MessageBreak%
  %     cette valeur ne peut etre que `true' ou `false'%
  %   }%
  % }%
}%
\YAD@create@boolean{nonamelink}%
\YAD@create@boolean{noerror}%
\YAD@create@boolean{nowarning}%
\YAD@create@boolean{noauthor}%
\YAD@create@boolean{notitle}%
\YAD@create@boolean{noacademicfield}%
\YAD@create@boolean{nodate}%
\YAD@create@boolean{noinstitute}%
\YAD@create@boolean{nodoctoralschool}%
\YAD@create@boolean{nolaboratory}%
\YAD@create@boolean{nolaboratoryadress}%
\YAD@create@boolean{nosupervisor}%
\YAD@create@boolean{nomaketitle}%
\YAD@create@boolean{nokeywords}%
\YAD@create@boolean{noabstract}%
\YAD@create@boolean{nomakeabstract}%
\YAD@create@boolean{notableofcontents}%
\YAD@create@boolean{noprintbibliography}%
\YAD@create@boolean{nofrontcover}%
\YAD@create@boolean{hdr}%
\yadsetup{noerror=true}%
\booltrue{YAD@cover@page}%
\YAD@create@boolean{nologo}%
\YAD@create@boolean{professor}%
\YAD@create@boolean{mcf}%
\YAD@create@boolean{mcf*}%
\YAD@create@boolean{juniorresearcher}%
\YAD@create@boolean{juniorresearcher*}%
\YAD@create@boolean{seniorresearcher}%
\YAD@create@boolean{male}%
\YAD@create@boolean{female}%
\yadsetup{%
  nologo=false,%
  professor=false,%
  mcf=false,%
  mcf*=false,%
  juniorresearcher=false,%
  juniorresearcher*=false,%
  seniorresearcher=false,%
  male=true,%
  female=false,%
}%
\yadsetup{%
  version/.is choice,%
  version/draft/.code={%
    \booltrue{YAD@draft}%
    \boolfalse{YAD@inprogress@work}%
    \boolfalse{YAD@inprogress@work@star}%
    \boolfalse{YAD@submitted@work}%
    \boolfalse{YAD@submitted@work@star}%
    \boolfalse{YAD@final@work}%
    \ifthenelse{\equal{\@classoptionslist}{}}{%
      \edef\@classoptionslist{draft}%
    }{%
      \edef\@classoptionslist{\@classoptionslist,draft}%
    }%
  },%
  version/inprogress/.code={%
    \boolfalse{YAD@draft}%
    \booltrue{YAD@inprogress@work}%
    \boolfalse{YAD@inprogress@work@star}%
    \boolfalse{YAD@submitted@work}%
    \boolfalse{YAD@submitted@work@star}%
    \boolfalse{YAD@final@work}%
  },%
  version/inprogress*/.code={%
    \boolfalse{YAD@draft}%
    \boolfalse{YAD@inprogress@work}%
    \booltrue{YAD@inprogress@work@star}%
    \boolfalse{YAD@submitted@work}%
    \boolfalse{YAD@submitted@work@star}%
    \boolfalse{YAD@final@work}%
  },%
  version/submitted/.code={%
    \boolfalse{YAD@nowarning}%
    \boolfalse{YAD@noerror}%
    \boolfalse{YAD@nowarning}%
    \boolfalse{YAD@noerror}%
    \boolfalse{YAD@draft}%
    \boolfalse{YAD@inprogress@work}%
    \boolfalse{YAD@inprogress@work@star}%
    \booltrue{YAD@submitted@work}%
    \boolfalse{YAD@submitted@work@star}%
    \boolfalse{YAD@final@work}%
  },%
  version/submitted*/.code={%
    \boolfalse{YAD@nowarning}%
    \boolfalse{YAD@noerror}%
    \boolfalse{YAD@draft}%
    \boolfalse{YAD@inprogress@work}%
    \boolfalse{YAD@inprogress@work@star}%
    \boolfalse{YAD@submitted@work}%
    \booltrue{YAD@submitted@work@star}%
    \boolfalse{YAD@final@work}%
  },%
  version/final/.code={%
    \boolfalse{YAD@nowarning}%
    \boolfalse{YAD@noerror}%
    \boolfalse{YAD@draft}%
    \boolfalse{YAD@inprogress@work}%
    \boolfalse{YAD@inprogress@work@star}%
    \boolfalse{YAD@submitted@work}%
    \boolfalse{YAD@submitted@work@star}%
    \booltrue{YAD@final@work}%
  },%
  version/.initial=final%
}%
\yadsetup{version=inprogress}%
\yadsetup{%
  output/.is choice,%
  output/paper/.code={\booltrue{YAD@output@paper}},%
  output/paper*/.code={%
    \booltrue{YAD@output@paper}%
    \booltrue{YAD@output@paper@star}%
  },%
  output/screen/.code={},%
  output/.initial=screen%
}%
\def\YAD@interligne{single}%
\yadsetup{%
  space/.is choice,%
  space/single/.code={\def\YAD@interligne{single}},%
  space/onehalf/.code={\def\YAD@interligne{onehalf}},%
  space/double/.code={\def\YAD@interligne{double}},%
  space/.initial=single%
}%
\yadsetup{%
  mainlanguage/.store in=\YAD@mainlanguage,%
  secnumdepth/.store in=\YAD@secnumdepth,%
  sepcorpaffilfrench/.store in=\YAD@global@sepcorpaffil@french,%
  sepcorpaffilenglish/.store in=\YAD@global@sepcorpaffil@english,%
  % frametitle/.store in=\cmdKV@YAD@frametitle,%
  chap-style/.code={%
    \def\YAD@fncychapstyle{#1}%
    \PassOptionsToPackage{#1}{fncychap}%
  },%
}%
\yadsetup{fncychap/.style={chap-style=#1}}
\yadsetup{%
  sepcorpaffilenglish={\ at\ },%
  chap-style=PetersLenny,%
}%
\PassOptionsToPackage{a4paper}{geometry}%
\PassOptionsToPackage{nodayofweek}{datetime}%
\PassOptionsToPackage{export}{adjustbox}%
\PassOptionsToPackage{numbered}{bookmark}%
\PassOptionsToPackage{%
  final,%
  unicode,%
  hyperfootnotes=false,%
  hyperindex=false,%
  plainpages=false,%
  breaklinks,%
  pdfpagemode=UseOutlines,%
  pdfpagelayout=TwoPageRight%
}{hyperref}%
\yadsetup{%
  graphicx/.code={\PassOptionsToPackage{#1}{graphicx}},%
  adjustbox/.code={\PassOptionsToPackage{#1}{adjustbox}},%
  setspace/.code={\PassOptionsToPackage{#1}{setspace}},%
  xcolor/.code={\PassOptionsToPackage{#1}{xcolor}},%
  datatool/.code={\PassOptionsToPackage{#1}{datatool}},%
  titleps/.code={\PassOptionsToPackage{#1}{titleps}},%
  titlesec/.code={\PassOptionsToPackage{#1}{titlesec}},%
  draftwatermark/.code={\PassOptionsToPackage{#1}{draftwatermark}},%
  babel/.code={\PassOptionsToPackage{#1}{babel}},%
  datetime/.code={\PassOptionsToPackage{#1}{datetime}}%
}%
\yadsetup{%
  .unknown/.code ={\expandafter\PassOptionsToClass\expandafter{\pgfkeyscurrentname}{book}}%
}%
\ProcessPgfOptions{/yad}%
\ifthenelse{\equal{\YAD@mainlanguage}{english}}{%
  \def\YAD@secondarylanguage{french}%
}{%
}%
\ifthenelse{\equal{\YAD@mainlanguage}{french}}{%
  \def\YAD@secondarylanguage{english}%
}{%
}%
\ifthenelse{\equal{\@classoptionslist}{}}{%
  \edef\@classoptionslist{\YAD@secondarylanguage,\YAD@mainlanguage}%
}{%
  \edef\@classoptionslist{\YAD@secondarylanguage,\YAD@mainlanguage,\@classoptionslist}%
}%
\LoadClass{book}%
\RequirePackage{xkeyval}%
\RequirePackage{geometry}[2010/09/12]%
\RequirePackage{graphicx}[1999/02/16]%
\RequirePackage{environ}[2013/04/01]%
\RequirePackage{adjustbox}[2012/05/21]%
\RequirePackage{array}[2008/09/09]%
\RequirePackage{xstring}[2013/10/13]%
\RequirePackage{textcase}[2004/10/07]%
\RequirePackage{translator}[2010/06/12]%
\RequirePackage{fixltx2e}[2006/09/13]%
\RequirePackage{iftex}[2013/04/04]%
\RequirePackage{epigraph}[2009/09/02]%
\RequirePackage{tcolorbox}[2014/03/31]%
\RequirePackage{marvosym}[2011/07/20]%
\RequirePackage{setspace}[2011/12/19]%
\RequirePackage{shorttoc}[2002/08/20]%
\RequirePackage{tocvsec2}[2014/03/10]%
\RequirePackage{tocbibind}[2010/10/13]%
\ifthenelse{\equal{\YAD@fncychapstyle}{none}}{%
}{%
  \RequirePackage{fncychap}[2007/07/30]%
}%
\RequirePackage{titleps}[2011/12/15]%
\RequirePackage{nonumonpart}[2011/04/15]%
\RequirePackage{xcolor}[2007/01/21]%
\RequirePackage{datatool}[2014/03/08]%
\RequirePackage{ifdraft}[2008/08/11]%
\ifdraft{%
  \RequirePackage{draftwatermark}[2006/06/30]%
  \geometry{showframe}%
  \setlength\overfullrule{5pt}%
}{%
  \ifbool{YAD@inprogress@work@star}{%
    \RequirePackage{draftwatermark}[2006/06/30]%
  }{%
  }%
}%
\RequirePackage{babel}[2014/03/24]
\RequirePackage{iflang}[2007/11/11]%
\RequirePackage{datetime}[2013/09/10]%
\AtEndPreamble{%
  \@ifpackageloaded{hyperref}{%
    \RequirePackage[all]{hypcap}[2011/02/16]%
  }{%
  }%
}%
\AtEndPreamble{%
  \@ifpackageloaded{hyperref}{%
    \RequirePackage[numbered]{bookmark}[2011/12/02]%
  }{%
  }%
}%
\AtEndPreamble{%
  \@ifpackageloaded{hyperref}{%
    \newcommand{\YAD@href}[3][]{\href[#1]{#2}{#3}}%
    \newcommand{\YAD@hypersetup}[1]{\hypersetup{#1}}%
    \newcommand{\YAD@url}[1]{\url{#1}}%
    \newcommand{\YAD@nolinkurl}[1]{\nolinkurl{#1}}%
    \newcommand{\YAD@texorpdfstring}[2]{\texorpdfstring{#1}{#2}}%
    \newcommand{\YAD@phantomsection}{\phantomsection}%
  }{%
    \newcommand{\YAD@href}[3][]{#3}%
    \newcommand{\YAD@hypersetup}[1]{}%
    \newcommand{\YAD@url}[1]{\texttt{#1}}%
    \newcommand{\YAD@nolinkurl}[1]{\texttt{#1}}%
    \newcommand{\YAD@texorpdfstring}[2]{#1}%
    \newcommand{\YAD@phantomsection}{}%
  }%
  \@ifpackageloaded{bookmark}{%
    \newcommand{\YAD@bookmarksetup}[1]{\bookmarksetup{#1}}%
  }{%
    \newcommand{\YAD@bookmarksetup}[1]{}%
  }%
}%
\@ifpackagelater{babel}{2013/04/15}{%
  \PassOptionsToPackage{main=\YAD@mainlanguage}{babel}%
}{%
  % \AtEndPreamble{%
  \YAD@ClassWarningNoLine{%
    La version de `babel' utilisee est obsolete.\MessageBreak%
    La classe `yathesis' va essayer de faire son possible\MessageBreak%
    mais il est possible qu'elle produise des resultats\MessageBreak%
    non prevus. Il est conseille de mettre a jour sa\MessageBreak%
    distribution TeX%
  }%
  % }%
}%
\addto\captionsfrench{\def\tablename{{\scshape Tableau}}}%
\newcommand{\YAD@ifemptyorundef}[3]{%
  \ifboolexpr{%
    test {\ifundef{#1}} or %
    test {\ifdefempty{#1}}%
  }{%
    #2%
  }{%
    #3%
  }%
}%
\AfterEndDocument{%
  \ifbool{YAD@nowarning}{%
    \ifboolexpr{%
      bool {YAD@inprogress@work}%
      or bool {YAD@inprogress@work@star}%
      or bool {YAD@draft}%
    }{%
    }{%
      \ifnumgreater{\value{YAD@warnings}}{0}{%
        % \immediate\write\YAD@file{%
          \ClassWarningNoLine{yathesis}{%
            L'option `nowarning' ayant ete utilisee,\MessageBreak%
            \theYAD@warnings\space warning%
            \ifnumequal{\value{YAD@warnings}}{1}{%
              \space propre%
            }{%
              s propres%
            }
            %
            a la classe `yathesis'\MessageBreak%
            \ifnumequal{\value{YAD@warnings}}{1}{%
              a ete masque%
            }{%
              ont ete masques%
            }
            %
            dans ce fichier de log.\MessageBreak%
            Il est fortement conseille de reactiver\MessageBreak%
            l'affichage de ce%
            \ifnumequal{\value{YAD@warnings}}{1}{%
              \space warning%
            }{%
              s warnings%
            }
            %
            en supprimant\MessageBreak%
            l'option `nowarning'%
          }%
        % }%
      }{%
      }%
    }%
  }{%
  }%
}%
  \tcbuselibrary{skins}%
\def\YAD@clearspread{\clearpage\if@twoside \ifodd\c@page
  \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewenvironment{titlepage}
{%
  \cleardoublepage
  \if@twocolumn
  \@restonecoltrue\onecolumn
  \else
  \@restonecolfalse\newpage
  \fi
  \thispagestyle{empty}%
}%
{\if@restonecol\twocolumn \else \newpage \fi
}%
\newcommand*{\YAD@configuration@directory}{configuration}
\newcommand*{\YAD@configuration@file}{thesis.cfg}
\newcommand*{\YAD@characteristics@file}{characteristics.tex}
\AtEndPreamble{%
  \@ifpackageloaded{siunitx}{%
    \sisetup{detect-all}%
    \ifthenelse{\equal{\YAD@mainlanguage}{french}}{%
      \sisetup{locale=FR}%
    }{%
      \sisetup{locale=UK}%
    }%
  }{%
  }%
}%
\definecolor{YAD@configuration@file@color}{rgb}{0.5,0,0.5}%
\definecolor{YAD@main@file@color}{rgb}{1,0.5,0}%
\newcommand*{\YAD@reach@file}[2][\YAD@characteristics@file]{%
  \ifdraft{%
    \ifthenelse{\equal{\YAD@configuration@file}{#1}}{%
      \YAD@hypersetup{%
        urlbordercolor=YAD@configuration@file@color,%
        urlcolor=YAD@configuration@file@color%
      }%
    }{%
      \YAD@hypersetup{%
        urlbordercolor=YAD@main@file@color,%
        urlcolor=YAD@main@file@color%
      }%
    }%
    \IfFileExists{\YAD@configuration@directory/#1}{%
       \YAD@href{\YAD@configuration@directory/#1}{#2}%
    }{%
      \YAD@href{\jobname.tex}{#2}%
    }
  }{%
    #2%
  }%
}%
\ifbool{YAD@output@paper}{%
  \AtEndPreamble{%
    \@ifpackageloaded{hyperref}{%
      \YAD@hypersetup{colorlinks=false}%
      \renewcommand{\YAD@href}[3][]{#3}%
      \let\YAD@ori@footnote\footnote%
      \renewcommand{\footnote}[1]{\booltrue{YAD@in@footnote}\YAD@ori@footnote{#1}\boolfalse{YAD@in@footnote}}%
      \renewcommand*\url[1]{\nolinkurl{#1}}%
      \renewcommand*\href[3][]{%
        \ifbool{YAD@in@footnote}{%
          #3 (\url{#2}) }{%
          #3\footnote{\url{#2}} }%
      }%
    }{%
    }%
  }%
}{%
}%
\@ifpackageloaded{draftwatermark}{%
  \SetWatermarkColor{gray!10}%
}{%
}%
\ifbool{YAD@inprogress@work@star}{%
  \SetWatermarkFontSize{3cm}%
  \AfterEndPreamble{\translatelet\YAD@trinprogress{lbl-inprogress}}%
  \SetWatermarkText{\MakeUppercase{\YAD@trinprogress}}%
}{%
}%
\ifdraft{%
  \AfterEndPreamble{\translatelet\YAD@trdraft{lbl-draft}}%
  \SetWatermarkText{\MakeUppercase{\YAD@trdraft}}%
}{%
}%
\newcommand*{\YAD@generic@argument}[1]{%
  \bgroup\color{brown}\normalfont$\langle$\textsl{\texttt{#1}}$\rangle$\egroup%
}%
\newcommand*{\YAD@translation}[1]{%
  \ifthenelse{\isempty{#1}}{%
  }{%
    \ifdraft{%
      {%
        \scriptsize%
        \begin{tabular}{l}
          {%
            \normalfont\ttfamily\tiny%
            (#1)%
          }%
          \\[-.3\baselineskip]
          \YAD@reach@file[\YAD@configuration@file]{%
            \translate{lbl-#1}%
          }%
        \end{tabular}
      }%
    }{%
    \translate{lbl-#1}%
    }%
  }%
}%
\newcommand{\YAD@astuce@expressioncle}{%
  \ifdraft{%
    \begin{center}
      \footnotesize%
      \fboxrule4pt%
      \fcolorbox{red}{white}{%
        \begin{minipage}{.9\linewidth}
          \selectlanguage{french}%
          Sur cette page, il est simple de (re)d\'efinir\ifundef{\Fcolonspace}{\FBcolonspace}{\Fcolonspace}:
          \begin{enumerate}
          \item une
            \YAD@reach@file[\YAD@configuration@file]{expression
              cl\'e}\ifundef{\Fcolonspace}{\FBcolonspace}{\Fcolonspace}:
            il suffit de cliquer sur le cadre de couleur orange qui
            l'entoure pour atteindre le fichier
            \YAD@reach@file[\YAD@configuration@file]{\texttt{\YAD@configuration@file}}
            et d'y ins\'erer
            \begin{center}
              \lstinline[morekeywords=expression]|\\expression\{|%
              \YAD@meta{label}%
              \lstinline|\}\{|%
              \YAD@meta{valeur (en fran\c cais)}%
              \lstinline|\}\{|%
              \YAD@meta{valeur (en anglais)}%
              \lstinline|\}|
            \end{center}
            pour lui donner une (nouvelle) \YAD@meta{valeur} (\'eventuellement
            vide), \YAD@meta{label} \'etant son identifiant indiqu\'e au-dessus et
            entre parenth\`eses\ifundef{\Fcolonspace}{\FBcolonspace}{\Fcolonspace};
          \item une \YAD@reach@file{donn\'ee}\ifundef{\Fcolonspace}{\FBcolonspace}{\Fcolonspace}: il
            suffit de cliquer sur le cadre de couleur pourpre qui l'entoure
            pour atteindre le fichier
            \YAD@reach@file{\texttt{\YAD@configuration@file}} o\`u elle est
            d\'efinie.
          \end{enumerate}
          Pour plus de d\'etails, consulter la documentation de la
          classe \textsl{yathesis}.%
        \end{minipage}
      }%
    \end{center}
  }{%
  }%
}%
\newcommand{\expression}[3]{%
  \AtBeginDocument{%
    \deftranslation[to=French]{lbl-#1}{#2}%
    \deftranslation[to=English]{lbl-#1}{#3}%
    \deftranslation[to=French]{#1}{#2}%
    \deftranslation[to=English]{#1}{#3}%
  }%
}%
\newcommand*{\YAD@generic@argument@translate}[1]{%
  \YAD@texorpdfstring{\YAD@generic@argument{\translate{meta-#1}}}{<#1>}%
}%
\newcommand{\cmdKV@YAD@numlaboratories}{1}%
\yadsetup{%
  role/.store in=\cmdKV@YAD@role,%
  corporation/.store in=\cmdKV@YAD@corps,%
  corps/.store in=\cmdKV@YAD@corps,%
  url/.store in=\cmdKV@YAD@url,%
  logo/.store in=\cmdKV@YAD@logo,%
  address/.store in=\cmdKV@YAD@address,%
  telephone/.store in=\cmdKV@YAD@telephone,%
  fax/.store in=\cmdKV@YAD@fax,%
  email/.store in=\cmdKV@YAD@email,%
  affiliation/.store in=\cmdKV@YAD@affiliation,%
  affiliationsecondary/.store in=\cmdKV@YAD@affiliationsecondary,%
  sepcorpaffilfrench/.store in=\cmdKV@YAD@sepcorpaffilfrench,%
  sepcorpaffilenglish/.store in=\cmdKV@YAD@sepcorpaffilenglish,%
  name/.store in=\cmdKV@YAD@name,%
  depth/.store in=\cmdKV@YAD@depth,%
  frametitle/.store in=\cmdKV@YAD@frametitle,%
  numlaboratories/.store in=\cmdKV@YAD@numlaboratories,%
}%
\yadsetup{%
  logoheight/.code={%
    \global\setlength\cmdKV@YAD@logoheight{#1}%
    \ifdimgreater{\cmdKV@YAD@logoheight}{\YAD@max@logoheight}{%
      \global\setlength\YAD@max@logoheight{\cmdKV@YAD@logoheight}%
    }{%
    }%
  }%
}%
\yadsetup{sepcorpaffilfrench=\YAD@global@sepcorpaffil@french}%
\yadsetup{sepcorpaffilenglish=\YAD@global@sepcorpaffil@english}%
\yadsetup{name=\contentsname}%
\yadsetup{depth=subsubsection}%
\yadsetup{reinitialize person/.style={%
    corps=,%
    role=,%
    affiliation=,%
    affiliationsecondary=,%
    female=false,%
    male=true,%
    professor=false,%
    mcf=false,%
    mcf*=false,%
    juniorresearcher=false,%
    juniorresearcher*=false,%
    seniorresearcher=false,%
  }%
}%
\DTLnewdb{YAD@staffs}%
\DTLnewrow{YAD@staffs}%
\DTLnewdbentry{YAD@staffs}{YAD@the@staff}{referees}%
\DTLnewrow{YAD@staffs}%
\DTLnewdbentry{YAD@staffs}{YAD@the@staff}{examiners}%
\DTLnewrow{YAD@staffs}%
\DTLnewdbentry{YAD@staffs}{YAD@the@staff}{guests}%
\DTLnewrow{YAD@staffs}%
\DTLnewdbentry{YAD@staffs}{YAD@the@staff}{supervisors-in-committee}%
\DTLforeach{YAD@staffs}{%
  \YAD@the@staff=YAD@the@staff}{%
  \DTLnewdb{\YAD@the@staff}%
}%
\DTLnewdb{YAD@supervisors}%
\DTLnewdb{dedications}%
\DTLnewdb{frontepigraphs}%
\newcommand*{\YAD@staff}[4][]{%
  \dtlexpandnewvalue%
  %
  \yadsetup{#1}%
  %
  \ifbool{YAD@professor}{%
    \ifboolexpr{%
      bool {YAD@female} or %
      not bool {YAD@male}%
    }{%
      \yadsetup{corps=professorfem,#1}%
    }{%
      \yadsetup{corps=professor,#1}%
    }%
  }{%
  }%
  \ifboolexpr{ bool {YAD@mcf} }{%
    \yadsetup{corps=mcf,#1}%
  }{%
  }%
  \ifboolexpr{ bool {YAD@mcf*} }{%
    \yadsetup{corps=mcf*,#1}%
  }{%
  }%
  \ifboolexpr{ bool {YAD@juniorresearcher} }{%
    \ifboolexpr{%
      bool {YAD@female} or %
      not bool {YAD@male}%
    }{%
      \yadsetup{corps=juniorresearcherfem,#1}%
    }{%
      \yadsetup{corps=juniorresearcher,#1}%
    }%
  }{%
  }%
  \ifboolexpr{ bool {YAD@juniorresearcher*} }{%
    \ifboolexpr{%
      bool {YAD@female} or %
      not bool {YAD@male}%
    }{%
      \yadsetup{corps=juniorresearcherfem*,#1}%
    }{%
      \yadsetup{corps=juniorresearcher*,#1}%
    }%
  }{%
  }%
  \ifboolexpr{ bool {YAD@seniorresearcher} }{%
    \ifboolexpr{%
      bool {YAD@female} or %
      not bool {YAD@male}%
    }{%
      \yadsetup{corps=seniorresearcherfem,#1}%
    }{%
      \yadsetup{corps=seniorresearcher,#1}%
    }%
  }{%
  }%
  %
  % \ifthenelse{\equal{\cmdKV@YAD@corporation}{}}{%
  % }{%
  %   \ifthenelse{\equal{\cmdKV@YAD@corps}{}}{%
  %     \yadsetup{#1,corps=\cmdKV@YAD@corporation}%
  %   }{%
  %   }%
  % }%
  \DTLnewrow{#4}%
  \DTLnewdbentry{#4}{firstname}{#2}%
  \DTLnewdbentry{#4}{lastname}{#3}%
  \YAD@ifemptyorundef{\cmdKV@YAD@role}{%
    \DTLnewdbentry{#4}{role}{}%
  }{%
    \DTLnewdbentry{#4}{role}{\cmdKV@YAD@role}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@corps}{%
    \DTLnewdbentry{#4}{corps}{}%
  }{%
    \DTLnewdbentry{#4}{corps}{\cmdKV@YAD@corps}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@sepcorpaffilfrench}{%
    \DTLnewdbentry{#4}{sepcorpaffilfrench}{\YAD@global@sepcorpaffil@french}%
  }{%
    \DTLnewdbentry{#4}{sepcorpaffilfrench}{\cmdKV@YAD@sepcorpaffilfrench}%
    \def\cmdKV@YAD@sepcorpaffilfrench{}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@sepcorpaffilenglish}{%
    \DTLnewdbentry{#4}{sepcorpaffilenglish}{\YAD@global@sepcorpaffil@english}%
  }{%
    \DTLnewdbentry{#4}{sepcorpaffilenglish}{\cmdKV@YAD@sepcorpaffilenglish}%
    \def\cmdKV@YAD@sepcorpaffilenglish{}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@affiliation}{%
    \DTLnewdbentry{#4}{affiliation}{}%
  }{%
    \DTLnewdbentry{#4}{affiliation}{\cmdKV@YAD@affiliation}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@affiliationsecondary}{%
    \YAD@ifemptyorundef{\cmdKV@YAD@affiliation}{%
      \DTLnewdbentry{#4}{affiliationsecondary}{}%
    }{%
      \DTLnewdbentry{#4}{affiliationsecondary}{\cmdKV@YAD@affiliation}%
    }%
  }{%
    \DTLnewdbentry{#4}{affiliationsecondary}{\cmdKV@YAD@affiliationsecondary}%
  }%
  \yadsetup{reinitialize person}%
}%
\newcommand{\YAD@error@firstlastnames@empty}[4]{%
  \ifthenelse{\isempty{#2}}{%
    \YAD@ClassError{%
      Prenom #1 non specifie%
    }{%
      Le 1er argument obligatoire de la commande \string#4\MessageBreak%
      est vide (celui-ci doit etre renseigne).%
    }%
  }{%
  }%
  \ifthenelse{\isempty{#3}}{%
    \YAD@ClassError{%
      Nom #1 non specifie%
    }{%
      Le 2e argument obligatoire de la commande \string#4\MessageBreak%
      est vide (celui-ci doit etre renseigne).%
    }%
  }{%
  }%
}
\newcommand*{\YAD@supervisors@in@committee}[3][]{%
  \YAD@staff[#1]{#2}{#3}{supervisors-in-committee}%
}%
\newcommand{\supervisor}{%
  \@ifstar{\@tempswatrue\YAD@supervisor}{\@tempswafalse\YAD@supervisor}%
}
\newcommand*{\YAD@supervisor}[3][]{%
  \booltrue{YAD@supervisor@specified}%
  \yadsetup{#1}%
  \ifboolexpr{%
    bool {YAD@female} or %
    not bool {YAD@male}%
  }{%
    \YAD@error@firstlastnames@empty{de la directrice de these}{#2}{#3}{\supervisor}%
    \YAD@staff[role=supervisorfem,#1]{#2}{#3}{YAD@supervisors}%
  }{%
    \YAD@error@firstlastnames@empty{du directeur de these}{#2}{#3}{\supervisor}%
    \YAD@staff[role=supervisor,#1]{#2}{#3}{YAD@supervisors}%
  }%
  \if@tempswa%
  \else%
  \YAD@staff[role=supervisor,#1]{#2}{#3}{supervisors-in-committee}%
  \fi%
}%
\newcommand{\cosupervisor}{%
  \@ifstar{\@tempswatrue\YAD@cosupervisor}{\@tempswafalse\YAD@cosupervisor}%
}
\newcommand*{\YAD@cosupervisor}[3][]{%
  \booltrue{YAD@supervisor@specified}%
  \booltrue{YAD@cosupervisor@or@comonitor}%
  \yadsetup{#1}%
  \ifboolexpr{%
    bool {YAD@female} or %
    not bool {YAD@male}%
  }{%
    \YAD@error@firstlastnames@empty{de la co-directrice de these}{#2}{#3}{\cosupervisor}%
    \YAD@staff[role=cosupervisorfem,#1]{#2}{#3}{YAD@supervisors}%
  }{%
    \YAD@error@firstlastnames@empty{du co-directeur de these}{#2}{#3}{\cosupervisor}%
    \YAD@staff[role=cosupervisor,#1]{#2}{#3}{YAD@supervisors}%
  }%
  \if@tempswa%
  \else%
  \YAD@staff[role=cosupervisor,#1]{#2}{#3}{supervisors-in-committee}%
  \fi%
}%
\newcommand{\comonitor}{%
  \@ifstar{\@tempswatrue\YAD@comonitor}{\@tempswafalse\YAD@comonitor}%
}
\newcommand*{\YAD@comonitor}[3][]{%
  \booltrue{YAD@supervisor@specified}%
  \booltrue{YAD@cosupervisor@or@comonitor}%
  \yadsetup{#1}%
  \ifboolexpr{%
    bool {YAD@female} or %
    not bool {YAD@male}%
  }{%
    \YAD@error@firstlastnames@empty{de la co-encadrante de these}{#2}{#3}{\comonitor}%
    \YAD@staff[role=comonitorfem,#1]{#2}{#3}{YAD@supervisors}%
  }{%
    \YAD@error@firstlastnames@empty{de co-encadrant de these}{#2}{#3}{\comonitor}%
    \YAD@staff[role=comonitor,#1]{#2}{#3}{YAD@supervisors}%
  }%
  \if@tempswa%
  \else%
  \YAD@staff[role=comonitor,#1]{#2}{#3}{supervisors-in-committee}%
  \fi%
}%
\newcommand*{\guest}[3][]{%
  \YAD@staff[#1]{#2}{#3}{guests}%
  \YAD@error@firstlastnames@empty{de l'invite}{#2}{#3}{\guest}%
}%
\newcommand*{\referee}[3][]{%
  \yadsetup{#1}%
  \ifboolexpr{%
    bool {YAD@female} or %
    not bool {YAD@male}%
  }{%
    \YAD@error@firstlastnames@empty{de la rapportrice}{#2}{#3}{\referee}%
  }{%
    \YAD@error@firstlastnames@empty{du rapporteur}{#2}{#3}{\referee}%
  }%
  \YAD@staff[#1]{#2}{#3}{referees}%
}%
\newcommand*{\examiner}[3][]{%
  \yadsetup{#1}%
  \YAD@staff[#1]{#2}{#3}{examiners}%
  \ifboolexpr{%
    test {\ifdefstring{\cmdKV@YAD@role}{committeepresident}} or %
    test {\ifdefstring{\cmdKV@YAD@role}{committeepresidentfem}}%
  }{%
  }{%
    \ifboolexpr{%
      bool {YAD@female} or %
      not bool {YAD@male} or %
    }{%
      \YAD@error@firstlastnames@empty{de l'examinatrice}{#2}{#3}{\examiner}%
    }{%
      \YAD@error@firstlastnames@empty{de l'examinateur}{#2}{#3}{\examiner}%
    }%
  }%
}%
\newcommand*{\committeepresident}[3][]{%
  \yadsetup{#1}%
  \ifboolexpr{%
    bool {YAD@female} or %
    not bool {YAD@male}%
  }{%
    \YAD@error@firstlastnames@empty{de la presidente du jury}{#2}{#3}{\committeepresident}%
    \examiner[role=committeepresidentfem,#1]{#2}{#3}%
  }{%
    \YAD@error@firstlastnames@empty{du president du jury}{#2}{#3}{\committeepresident}%
    \examiner[role=committeepresident,#1]{#2}{#3}%
  }%
}%
\newcommand*{\YAD@al}{ \`a l'}%
\newcommand*{\YAD@au}{ au }%
\newcommand*{\YAD@del}{ de l'}%
\newcommand*{\YAD@du}{ du }%
\newcommand*{\YAD@if@starts@with@vowel}[3]{%
  \ifboolexpr{%
    test {\IfBeginWith{#1}{a}} or %
    test {\IfBeginWith{#1}{e}} or %
    test {\IfBeginWith{#1}{i}} or %
    test {\IfBeginWith{#1}{o}} or %
    test {\IfBeginWith{#1}{u}} or %
    test {\IfBeginWith{#1}{y}} or %
    test {\IfBeginWith{#1}{\`a}} or %
    test {\IfBeginWith{#1}{\^a}} or %
    test {\IfBeginWith{#1}{\"a}} or %
    test {\IfBeginWith{#1}{\'e}} or %
    test {\IfBeginWith{#1}{\`e}} or %
    test {\IfBeginWith{#1}{\^e}} or %
    test {\IfBeginWith{#1}{\"e}} or %
    test {\IfBeginWith{#1}{\^i}} or %
    test {\IfBeginWith{#1}{\"i}} or %
    test {\IfBeginWith{#1}{\^o}} or %
    test {\IfBeginWith{#1}{\"o}} or %
    test {\IfBeginWith{#1}{\`u}} or %
    test {\IfBeginWith{#1}{\^u}} or %
    test {\IfBeginWith{#1}{\"u}} or %
    test {\IfBeginWith{#1}{\"y}} or %
    test {\IfBeginWith{#1}{A}} or %
    test {\IfBeginWith{#1}{E}} or %
    test {\IfBeginWith{#1}{I}} or %
    test {\IfBeginWith{#1}{O}} or %
    test {\IfBeginWith{#1}{U}} or %
    test {\IfBeginWith{#1}{Y}} or %
    test {\IfBeginWith{#1}{\`A}} or %
    test {\IfBeginWith{#1}{\^A}} or %
    test {\IfBeginWith{#1}{\"A}} or %
    test {\IfBeginWith{#1}{\'E}} or %
    test {\IfBeginWith{#1}{\`E}} or %
    test {\IfBeginWith{#1}{\^E}} or %
    test {\IfBeginWith{#1}{\"E}} or %
    test {\IfBeginWith{#1}{\^I}} or %
    test {\IfBeginWith{#1}{\"I}} or %
    test {\IfBeginWith{#1}{\^O}} or %
    test {\IfBeginWith{#1}{\"O}} or %
    test {\IfBeginWith{#1}{\`U}} or %
    test {\IfBeginWith{#1}{\^U}} or %
    test {\IfBeginWith{#1}{\"U}} or %
    test {\IfBeginWith{#1}{\"Y}} or %
    test {\IfBeginWith{#1}{\ae}} or %
    test {\IfBeginWith{#1}{\oe}} or %
    test {\IfBeginWith{#1}{\AE}} or %
    test {\IfBeginWith{#1}{\OE}}%
  }{%
    #2%
  }{%
    #3%
  }%
}%
\newcommand{\YAD@display@staff}[1]{%
  \DTLforeach*{#1}{%
    \YAD@committeemember@lastname=lastname,%
    \YAD@committeemember@fistname=firstname,%
    \YAD@committeemember@role=role,%
    \YAD@committeemember@corps=corps,%
    \YAD@committeemember@sepcorpaffil=%
    \expandafter\IfLanguageName{french}{%
      sepcorpaffilfrench%
    }{%
      sepcorpaffilenglish%
    }%
    ,%
    \YAD@committeemember@affiliation=%
    \IfLanguageName{french}{%
      affiliation%
    }{%
      affiliationsecondary%
    }%
  }{%
    % Nature des membres du jury
    \DTLiffirstrow{%
      \ifthenelse{\DTLrowcount{\YAD@the@staff}>1}{%
        \ifboolexpr{%
          bool {YAD@hdr} and test {\ifdefstring{\YAD@the@staff}{supervisors-in-committee}}%
        }{%
          \YAD@translation{\YAD@the@staff-pl-hdr}%
        }{%
          \YAD@translation{\YAD@the@staff-pl}%
        }%
      }{%
        \ifboolexpr{%
          bool {YAD@hdr} and test {\ifdefstring{\YAD@the@staff}{supervisors-in-committee}}%
        }{%
          \YAD@translation{\YAD@the@staff-hdr}%
        }{%
          \YAD@translation{\YAD@the@staff}%
        }%
      }%
    }{%
    }%
    &
    % Prénom
    \YAD@reach@file{%
      %
      \ifthenelse{\DTLiseq{\YAD@committeemember@fistname}{}}{%
        \YAD@generic@argument@translate{firstname}%
      }{%
        \YAD@committeemember@fistname%
      }%
    }
    \YAD@reach@file{%
      \ifthenelse{\DTLiseq{\YAD@committeemember@lastname}{}}{%
        \YAD@generic@argument@translate{lastname}%
      }{%
        \textsc{\YAD@committeemember@lastname}%
      }%
    }%
    &
    \YAD@reach@file{%
      \ifthenelse{\DTLiseq{\YAD@committeemember@corps}{}}{%
        \ifdraft{%
          \YAD@generic@argument@translate{corps}%
        }{%
        }%
      }{%
        \YAD@translation{%
          \YAD@committeemember@corps%
        }%
      }%
    }%
    \YAD@reach@file{%
      \ifthenelse{\DTLiseq{\YAD@committeemember@affiliation}{}}{%
        \ifdraft{%
          \YAD@generic@argument@translate{affiliation}%
        }{%
        }%
      }{%
        \ifthenelse{\DTLiseq{\YAD@committeemember@corps}{}}{%
          \YAD@committeemember@affiliation%
        }{%
          \ifthenelse{\equal{\YAD@committeemember@sepcorpaffil}{}}{%
            \YAD@if@starts@with@vowel{\YAD@committeemember@affiliation}{\YAD@al}{\YAD@au}\YAD@committeemember@affiliation%
          }{%
            \YAD@committeemember@sepcorpaffil\YAD@committeemember@affiliation%
          }%
        }%
      }%
    }%
    &
    \YAD@reach@file{%
      \ifthenelse{\DTLiseq{\YAD@committeemember@role}{}}{%
        \ifdraft{%
          \YAD@generic@argument@translate{role}%
        }{%
        }%
      }{%
        \ifthenelse{\equal{\YAD@the@staff}{supervisors-in-committee}}{%
        }{%
          \YAD@translation{\YAD@committeemember@role}%
        }%
      }%
    }%
    \DTLiflastrow{%
      \\[.15cm]
    }{%
      \\
    }%
  }%
}%
\newcommand*{\YAD@supervisors@tabular}{%
  \small%
  \DTLifdbempty{YAD@staffs}{}{%
    \ifthenelse{\DTLrowcount{YAD@supervisors}>1}{%
      \begin{tabular}[t]{>{\itshape}lll}
      }{%
        \begin{tabular}[t]{>{\itshape}l@{ }ll}
        }%
        \DTLforeach*{YAD@supervisors}{%
          \YAD@committeemember@lastname=lastname,%
          \YAD@committeemember@fistname=firstname,%
          \YAD@committeemember@role=role%
        }{%
          % Nature des membres du jury
          \DTLiffirstrow{%
            \hspace{-\tabcolsep}%
            \normalfont\bfseries%
            \ifYAD@hdr%
            \YAD@translation{supervisedby-hdr} %
            \else%
            \YAD@translation{supervisedby}%
            \fi%
          }{%
          }%
          &
          % Prénom
          \YAD@reach@file{%
            %
            \ifthenelse{\DTLiseq{\YAD@committeemember@fistname}{}}{%
              \YAD@generic@argument@translate{firstname}%
            }{%
              \YAD@committeemember@fistname%
            }%
          }
          % Nom
          \YAD@reach@file{%
            \ifthenelse{\DTLiseq{\YAD@committeemember@lastname}{}}{%
              \YAD@generic@argument@translate{lastname}%
            }{%
              \textsc{\YAD@committeemember@lastname}%
            }%
          }%
          &
          % Fonction
          \YAD@reach@file{%
            \ifthenelse{\DTLiseq{\YAD@committeemember@role}{}}{%
              \ifdraft{%
                \YAD@generic@argument@translate{role}%
              }{%
              }%
            }{%
              \ifthenelse{\DTLrowcount{YAD@supervisors}>1}{%
                \ifbool{YAD@cosupervisor@or@comonitor}{%
                  \YAD@translation{\YAD@committeemember@role}%
                }{%
                }%
              }{%
              }%
            }%
          }%
          % &
          \DTLiflastrow{%
            \\[.5cm]
          }{%
            \\
          }%
        }%
      \end{tabular}
    }{%
    }%
  }%
\newcommand*{\YAD@committee@tabular}{%
  \small%
  \begin{tabular}[t]{>{\itshape}llp{5cm}l}
    \multicolumn{4}{@{}l}{\bfseries\YAD@translation{committeemembers}}%
    \\[.25cm]
    \DTLforeach*{YAD@staffs}{%
      \YAD@the@staff=YAD@the@staff%
    }{%
      %
      \YAD@display@staff{\YAD@the@staff}%
    }%
  \end{tabular}
}%
\DeclareRobustCommand*\YAD@meta{\YAD@generic@argument}%
        \newcommand*\YAD@logo{}%
\newcommand*{\YAD@create@macro}[2][]{%
  \ifthenelse{\isempty{#1}}{%
    \csdef{#2}##1{%
      \csdef{print#2}{%
        \YAD@reach@file{%
          \ifthenelse{\isempty{##1}}{%
            \YAD@generic@argument@translate{#2}%
          }{%
            ##1%
          }%
        }%
      }%
    }%
  }{%
  }%
  \ifthenelse{\equal{#1}{email}}{%
    \csdef{#1#2}##1{%
      \csdef{print#1#2}{%
        \YAD@reach@file{%
          \ifthenelse{\isempty{##1}}{%
            % \ifbool{YAD@nolink}{%
            %   \YAD@generic@argument@translate{#1#2}%
            % }{%
              \YAD@href{mailto:#1.#2@institute.fr}{\YAD@generic@argument@translate{#1#2}}%
            % }%
          }{%
            % \ifbool{YAD@nolink}{%
            %   \YAD@nolinkurl{##1}%
            % }{%
              \YAD@href{mailto:##1}{\YAD@nolinkurl{##1}}%
            % }%
          }%
        }%
      }%
    }%
  }{%
  }%
  \ifthenelse{\equal{#1}{url}}{%
    \csdef{#1#2}##1{%
      \csdef{print#1#2}{%
        \YAD@reach@file{%
          \ifthenelse{\isempty{##1}}{%
            % \ifbool{YAD@nolink}{%
            %   \YAD@generic@argument@translate{#1#2}%
            % }{%
              \YAD@url{%
                \YAD@generic@argument@translate{#1#2}%
              }%
            % }%
          }{%
            % \ifbool{YAD@nolink}{%
            %   \YAD@nolinkurl{##1}%
            % }{%
              \YAD@url{##1}%
            % }%
          }%
        }%
      }%
    }%
  }{%
  }%
  \ifthenelse{\equal{#1}{entite}}{%
    \expandafter\newcommand\expandafter{\csname #2\endcsname}[2][]{%
     \csdef{YAD@#2}{##2}%
     \ifthenelse{\isempty{##2}}{%
       \YAD@ClassError[no#2]{%
         Argument obligatoire de \csuse{#2}\space vide%
       }{%
         L'argument obligatoire de la commande \csuse{#2}\MessageBreak%
         est vide (celui-ci doit etre renseigne).%
       }%
     }{%
     }%
\csdef{print#2}{%
  \@ifstar{\csuse{YAD@print#2@star}}{\csuse{YAD@print#2@nostar}}%
}%
\csdef{YAD@print#2@star}{%
  \ifthenelse{\isempty{##2}}{%
    \YAD@reach@file{\YAD@generic@argument@translate{#2}}%
  }{%
    \YAD@reach@file{##2}%
  }%
}%
\csdef{YAD@print#2@nostar}{%
  \let\YAD@texte\relax%
  \csdef{YAD@texte}{%
    \ifthenelse{\isempty{##2}}{%
      \YAD@reach@file{\YAD@generic@argument@translate{#2}}%
    }{%
      ##2%
    }%
  }%
  % \boolfalse{YAD@nolink}%
  \yadsetup{##1}%
  \ifthenelse{\equal{\cmdKV@YAD@url}{}}{%
    \ifdraft{%
      \YAD@reach@file{%
        \YAD@texte%
      }%
    }{%
      % \ifbool{YAD@nolink}{%
      \YAD@texte%
      % }{%
      %   \YAD@href{www.#2.fr}{\YAD@texte}%
      % }%
    }%
  }{%
    \ifdraft{%
      \YAD@reach@file{%
        \YAD@texte%
      }%
    }{%
      % \ifbool{YAD@nolink}{%
      %   \YAD@texte%
      % }{%
        \YAD@href{\cmdKV@YAD@url}{\YAD@texte}%
      % }%
    }%
  }%
}%
      \csdef{print#2address}{%
        \yadsetup{##1}%
        \ifthenelse{\equal{\cmdKV@YAD@address}{}}{%
          \YAD@reach@file{\YAD@generic@argument@translate{address#2}}%
        }{%
          \YAD@reach@file{\cmdKV@YAD@address}%
        }%
        %
      }%
      \csdef{print#2telephone}{%
        \yadsetup{##1}%
        \ifthenelse{\equal{\cmdKV@YAD@telephone}{}}{%
          \YAD@reach@file{\YAD@generic@argument@translate{telephone#2}}%
        }{%
          \YAD@reach@file{\cmdKV@YAD@telephone}%
        }%
        %
      }%
      \csdef{print#2fax}{%
        \yadsetup{##1}%
        \ifthenelse{\equal{\cmdKV@YAD@fax}{}}{%
          \YAD@reach@file{\YAD@generic@argument@translate{fax#2}}%
        }{%
          \YAD@reach@file{\cmdKV@YAD@fax}%
        }%
        %
      }%
\csdef{print#2email}{%
  \YAD@reach@file{%
    \ifthenelse{\equal{\cmdKV@YAD@email}{}}{%
      % \ifbool{YAD@nolink}{%
      %   \YAD@generic@argument@translate{#2email}%
      % }{%
        \YAD@href{mailto:#2@institute.fr}{\YAD@generic@argument@translate{#2email}}%
      % }%
    }{%
      % \ifbool{YAD@nolink}{%
      %   \YAD@nolinkurl{\cmdKV@YAD@email}%
      % }{%
        \YAD@href{mailto:\cmdKV@YAD@email}{\YAD@nolinkurl{\cmdKV@YAD@email}}%
      % }%
    }%
  }%
}%
      \ifbool{YAD@nologo}{%
      }{%
        \csdef{print#2logo}{%
        \@ifstar{%
        \@tempswatrue%
        \csuse{YAD@starnostar@print#2logo}%
        }{%
        \@tempswafalse%
        \csuse{YAD@starnostar@print#2logo}%
        }%
      }%
      \csdef{YAD@starnostar@print#2logo}{%
        \yadsetup{url=,##1}%
        \renewcommand*\YAD@logo{%
          \ifthenelse{\equal{\cmdKV@YAD@logo}{}}{%
            \YAD@reach@file{\YAD@generic@argument@translate{logo#2}}%
          }{%
            \YAD@reach@file{%
              \includegraphics[height=\cmdKV@YAD@logoheight]{\cmdKV@YAD@logo}%
            }%
          }%
        }%
        \if@tempswa%
        \else%
        % \ifbool{YAD@nolink}{%
        %   \YAD@logo%
        % }{%
          \ifthenelse{\equal{\cmdKV@YAD@url}{}}{%
            % \YAD@href{www.#2.fr}{
              \YAD@logo%
            % }%
          }{%
            \YAD@href{\cmdKV@YAD@url}{\YAD@logo}%
          }%
        % }%
        \fi%
        \setlength\cmdKV@YAD@logoheight{\YAD@default@logoheight}%
      }%
    }%
  }%
}{%
}%
\ifthenelse{\equal{#1}{bilingue}}{%
  \ifthenelse{\isnamedefined{#2}}{%
  }{%
    \csdef{#2}{}%
  }%
  \expandafter\renewcommand\expandafter{\csname #2\endcsname}[2][]{%
\ifthenelse{\isempty{##1}}{%
  \csdef{YAD@meta#2}{%
    ##2%
  }%
}{%
  \csdef{YAD@meta#2}{%
    ##2 (##1)%
  }%
}%
\ifthenelse{\isempty{##2}}{%
  \YAD@ClassError[no#2]{%
    Argument obligatoire de \csuse{#2}\space vide%
  }{%
    L'argument obligatoire de la commande \csuse{#2}\MessageBreak%
    est vide (celui-ci doit etre renseigne).%
  }%
}{%
}%
\ifthenelse{\equal{#2}{title}}{%
  \YAD@hypersetup{pdftitle=\YAD@metatitle}%
}{%
}%
\ifundef{\YAD@metasubject}{%
  \ifundef{\YAD@metaacademicfield}{%
  }{%
    \YAD@hypersetup{pdfsubject=\YAD@metaacademicfield}%
  }%
}{%
  \YAD@hypersetup{pdfsubject=\YAD@metasubject}%
}%
\csdef{print#2}{%
        \YAD@reach@file{%
          \expandafter\IfLanguageName{\YAD@mainlanguage}{%
            \ifthenelse{\isempty{##2}}{%
              \YAD@reach@file{\YAD@generic@argument@translate{#2}}%
            }{%
              \YAD@reach@file{##2}%
            }%
          }{%
            \ifthenelse{\isempty{##1}}{%
              \ifbool{YAD@two@titles}{%
                \YAD@ClassError[no#2]{%
                  Argument optionnel de \csuse{#2}\space vide%
                }{%
                  La commande \csuse{#2}\space a ete utilisee\MessageBreak%
                  mais avec un argument optionnel vide : celui-ci doit\MessageBreak%
                  etre soit non vide soit pas utilise%
                }%
                \YAD@reach@file{\YAD@generic@argument@translate{#2}}%
              }{%
              }%
            }{%
              \YAD@reach@file{##1}%
            }%
          }%
        }%
      }%
      \ifthenelse{\isempty{##1}}{%
      }{%
        \ifthenelse{\equal{#2}{subject}}{%
        }{%
          \booltrue{YAD@two@titles}%
        }%
      }%
    }%
  }{%
  }%
}%
\YAD@create@macro[entite]{pres}
\YAD@create@macro[entite]{institute}
\YAD@create@macro[entite]{coinstitute}
\YAD@create@macro[entite]{company}
\YAD@create@macro[entite]{cocompany}
\YAD@create@macro[entite]{doctoralschool}
\YAD@create@macro[bilingue]{academicfield}
\YAD@create@macro[bilingue]{speciality}
\YAD@create@macro[bilingue]{title}
\YAD@create@macro[bilingue]{subtitle}
\YAD@create@macro[bilingue]{subject}
\YAD@create@macro{disclaimer}
\newcommand{\ordernumber}{%
  \@ifnextchar[{%
    \YAD@ordernumber@with@argument%
  }{%
    \YAD@ordernumber@without@argument%
  }%]
}%
\newcommand{\YAD@ordernumber@with@argument}[1][]{%
  \csdef{printordernumber}{%
    \ifthenelse{\isempty{#1}}{%
      \YAD@reach@file{%
        \YAD@generic@argument@translate{ordernumber}%
      }%
      \YAD@ClassError{%
        Argument optionnel de \protect\ordernumber\space vide%
      }{%
        La commande \protect\ordernumber\space a ete
        utilisee\MessageBreak%
        mais avec un argument optionnel vide : celui-ci doit\MessageBreak%
        etre soit non vide soit pas utilise.%
      }%
    }{%
      #1%
    }%
  }%
}%
\newcommand{\YAD@ordernumber@without@argument}{%
  \csdef{printordernumber}{%
    \hspace{2cm}%
  }%
}%
\renewcommand*{\author}[3][]{%
  \ifthenelse{\isempty{#2}}{%
    \newcommand*\YAD@firstname@author{%
      \YAD@generic@argument@translate{firstname}%
    }%
  }{%
    \newcommand*\YAD@firstname@author{%
      #2%
    }%
  }%
  \ifthenelse{\isempty{#3}}{%
    \newcommand*\YAD@lastname@author{%
      \YAD@generic@argument@translate{lastname}%
    }%
  }{%
    \newcommand*\YAD@lastname@author{%
      #3%
    }%
  }%
  \YAD@error@firstlastnames@empty{de l'auteur de la these}{#2}{#3}{\author}%
  \YAD@hypersetup{pdfauthor=\YAD@firstname@author{} \YAD@lastname@author}%
  \newcommand*\YAD@email@author{%
    #1%
  }%
  \ifthenelse{\isempty{#2}\AND\isempty{#3}}{%
    \newcommand*{\printauthor}{%
      \ifdraft{%
        \YAD@reach@file{%
          \YAD@generic@argument@translate{firstname}
          \YAD@generic@argument@translate{lastname}%
        }%
      }{%
        \ifthenelse{\isempty{#1}}{%
          \YAD@generic@argument@translate{firstname}
          \YAD@generic@argument@translate{lastname}%
        }{%
          \YAD@href{mailto:\YAD@email@author}{%
            \YAD@generic@argument@translate{firstname}
            \YAD@generic@argument@translate{lastname}%
          }%
        }%
      }%
    }%
  }{%
    \newcommand*{\printauthor}{%
      \ifdraft{%
        \YAD@reach@file{\YAD@firstname@author{} \bsc{\YAD@lastname@author}}%
      }{%
        % \ifbool{YAD@nolink}{%
        % \YAD@firstname@author{} \bsc{\YAD@lastname@author}%
        % }{%
        \ifthenelse{\isempty{#1}}{%
          \YAD@firstname@author{} \bsc{\YAD@lastname@author}
        }{%
          \YAD@href{mailto:\YAD@email@author}{\YAD@firstname@author{} \bsc{\YAD@lastname@author}}%
        }%
        % }%
      }%
    }%
  }%
}%
\csdef{YAD@checkdate}#1#2#3#4#5{%
  \boolfalse{YAD@valid@day}%
  \boolfalse{YAD@valid@month}%
  \boolfalse{YAD@valid@year}%
  %
  \csxdef{YAD@daydate}{#1}%
  \csxdef{YAD@monthdate}{#2}%
  \csxdef{YAD@yeardate}{#3}%
  % \ifboolexpr{%
  %   bool {YAD@submitted@work}%
  %   or bool {YAD@submitted@work@star}%
  % }{%
  % }{%
    \ifboolexpr{%
      not (test {\IfInteger{\YAD@daydate}})%
    }{%
      \YAD@ClassError[nodate]{%
        Jour de la date de #5 non valide%
      }{%
        La commande \string#4{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
        n'a pas ete correctement saisie car le\MessageBreak%
        jour (`\YAD@daydate') n'est pas valide :\MessageBreak%
        ce doit etre un nombre entier entre 1 et 31.%
      }%
    }{%
      \IfDecimal{\YAD@daydate}{%
        \csxdef{YAD@daydate}{\number\integerpart}%
      }{%
      }%
      \ifboolexpr{%
        test {\ifnumless{\YAD@daydate}{1}}%
        or test {\ifnumgreater{\YAD@daydate}{31}}%
      }{%
        \YAD@ClassError[nodate]{%
          Jour de la date de #5 non valide%
        }{%
          La commande \string#4{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
          n'a pas ete correctement saisie car le\MessageBreak%
          numero de jour (`\YAD@daydate') n'est pas valide :\MessageBreak%
          ce doit etre un nombre entier entre 1 et 31.%
        }%
      }{%
        \global\booltrue{YAD@valid@day}%
      }%
    }%
    % month
    \ifboolexpr{%
      not (test {\IfInteger{\YAD@monthdate}})%
    }{%
      \YAD@ClassError[nodate]{%
        Mois de la date de #5 non valide%
      }{%
        La commande \string#4{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
        n'a pas ete correctement saisie car le\MessageBreak%
        mois (`\YAD@monthdate') n'est pas valide :\MessageBreak%
        ce doit etre un nombre entier entre\MessageBreak%
        1 (janvier) et 12 (decembre).%
      }%
    }{%
      \IfDecimal{\YAD@monthdate}{%
        \csxdef{YAD@monthdate}{\number\integerpart}%
      }{%
      }%
      \ifboolexpr{%
        test {\ifnumless{\YAD@monthdate}{1}}%
        or test {\ifnumgreater{\YAD@monthdate}{12}}%
      }{%
        \YAD@ClassError[nodate]{%
          Mois de la date de #5 non valide%
        }{%
          La commande \string#4{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
          n'a pas ete correctement saisie car le\MessageBreak%
          numero de mois (`\YAD@monthdate') n'est pas valide :\MessageBreak%
          ce doit etre un nombre entier entre\MessageBreak%
          1 (janvier) et 12 (decembre).%
        }%
      }{%
        \global\booltrue{YAD@valid@month}%
      }%
    }%
    % year
    \ifboolexpr{%
      not (test {\IfInteger{\YAD@yeardate}})%
    }{%
      \YAD@ClassError[nodate]{%
        Annee de la date de #5 non valide%
      }{%
        La commande \string#4{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
        n'a pas ete correctement saisie car l'annee\MessageBreak%
        (`\YAD@yeardate') n'est pas valide : ce doit etre\MessageBreak%
        un nombre entier.%
      }%
    }{%
      \global\booltrue{YAD@valid@year}%
    }%
  % }%
}%
\csdef{date}#1#2#3{%
  \YAD@checkdate{#1}{#2}{#3}{\date}{soutenance}%
  \ifboolexpr{%
      bool {YAD@valid@day}%
      and bool {YAD@valid@month}%
      and bool {YAD@valid@year}%
    }{%
      \csdef{printdate}{%
        \formatdate{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}%
      }%
    }{%
      \csdef{printdate}{%
        \YAD@generic@argument@translate{date}%
      }%
    }%
}%
\csdef{submissiondate}#1#2#3{%
  \YAD@checkdate{#1}{#2}{#3}{\submissiondate}{soumission}%
  \ifboolexpr{%
      bool {YAD@valid@day}%
      and bool {YAD@valid@month}%
      and bool {YAD@valid@year}%
    }{%
      \csdef{printsubmissiondate}{%
        \formatdate{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}%
      }%
    }{%
      \csdef{printsubmissiondate}{%
        \YAD@generic@argument@translate{submissiondate}%
      }%
    }%
}%
\AtEndDocument{%
  \YAD@ifemptyorundef{\printdate}{%
    \ifbool{YAD@nodate}{%
    }{%
      \ifboolexpr{%
        bool {YAD@submitted@work}%
        or bool {YAD@submitted@work@star}%
      }{%
      }{%
        \YAD@ClassError[nodate]{%
          Date de soutenance non specifiee%
        }{%
          La commande \protect\date\space n'a pas ete utilisee\MessageBreak%
          (celle-ci est requise).%
        }%
      }%
    }%
  }{%
  }%
}%
\newcommand{\dedication}[1]{%
  \DTLnewrow{dedications}%
  \DTLnewdbentry{dedications}{dedication}{#1}%
}%
\newcommand{\frontepigraph}[3][\YAD@mainlanguage]{%
  \DTLnewrow{frontepigraphs}%
  \DTLnewdbentry{frontepigraphs}{epigraphlanguage}{#1}%
  \DTLnewdbentry{frontepigraphs}{epigraph}{#2}%
  \DTLnewdbentry{frontepigraphs}{epigraphauthor}{#3}%
}%
\AtEndPreamble{%
  \@ifpackageloaded{nomencl}{%
    \let\YAD@ORI@printnomenclature\printnomenclature%
    \renewcommand{\printnomenclature}{%
      \cleardoublepage%
      \sethead[\thepage][][\nomname]{\nomname}{}{\thepage}\headrule%
      \YAD@ORI@printnomenclature%
      \pagestyle{preliminary}%
    }%
  }{%
  }%
}%
\ifboolexpr{%
  bool {YAD@inprogress@work}%
  or bool {YAD@inprogress@work@star}%
}{%
  \newcommand*{\YAD@setfoot}{%
    \footrule%
    \setfoot{}{\textsc{\translate{lbl-inprogressfoottext} \today}}{}%
  }%
}{%
  \ifbool{YAD@submitted@work@star}{%
    \newcommand*{\YAD@setfoot}{%
      \footrule%
      \YAD@ifemptyorundef{\printsubmissiondate}{%
        \setfoot{}{\textsc{\translate{lbl-submittedfoottext} \today}}{}%
      }{%
        \setfoot{}{\textsc{\translate{lbl-submittedfoottext} \printsubmissiondate}}{}%
      }%
    }%
  }{%
    \newcommand*{\YAD@setfoot}{}%
  }%
}%
\xpretocmd{\pagestyle}{\cleardoublepage}{}{}%
\newcommand{\YAD@starttoctoc}{%
  \begingroup
    \if@filesw
      \expandafter\newwrite\csname tf@toc\endcsname
      \immediate\openout \csname tf@toc\endcsname \jobname.toc\relax
    \fi
    \@nobreakfalse
  \endgroup}
\AtEndDocument{\YAD@starttoctoc}
\let\YAD@ORI@setcounter\setcounter%
\let\YAD@ORI@tableofcontents\tableofcontents%
\newif\if@YAD@knownsect%
\def\shorttableofcontents#1#2{\bgroup\c@tocdepth=#2\@restonecolfalse
  \if@tightshtoc
     \parsep\z@
  \fi
  \if@twocolumn\@restonecoltrue\onecolumn\fi
  \chapter*{#1}%
  \@startshorttoc{toc}\if@restonecol\twocolumn\fi\egroup}
\renewcommand{\tableofcontents}{%
  \booltrue{YAD@tableofcontents@used}%
  \cleardoublepage%
  \YAD@phantomsection%
  \let\cmdKV@YAD@name\contentsname%
  \@ifnextchar[{\tableofcontents@YAD@with@argument}{\tableofcontents@YAD@without@argument}%]
}%
\newcommand\tableofcontents@YAD@without@argument{%
  \YAD@ORI@tableofcontents%
}%
\newcommand\tableofcontents@YAD@with@argument[1][]{%
  \yadsetup{#1}%
  \renewcommand{\setcounter}[2]{}%
  %
  \ifthenelse{\equal{\cmdKV@YAD@depth}{none}}{%
    \shorttableofcontents{\cmdKV@YAD@name}{-10}%
    \@YAD@knownsecttrue%
  }{%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@depth}{part}}{%
    \shorttableofcontents{\cmdKV@YAD@name}{-1}%
    \@YAD@knownsecttrue%
  }{%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@depth}{chapter}}{%
    \shorttableofcontents{\cmdKV@YAD@name}{0}%
    \@YAD@knownsecttrue%
  }{%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@depth}{section}}{%
    \shorttableofcontents{\cmdKV@YAD@name}{1}%
    \@YAD@knownsecttrue%
  }{%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@depth}{subsection}}{%
    \shorttableofcontents{\cmdKV@YAD@name}{2}%
    \@YAD@knownsecttrue%
  }{%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@depth}{subsubsection}}{%
    \shorttableofcontents{\cmdKV@YAD@name}{3}%
    \@YAD@knownsecttrue%
  }{%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@depth}{paragraph}}{%
    \shorttableofcontents{\cmdKV@YAD@name}{4}%
    \@YAD@knownsecttrue%
  }{%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@depth}{subparagraph}}{%
    \shorttableofcontents{\cmdKV@YAD@name}{5}%
    \@YAD@knownsecttrue%
  }{%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@depth}{all}}{%
    \shorttableofcontents{\cmdKV@YAD@name}{100}%
    \@YAD@knownsecttrue%
  }{%
  }%
  \if@YAD@knownsect%
  \else%
  \shorttableofcontents{\cmdKV@YAD@name}{3}%
  \YAD@ClassWarningNoLine{%
    La valeur (`\cmdKV@YAD@depth') passee a la cle `depth'\MessageBreak%
    en argument de la commande \string\tableofcontents\space n'est
    pas\MessageBreak%
    un des niveaux de sectionnement connus (`part', `chapter',\MessageBreak%
    `section', `subsection', `subsubsection', `paragraph',\MessageBreak%
    `subparagraph' et `all').\MessageBreak%
    Le niveau `subsection' va etre utilise\MessageBreak%
    a la place%
  }%
  \fi%
  \let\setcounter\YAD@ORI@setcounter%
  \resettocdepth*%
}%
\AtBeginDocument{\maxtocdepth{\YAD@tocdepth}}%
\AtBeginDocument{\maxsecnumdepth{\YAD@secnumdepth}}%
\newcommand*{\YAD@chapter@header}{%
  \ifthenelse{%
    \value{secnumdepth}>-1
    \and
    \value{chapter}>0
  }{%
    \MakeUppercase\chaptername{}\ \thechapter.%
  }{%
  }
  \chaptertitle%
}%
\newcommand*{\YAD@section@header}{%
  \ifthenelse{%
    \value{secnumdepth}>0
    \and
    \value{chapter}>0
  }{%
    \thesection.%
  }{%
  }
  \sectiontitle%
}%
  \AtBeginDocument{%
    \setsecnumdepth{none}%
    \frontmatter%
  }%
\newpagestyle{titles}[]{%
  % \settocdepth{none}%
  \setsecnumdepth{none}%
  \ifdraft{%
    \newgeometry{centering,nomarginpar,bottom=1cm,top=1cm,headheight=\YAD@max@logoheight,margin=0.5cm,tmargin=\YAD@max@logoheight+1cm}%
  }{%
    \newgeometry{centering,nomarginpar,bottom=1cm,top=1cm,headheight=\YAD@max@logoheight,hmargin=2cm,includeall}%
  }%
  \sethead[]%
  []%
  []%
  {%
    \ifdef{\printpreslogo}{%
      \printpreslogo%
      \booltrue{YAD@logo@before}%
    }{%
    }%
    \ifdef{\printinstitutelogo}{%
      \ifbool{YAD@logo@before}{%
        \hspace{\stretch{1}}%
      }{%
      }%
      \printinstitutelogo%
      \booltrue{YAD@logo@before}%
    }{%
    }%
    \ifdef{\printcoinstitutelogo}{%
      \ifbool{YAD@logo@before}{%
        \hspace{\stretch{1}}%
      }{%
      }%
      \printcoinstitutelogo%
      \booltrue{YAD@logo@before}%
    }{%
    }%
    \ifdef{\printcompanylogo}{%
      \ifbool{YAD@logo@before}{%
        \hspace{\stretch{1}}%
      }{%
      }%
      \printcompanylogo%
    }{%
    }%
  }%
  {}%
  {}%
  \setfootrule{0pt}%
  \setfoot{}{}{}%
}%
\newpagestyle{prepreliminary}[]{%
  \restoregeometry%
  \setsecnumdepth{none}%
  \resettocdepth*%
  \YAD@setfoot%
}%
\newpagestyle{preliminary}[]{%
  \sethead[\thepage]%
  []%
  [\YAD@chapter@header]%
  {%
    \ifthenelse{%
      \equal{\sectiontitle}{}%
    }{%
      \YAD@chapter@header%
    }{%
      \YAD@section@header%
    }%
  }%
  {}%
  {\thepage}%
  \headrule%
  \setsecnumdepth{none}%
  \resettocdepth*%
  \YAD@setfoot%
}%
\newpagestyle{ordinary}[]{%
  \sethead[\thepage]%
  []%
  [\YAD@chapter@header]%
  {%
    \ifthenelse{%
      \equal{\sectiontitle}{}%
    }{%
      \YAD@chapter@header%
    }{%
      \YAD@section@header%
    }%
  }%
  {}%
  {\thepage}%
  \headrule%
  \setsecnumdepth{none}%
  \resettocdepth*%
  \YAD@setfoot%
}%
\newpagestyle{mainmatter}[]{%
  \ifthenelse{\equal{\YAD@interligne}{single}}{%
    \singlespacing%
  }{%
    \ifthenelse{\equal{\YAD@interligne}{double}}{%
      \doublespacing%
    }{%
      \onehalfspacing%
    }%
  }%
  \sethead[\thepage]%
  []%
  [\YAD@chapter@header]%
  {%
    \ifthenelse{%
      \equal{\sectiontitle}{}%
    }{%
      \YAD@chapter@header%
    }{%
      \YAD@section@header%
    }%
  }%
  {}%
  {\thepage}%
  \headrule%
  \resettocdepth*%
  \setsecnumdepth{\YAD@secnumdepth}%
  \YAD@setfoot%
}%
\xapptocmd{\mainmatter}{%
  \booltrue{YAD@mainmatter@used}%
  \pagestyle{mainmatter}%
}{}{}%
\AtEndDocument{%
  \ifboolexpr{%
    bool {YAD@mainmatter@used}%
  }{%
  }{%
    \YAD@ClassError*{%
      Commande \protect\mainmatter\space non utilisee%
    }{%
      La commande \protect\mainmatter\space introduisant la partie principale
      du document\MessageBreak%
      n'a pas ete utilisee. Celle-ci est requise.%
    }%
  }%
}%
\newpagestyle{appendix}[]{%
  \singlespacing%
  \sethead[\thepage]%
  []%
  [%
  \ifthenelse{%
    \value{secnumdepth}>-1
    \and
    \value{chapter}>0
  }{%
    \MakeUppercase\appendixname{} \thechapter.\
  }{%
  }
  \chaptertitle%
  ]%
  {%
    \ifthenelse{%
      \equal{\sectiontitle}{}%
    }{%
      \ifthenelse{%
        \value{secnumdepth}>-1
        \and
        \value{chapter}>0
      }{%
        \MakeUppercase\appendixname{} \thechapter.\
      }{%
      }
    }{%
      \YAD@section@header%
    }%
  }%
  {}%
  {\thepage}%
  \headrule%
  \YAD@phantomsection%
  \setsecnumdepth{\YAD@secnumdepth}%
  \YAD@bookmarksetup{startatroot}%
  \YAD@setfoot%
}%
\xapptocmd{\appendix}{%
  \pagestyle{appendix}%
}{}{}%
\newpagestyle{biblio}[]{%
  \setsecnumdepth{none}%
  \singlespacing%
  \sethead[\thepage]%
  []%
  [\YAD@chapter@header]%
  {\YAD@chapter@header}%
  {}%
  {\thepage}%
  \headrule%
  \cleardoublepage%
  \YAD@phantomsection%
  \YAD@bookmarksetup{startatroot}%
  \YAD@setfoot%
}%
\newpagestyle{backmatter}[]{%
  \singlespacing%
  \sethead[\thepage]%
  []%
  [\YAD@chapter@header]%
  {%
    \ifthenelse{%
      \equal{\sectiontitle}{}%
    }{%
      \YAD@chapter@header%
    }{%
      \YAD@section@header%
    }%
  }%
  {}%
  {\thepage}%
  \headrule%
  \YAD@phantomsection%
  \setsecnumdepth{none}%
  \YAD@bookmarksetup{startatroot}%
  \YAD@setfoot%
}%
\xapptocmd{\backmatter}{%
  \pagestyle{backmatter}%
}{}{}%
\newpagestyle{contents}[]{%
  \cleardoublepage%
  \YAD@phantomsection%
  \YAD@bookmarksetup{startatroot}%
  \singlespacing%
  \sethead[\thepage]%
  []%
  [\cmdKV@YAD@name]%
  {\cmdKV@YAD@name}%
  {}%
  {\thepage}%
  \headrule%
  \setsecnumdepth{none}%
  \YAD@setfoot%
}%
\newpagestyle{glossaire}[]{%
  \cleardoublepage%
  \YAD@phantomsection%
  \YAD@bookmarksetup{startatroot}%
  \singlespacing%
  \sethead[\thepage]%
  []%
  [\YAD@chapter@header]%
  {\YAD@chapter@header}%
  {}%
  {\thepage}%
  \headrule%
  \setsecnumdepth{none}%
  \YAD@setfoot%
}%
\newpagestyle{index}[]{%
  \singlespacing%
  \sethead[\thepage]%
  []%
  [\YAD@chapter@header]%
  {\YAD@chapter@header}%
  {}%
  {\thepage}%
  \headrule%
  \setsecnumdepth{none}%
  \cleardoublepage%
  \YAD@phantomsection%
  \setsecnumdepth{\YAD@secnumdepth}%
  \YAD@bookmarksetup{startatroot}%
  \YAD@setfoot%
}%
\newpagestyle{backcover}[]{%
  \singlespacing%
  \YAD@clearspread%
  \setlength{\footskip}{35pt}%
  \setfootrule{0pt}%
  \setfoot[%
  \YAD@laboratory@abstract@page%
  ][][]{}{}{}%
  \sethead[]%
  []%
  []%
  {}%
  {}%
  {}%
  \setsecnumdepth{none}%
}%
\newcommand*{\printlaboratory}[2][]{%
  \YAD@ifemptyorundef{#2}{%
    \YAD@reach@file{\YAD@generic@argument@translate{laboratory}}%
    \ifbool{YAD@nolaboratory}{%
    }{%
      \YAD@ClassError[nolaboratory]{%
        Nom du laboratoire de la these non specifie ou vide%
      }{%
        La commande \protect\laboratory\space n'a pas ete utilisee\MessageBreak%
        (celle-ci est requise) ou son 1er argument est vide\MessageBreak%
        (celui-ci doit etre renseigne).%
      }%
    }%
  }{%
    \ifdraft{%
      \YAD@reach@file{%
        #2%
      }%
    }{%
      \ifboolexpr{%
        test {\expandafter\ifstrempty\expandafter{#1}}
        or %
        test {\ifdefstring{\YAD@laboratory@nonamelink}{true}}%
      }{%
        #2%
      }{%
        \YAD@href{#1}{#2}%
      }%
    }%
  }%
}%
\newcommand*{\printlaboratoryaddress}[1]{%
  \ifundef{#1}{%
    \YAD@reach@file{\YAD@generic@argument@translate{laboratoryaddress}}%
    \ifbool{YAD@nolaboratoryadress}{%
    }{%
      \YAD@ClassError[nolaboratoryadress]{%
        Adresse du laboratoire non specifiee ou vide%
      }{%
        La commande \protect\laboratory\space n'a pas ete utilisee\MessageBreak%
        (celle-ci est requise) ou son 2e argument est vide\MessageBreak%
        (celui-ci doit etre renseigne).%
      }%
    }%
  }{%
    \YAD@reach@file{#1}%
  }%
}%
\renewcommand{\maketitle}[1][]{%
  \booltrue{YAD@maketitle@used}%
  \yadsetup{#1}
  \setlength{\fboxsep}{10pt}%
  \setlength{\YAD@titleboxwidth}{\linewidth-2\fboxsep-2\fboxrule}%
  \renewcommand*{\do}[1]{%
  \pagestyle{titles}%
\begingroup%
\expandafter\selectlanguage\expandafter{##1}%
  \begin{lrbox}{\YAD@titlebox}
    \ifthenelse{\equal{\cmdKV@YAD@frametitle}{none}}{%
    }{%
      \tcbset{colback=white,boxsep=3pt,boxrule=0.4pt,arc=0mm}%
      \ifthenelse{\equal{\cmdKV@YAD@frametitle}{shadowbox}}{%
        \tcbset{enhanced,drop shadow southeast={black,opacity=1}}%
      }{%
        \ifthenelse{\equal{\cmdKV@YAD@frametitle}{ovalbox}}{%
          \tcbset{arc=3mm}%
        }{%
          \ifthenelse{\equal{\cmdKV@YAD@frametitle}{fbox}}{%
          }{%
            \tcbset{code={\expandafter\pgfkeysalsofrom{\cmdKV@YAD@frametitle}}}%
          }%
        }%
      }%
      \begin{tcolorbox}
    }%
    \noindent%
    \begin{minipage}{\linewidth-2\fboxsep-2\fboxrule}
      \onehalfspacing%
      \noindent%
      \ifthenelse{\equal{\cmdKV@YAD@frametitle}{none}}{%
      }{%
        \ifYAD@hdr
        \YAD@translation{thesistitle-hdr}%
        \else%
        \YAD@translation{thesistitle}%
        \fi
      }%
      \par%
      \centering%
      \Huge\bfseries%
      \YAD@ifemptyorundef{\printtitle}{%
        \YAD@generic@argument@translate{title}%
        \ifbool{YAD@notitle}{%
        }{%
          \YAD@ClassError[notitle]{%
            Titre de la these non specifie%
          }{%
            La commande \protect\title\space n'a pas ete utilisee\MessageBreak%
            (celle-ci est requise) ou son argument obligatoire est vide\MessageBreak%
            (celui-ci doit etre renseigne).%
          }%
        }%
      }{%
        \printtitle%
      }%
      \ifundef{\printsubtitle}{%
      }{%
        \ifdraft{}{\vspace*{\stretch{.15}}}%
        % \vspace*{\stretch{.15}}%
        \par%
        \centering%
        \Large\printsubtitle%
      }%
    \end{minipage}%
    \ifthenelse{\equal{\cmdKV@YAD@frametitle}{none}}{%
    }{%
    \end{tcolorbox}
  }%
  \end{lrbox}
  \settototalheight{\YAD@titleboxheight}{\YAD@titlebox}%
  \setlength{\YAD@otherboxheight}{0.3\paperheight-\YAD@titleboxheight}%
  %\YAD@astuce@expressioncle%
  \noindent%
  \ifcsdef{printordernumber}{%
  \ifboolexpr{%
    bool {YAD@cover@page}%
    or (bool {YAD@nofrontcover} and test {\IfLanguageName{\YAD@mainlanguage}})%
  }{%
    \ifdraft{}{\vspace*{\stretch{1}}}%
    % \vspace*{\stretch{1}}%
    \raggedleft{%
      \itshape%
      \sffamily%
      \YAD@translation{ordernumber}%
      \IfLanguageName{french}{%
        \FBcolonspace%
      }{%
      }: \printordernumber%
    }%
  }{%
  }%
  \ifdraft{}{\vspace*{\stretch{.5}}}%
  % \vspace*{\stretch{.5}}%
  \par%
}{%
}%
    % \begin{minipage}[c][\YAD@otherboxheight][c]{\YAD@titleboxwidth}
    %   \ifdraft{}{\vspace*{\stretch{.25}}}%
    \begin{center}
      \YAD@ifemptyorundef{\printinstitute}{%
        \YAD@generic@argument@translate{institute}%
        \ifbool{YAD@noinstitute}{%
        }{%
          \YAD@ClassError[noinstitute]{%
            Institut de la these non specifie%
          }{%
            La commande \protect\institute\space n'a pas ete
            utilisee\MessageBreak%
            (celle-ci est requise) ou son argument obligatoire est
            vide\MessageBreak%
            (celui-ci doit etre renseigne).%
          }%
        }%
      }{%
        \YAD@translation{institute} \textbf{\textsc{\Large\printinstitute}}%
      }%
      \ifundef{\printcoinstitute}{%
      }{%
        \ifdraft{}{\vspace*{\stretch{.5}}}%
        % \vspace*{\stretch{.5}}%
        \par%
        \YAD@translation{coinstitute} \textbf{\textsc{\Large\printcoinstitute}}%
      }%
      \ifundef{\printcompany}{%
      }{%
        \ifdraft{}{\vspace*{\stretch{.5}}}%
        % \vspace*{\stretch{.5}}%
        \par%
        \YAD@translation{company} \textbf{\textsc{\Large\printcompany}}%
      }%
      \ifdraft{}{\vspace*{\stretch{1.5}}}%
      % \vspace*{\stretch{1.5}}%
      \par%
      \YAD@translation{doctoralschool}
      \YAD@ifemptyorundef{\printdoctoralschool}{%
        \YAD@generic@argument@translate{doctoralschool}%
        \ifbool{YAD@nodoctoralschool}{%
        }{%
          \YAD@ClassError[nodoctoralschool]{%
            Ecole doctorale de la these non specifiee%
          }{%
            la commande \protect\doctoralschool\space n'a pas ete
            utilisee\MessageBreak%
            (celle-ci est requise) ou son argument obligatoire est
            vide\MessageBreak%
            (celui-ci doit etre renseigne).%
          }%
        }%
      }{%
        \textbf{\printdoctoralschool}%
      }%
      \ifdraft{}{\vspace*{\stretch{.5}}}%
      % \vspace*{\stretch{.5}}%
      \par%
      \YAD@translation{universitydepartment}
      \ifdefstring{\YAD@main@laboratory@nonamelink}{true}{%
        \textbf{\printlaboratory{\YAD@main@laboratory@name}}%
      }{%
        \textbf{\printlaboratory[\YAD@main@laboratory@url]{\YAD@main@laboratory@name}}%
      }%
      \ifdraft{}{\vspace*{\stretch{1.5}}}%
      % \vspace*{\stretch{1.5}}%
      \par%
      {\large%
        \ifYAD@hdr%
        \YAD@translation{thesisdefendedby-hdr} %
        \else%
        \YAD@translation{thesisdefendedby} %
        \fi%
        \YAD@ifemptyorundef{\printauthor}{%
          \YAD@generic@argument@translate{author}%
          \ifbool{YAD@noauthor}{%
          }{%
            \YAD@ClassError[noauthor]{%
              Auteur de la these non specifie%
            }{%
              La commande \protect\author\space n'a pas ete utilisee (celle-ci
              est requise)\MessageBreak%
              ou ses 2 premiers arguments obligatoires sont vides\MessageBreak%
              (ceux-ci doivent etre renseignes).%
            }%
          }%
        }{%
          \textbf{\printauthor}%
        }%
      \ifboolexpr{%
          bool {YAD@submitted@work}%
          or bool {YAD@submitted@work@star}%
        }{%
          % \ifdraft{}{\vspace*{\stretch{1}}}%
          % \par%
          % \YAD@translation{estimateddefensedate}
          % \YAD@ifemptyorundef{\printdate}{%
          %   \YAD@generic@argument@translate{date}%
          % }{%
          %   \textbf{\printdate}%
          % }%
        }{%
          \ifdraft{}{\vspace*{\stretch{1}}}%
          % \vspace*{\stretch{1}}%
          \par%
          \YAD@translation{defendedon}
          \YAD@ifemptyorundef{\printdate}{%
            \YAD@generic@argument@translate{date}%
          }{%
            \textbf{\printdate}%
          }%
        }%
      }%
      \ifYAD@hdr%
      \else%
      \ifdraft{}{\vspace*{\stretch{1}}}%
      % \vspace*{\stretch{1}}%
      \par%
      \YAD@translation{aim}%
      \ifundef{\printinstitute}{%
        \YAD@generic@argument@translate{institute}%
      }{%
        \printinstitute*%
      }%
      \ifundef{\printcoinstitute}{%
      }{%
        \YAD@translation{aimand}%
        \printcoinstitute*%
      }%
      \fi%
      \ifdraft{}{\vspace*{\stretch{1}}}%
      % \vspace*{\stretch{1}}%
      \par%
      \large%
      \YAD@translation{academicfield}
      %
      \YAD@ifemptyorundef{\printacademicfield}{%
        \YAD@generic@argument@translate{academicfield}%
        \ifbool{YAD@noacademicfield}{%
        }{%
          \YAD@ClassError[noacademicfield]{%
            Champ disciplinaire de la these non specifie%
          }{%
            La commande \protect\academicfield\space n'a pas ete utilisee
            (celle-ci est requise)\MessageBreak%
            ou son argument obligatoire est vide (celui-ci doit etre renseigne).%
          }%
        }%
      }{%
        \textbf{\printacademicfield}%
      }%
      \ifundef{\printspeciality}{%
      }{%
        \ifdraft{}{\vspace*{\stretch{.5}}}%
        % \vspace*{\stretch{.5}}%
        \par%
        \large%
        \YAD@translation{speciality} \textbf{\printspeciality}%
      }
    \end{center}
  % \end{minipage}%
  \vspace*{\stretch{1}}%
  \begin{center}
    \ifthenelse{\equal{\cmdKV@YAD@frametitle}{none}}{%
    }{%
      \ifdraft{}{\vspace*{\stretch{2}}}%
      % \vspace*{\stretch{2}}%
    }{%
      \ifdraft{}{\vspace*{\stretch{.25}}}%
      % \vspace*{\stretch{.25}}%
    }%
    \usebox{\YAD@titlebox}%
    % \ifdraft{}{\vspace*{\stretch{2}}}%
    \vspace*{\stretch{2}}%
  \end{center}
  \noindent%
  \begin{minipage}[c][\YAD@otherboxheight][c]{\YAD@titleboxwidth}
    \YAD@supervisors@tabular%
    \par%
    \ifboolexpr{%
      bool {YAD@submitted@work}%
      or bool {YAD@submitted@work@star}%
    }{%
      \vphantom{\YAD@committee@tabular}%
    }{%
      \YAD@committee@tabular%
    }%
    \ifdraft{}{\vspace*{\stretch{.1}}}%
    % \vspace*{\stretch{.1}}%
  \end{minipage}
  \ifthenelse{\equal{\cmdKV@YAD@frametitle}{none}}{%
  }{%
    % \ifdraft{}{\vspace*{\stretch{2}}}%
    \vspace*{\stretch{2}}%
  }{%
  }%
  \ifbool{YAD@supervisor@specified}{%
  }{%
    \ifbool{YAD@nosupervisor}{%
    }{%
      \YAD@ClassError*[nosupervisor]{%
        Directeur de these non specifie%
      }{%
        La commande \protect\supervisor\space n'a pas ete utilisee\MessageBreak%
        (celle-ci est requise) ou ses arguments obligatoires sont
        vides\MessageBreak%
        (ceux-ci doivent etre renseignes).%
      }%
    }%
  }%
\endgroup%
\boolfalse{YAD@cover@page}%
}%
\expandafter\docsvlist{\YAD@mainlanguage}%
\ifbool{YAD@two@titles}{%
  \booltrue{YAD@second@title}%
  \ifthenelse{\equal{\YAD@mainlanguage}{french}}{%
    \ifbool{YAD@nofrontcover}{%
      \docsvlist{english}%
    }{%
      \docsvlist{french,english}%
    }%
  }{%
    \ifbool{YAD@nofrontcover}{%
      \docsvlist{french}%
    }{%
      \docsvlist{english,french}%
    }%
  }%
}{%
}%
\ifthenelse{\equal{\cmdKV@YAD@frametitle}{shadowbox}}{%
  \let\tcb@shadow@prepare=\origtcb@shadow@prepare%
}{%
}%
\expandafter\selectlanguage\expandafter{\YAD@mainlanguage}%
\pagestyle{preliminary}%
}%
\AtEndDocument{%
  \ifboolexpr{%
    bool {YAD@maketitle@used}%
    or bool {YAD@nomaketitle}%
  }{%
  }{%
    \YAD@ClassError*[nomaketitle]{%
      Commande \protect\maketitle\space non utilisee%
    }{%
      La commande \protect\maketitle\space n'a pas ete utilisee. Celle-ci est
      requise.%
    }%
  }%
}%
\newcommand{\keywords}[2]{%
  \booltrue{YAD@keywords@used}%
  \def\YAD@mainkeywords{#1}%
  \def\YAD@secondarykeywords{#2}%
  \ifthenelse{\isempty{#1}}{%
  }{%
    \ifthenelse{\isempty{#2}}{%
      \YAD@hypersetup{pdfkeywords={#1}}%
    }{%
      \YAD@hypersetup{pdfkeywords={#1} ({#2})}%
    }%
  }%
}%
\csdef{printkeywords}{%
  \expandafter\IfLanguageName{\YAD@mainlanguage}{%
    \YAD@ifemptyorundef{\YAD@mainkeywords}{%
      \YAD@generic@argument@translate{keywords}%
    }{%
      \MakeTextLowercase{\YAD@mainkeywords}%
    }%
  }{%
    \YAD@ifemptyorundef{\YAD@secondarykeywords}{%
      \YAD@generic@argument@translate{keywords}%
    }{%
      \MakeTextLowercase{\YAD@secondarykeywords}%
    }%
  }%
}%
\AtEndDocument{%
  \notbool{YAD@keywords@used}{%
    \ifbool{YAD@nokeywords}{%
    }{%
      \YAD@ClassError[nokeywords]{%
        Commande \protect\keywords\space non utilisee%
      }{%
        La commande \protect\keywords\space n'a pas ete utilisee. Celle-ci est
        requise.%
      }%
    }%
  }{%
    \ifdefempty{\YAD@mainkeywords}{%
      \YAD@ClassError[nokeywords]{%
        Mots cles dans la langue principale non specifies%
      }{%
        Les mots cles dans la langue principale\MessageBreak%
        (1er argument de la commande \protect\keywords) n'ont\MessageBreak%
        pas ete specifies. Ceux-ci sont requis.%
      }%
    }{%
      \csdef{YAD@metakeywords}{\YAD@mainkeywords} }%
    \ifdefempty{\YAD@secondarykeywords}{%
      \YAD@ClassError[nokeywords]{%
        Mots cles dans la langue secondaire non specifies%
      }{%
        Les mots cles dans la langue secondaire\MessageBreak%
        (2e argument de la commande \protect\keywords) n'ont\MessageBreak%
        pas ete specifies. Ceux-ci sont requis.%
      }%
    }{%
      \csdef{YAD@metakeywords}{\YAD@mainkeywords (\YAD@secondarykeywords)}%
    }%
  }%
}%
\csdef{makekeywords}{%
  \@ifstar{\@tempswatrue\csuse{YAD@starnostar@makekeywords}}{\@tempswafalse\csuse{YAD@starnostar@makekeywords}}%
}%
\csdef{YAD@starnostar@makekeywords}{%
  \cleardoublepage%
  \pagestyle{prepreliminary}%
  % \YAD@astuce@expressioncle%
  \if@tempswa%
  \else%
  \vspace*{\stretch{1}}%
  \fi
  \begin{flushleft}
    \begin{description}
      \renewcommand*{\do}[1]{%
        \expandafter\selectlanguage\expandafter{##1}%
      \item[\YAD@translation{keywords}\IfLanguageName{french}{\,}{}:]
        \YAD@ifemptyorundef{\printkeywords}{%
          \YAD@generic@argument@translate{keywords}%
        }{%
          \printkeywords%
        }%
      }%
      \expandafter\docsvlist{\YAD@mainlanguage}%
      \ifthenelse{\equal{\YAD@mainlanguage}{french}}{%
        \docsvlist{english}%
      }{%
        \docsvlist{french}%
      }%
    \end{description}
  \end{flushleft}
  \if@tempswa%
  \else%
  \vspace*{\stretch{1}}%
  \fi
  \expandafter\selectlanguage\expandafter{\YAD@mainlanguage}%
  \pagestyle{preliminary}%
}%
\DTLnewdb{laboratories}%
\newcommand{\laboratory}[3][]{%
  \DTLnewrow{laboratories}%
  \dtlexpandnewvalue%
  \yadsetup{%
    #1%
  }%
  \DTLnewdbentry{laboratories}{name}{#2}%
  \DTLnewdbentry{laboratories}{address}{#3}%
  \ifbool{YAD@nolaboratory}{%
  }{%
    \ifthenelse{\isempty{#2}}{%
      \YAD@ClassError[nolaboratory]{%
        Nom du laboratoire de la these vide%
      }{%
        Le 1er argument obligatoire de la commande
        \protect\laboratory\MessageBreak%
        est vide (celui-ci doit etre renseigne).%
      }%
    }{%
    }%
    \ifthenelse{\isempty{#3}}{%
      \YAD@ClassError[nolaboratory]{%
        Adresse du laboratoire de la these vide%
      }{%
        Le 2e argument obligatoire de la commande
        \protect\laboratory\MessageBreak%
        est vide (celui-ci doit etre renseigne).%
      }%
    }{%
    }%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@logo}{%
    \DTLnewdbentry{laboratories}{logo}{}%
  }{%
    \DTLnewdbentry{laboratories}{logo}{\cmdKV@YAD@logo}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@logoheight}{%
    \DTLnewdbentry{laboratories}{logoheight}{\YAD@default@logoheight}%
  }{%
    \DTLnewdbentry{laboratories}{logoheight}{\cmdKV@YAD@logoheight}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@url}{%
    \DTLnewdbentry{laboratories}{url}{}%
  }{%
    \DTLnewdbentry{laboratories}{url}{\cmdKV@YAD@url}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@telephone}{%
    \DTLnewdbentry{laboratories}{telephone}{}%
  }{%
    \DTLnewdbentry{laboratories}{telephone}{\cmdKV@YAD@telephone}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@fax}{%
    \DTLnewdbentry{laboratories}{fax}{}%
  }{%
    \DTLnewdbentry{laboratories}{fax}{\cmdKV@YAD@fax}%
  }%
  \YAD@ifemptyorundef{\cmdKV@YAD@email}{%
    \DTLnewdbentry{laboratories}{email}{}%
  }{%
    \DTLnewdbentry{laboratories}{email}{\cmdKV@YAD@email}%
  }%
  \ifbool{YAD@nonamelink}{%
    \DTLnewdbentry{laboratories}{nonamelink}{true}%
  }{%
    \DTLnewdbentry{laboratories}{nonamelink}{false}%
  }%
  %
  \DTLgetvalue{\YAD@main@laboratory@name}{laboratories}{1}{\dtlcolumnindex{laboratories}{name}}%
  \DTLgetvalue{\YAD@main@laboratory@address}{laboratories}{1}{\dtlcolumnindex{laboratories}{address}}%
  \DTLgetvalue{\YAD@main@laboratory@url}{laboratories}{1}{\dtlcolumnindex{laboratories}{url}}%
  \DTLgetvalue{\YAD@main@laboratory@nonamelink}{laboratories}{1}{\dtlcolumnindex{laboratories}{nonamelink}}%
  %
  \boolfalse{YAD@nonamelink}%
  \yadsetup{%
    logo=,%
    url=,%
    telephone=,%
    fax=,%
    email=,%
  }%
}%
\csdef{makelaboratory}{%
  \@ifstar{\@tempswatrue\csuse{YAD@starnostar@makelaboratory}}{\@tempswafalse\csuse{YAD@starnostar@makelaboratory}}%
}%
\csdef{YAD@starnostar@makelaboratory}{%
  \cleardoublepage%
  \pagestyle{prepreliminary}%
  \if@tempswa%
  \else%
  \vspace*{\stretch{1}}%
  \fi
  \noindent%
  \ifthenelse{\DTLrowcount{laboratories}>1}{%
    \ifYAD@hdr
    \YAD@translation{prepared-at-pl-hdr}%
    \else%
    \YAD@translation{prepared-at-pl}%
    \fi
  }{%
    \ifYAD@hdr
    \YAD@translation{prepared-at-hdr}%
    \else%
    \YAD@translation{prepared-at}%
    \fi
  }%
  \if@tempswa%
  \vspace*{\baselineskip}%
  \else%
  \vspace*{\stretch{.25}}%
  \fi
  \par%
  \ifthenelse{\DTLrowcount{laboratories}<1}{%
    \begin{minipage}[t]{\linewidth-\parindent}
      \YAD@reach@file{\YAD@generic@argument@translate{laboratory}}%
      \\[.1cm]
      \YAD@reach@file{\YAD@generic@argument@translate{laboratoryaddress}}%
    \end{minipage}
  }{%
  }%
  \DTLforeach*{laboratories}{%
    \YAD@laboratory@name=name,%
    \YAD@laboratory@address=address,%
    \YAD@laboratory@url=url,%
    \YAD@laboratory@logo=logo,%
    \YAD@laboratory@logoheight=logoheight,%
    \YAD@laboratory@telephone=telephone,%
    \YAD@laboratory@fax=fax,%
    \YAD@laboratory@email=email,%
    \YAD@laboratory@nonamelink=nonamelink%
  }{%
    \ifthenelse{\DTLiseq{\YAD@laboratory@logo}{}}{%
      \setlength{\YAD@laboratory@width}{\linewidth-\parindent}%
    }{%
      \setlength{\YAD@laboratory@width}{.625\linewidth-\parindent}%
    }%
    \begin{minipage}[t]{\YAD@laboratory@width}
      \textbf{\printlaboratory[\YAD@laboratory@url]{\YAD@laboratory@name}}%
      \\[.1cm]
      \printlaboratoryaddress{\YAD@laboratory@address}%
      \\[.25cm]
      \begin{tabular}{@{}ll}
        \ifthenelse{\DTLiseq{\YAD@laboratory@telephone}{}}{%
        }{%
          \YAD@translation{phone} & \YAD@reach@file{\YAD@laboratory@telephone} \\%
        }%
        \ifthenelse{\DTLiseq{\YAD@laboratory@fax}{}}{%
        }{%
          \YAD@translation{fax}  & \YAD@reach@file{\YAD@laboratory@fax}      \\%
        }%
        \ifthenelse{\DTLiseq{\YAD@laboratory@email}{}}{%
        }{%
          \YAD@translation{email} &
          \YAD@reach@file{%
            \YAD@ifemptyorundef{\YAD@laboratory@email}{%
              % \ifbool{YAD@nolink}{%
                \YAD@generic@argument@translate{laboratoryemail}%
              % }{%
              %   \YAD@href{mailto:laboratory@institute.fr}{\YAD@generic@argument@translate{laboratoryemail}}%
              % }%
            }{%
              % \ifbool{YAD@nolink}{%
              %   \YAD@nolinkurl{\YAD@laboratory@email}%
              % }{%
                \YAD@href{mailto:\YAD@laboratory@email}{\YAD@nolinkurl{\YAD@laboratory@email}}%
              % }%
            }%
          }%
          \\%
        }%
        \ifthenelse{\DTLiseq{\YAD@laboratory@url}{}}{%
        }{%
          \YAD@translation{website} & % \printlaboratoryurl
          \def\YAD@texteurl{%
            \YAD@ifemptyorundef{\YAD@laboratory@url}{%
              \YAD@reach@file{\YAD@generic@argument@translate{urllaboratory}}%
            }{%
              \YAD@reach@file{\YAD@nolinkurl{\YAD@laboratory@url}}%
            }%
          }%
          \YAD@ifemptyorundef{\YAD@laboratory@url}{%
            % \ifbool{YAD@nolink}{%
            %   \YAD@texteurl%
            % }{%
              % \YAD@href{www.laboratory.fr}{%
                \YAD@texteurl%
              % }%
            % }%
          }{%
            \ifdraft{%
              \YAD@texteurl%
            }{%
              % \ifbool{YAD@nolink}{%
              %   \YAD@nolinkurl{\YAD@laboratory@url}%
              % }{%
                \YAD@url{%
                  \YAD@laboratory@url%
                }%
              % }%
            }%
          }%
        }%
      \end{tabular}%
    \end{minipage}
    \ifthenelse{\DTLiseq{\YAD@laboratory@logo}{}}{%
    }{%
      \hspace{\stretch{1}}%
      \begin{minipage}[t]{.325\linewidth}
        \def\YAD@logo{%
          \YAD@ifemptyorundef{\YAD@laboratory@logo}{%
            \YAD@reach@file{\YAD@generic@argument@translate{logolaboratory}}%
          }{%
            \YAD@reach@file{%
              \includegraphics[height=\YAD@laboratory@logoheight,valign=t]{\YAD@laboratory@logo}%
            }%
          }%
        }%
        \if@tempswa%
        \else%
        \hspace{\stretch{1}}%
        % \ifbool{YAD@nolink}{%
        %   \YAD@logo%
        % }{%
          \YAD@ifemptyorundef{\YAD@laboratory@url}{%
            % \YAD@href{www.laboratory.fr}{%
              \YAD@logo%
            % }%
          }{%
            \YAD@href{\YAD@laboratory@url}{\YAD@logo}%
          }%
        % }%
        \fi%
      \end{minipage}%
    }%
    \par%
    \DTLiflastrow{%
      \vspace*{\stretch{1}}%
    }{%
      \if@tempswa%
      \vspace*{\baselineskip}%
      \else%
      \vspace*{\stretch{.25}}%
      \fi%
    }%
    \setlength\cmdKV@YAD@logoheight{\YAD@default@logoheight}%
  }%
  \ifthenelse{\DTLrowcount{laboratories}<1}{%
    \vspace*{\stretch{1}}%
  }{%
  }%
  \pagestyle{preliminary}%
}%
\csgdef{YAD@abstractname@mainlanguage}{\abstractname}%
\csgdef{YAD@abstractname@secondarylanguage}{\abstractname}%
\newcommand{\YAD@abstract}[1]{%
  \ifstrempty{#1}{%
    \ifnumcomp{\value{YAD@abstracts}}{>}{0}{%
      \global\booltrue{YAD@second@abstract@empty}%
    }{%
      \global\booltrue{YAD@main@abstract@empty}%
    }%
  }{%
    \begin{minipage}{\linewidth}
      \small%
      #1%
    \end{minipage}%
  }%
}
\newenvironment{abstract}[1][\abstractname]{%
  \global\booltrue{YAD@abstract@used}%
  \ifnumcomp{\value{YAD@abstracts}}{>}{0}{%
    \global\booltrue{YAD@second@abstract@used}%
    \csgdef{YAD@abstractname@secondarylanguage}{#1}%
    \lrbox{\YAD@abstract@secondarylanguage}%
    \expandafter\selectlanguage\expandafter{\YAD@secondarylanguage}%
  }{%
    \csgdef{YAD@abstractname@mainlanguage}{#1}%
    \lrbox{\YAD@abstract@mainlanguage}%
  }%
  \Collect@Body\YAD@abstract%
}{%
  \endlrbox%
  \stepcounter{YAD@abstracts}%
}%
\newcommand{\YAD@abstract@page}{%
  \bgroup%
  \enlargethispage{2cm}%
  \setlength{\parindent}{0pt}%
  \begin{minipage}{\linewidth}
    \small%
    {%
      \bfseries%
      \YAD@ifemptyorundef{\printtitle}{%
        \YAD@generic@argument@translate{title}%
      }{%
        \textsc{\printtitle}%
      }%
      \ifundef{\printsubtitle}{%
      }{%
        \newline%
        \printsubtitle%
      }%
      \vspace{-.5em}%
      \vspace{\z@}%
      \begin{center}%
        \YAD@abstractname@mainlanguage%
      \end{center}%
    }%
    \par%
    \ifboolexpr{%
      bool {YAD@abstract@used}%
      and not bool {YAD@main@abstract@empty}%
    }{%
      \usebox{\YAD@abstract@mainlanguage}%
    }{%
      \YAD@generic@argument@translate{abstract}%
    }%
    \ifundef{\printkeywords}{%
    }{%
      \vspace{.5em}%
      \begin{description}
      \item[\YAD@translation{keywords}\IfLanguageName{french}{\ifundef{\Fcolonspace}{\FBcolonspace}{\Fcolonspace}}{}:]
        \printkeywords
      \end{description}
    }%
  \end{minipage}%
  \ifbool{YAD@second@abstract@used}{%
    \expandafter\selectlanguage\expandafter{\YAD@secondarylanguage}%
    \\[.5\baselineskip]%
    \YAD@abstract@page@rule%
    \\[.5\baselineskip]%
    \begin{minipage}{\linewidth}
      \small%
      {%
        \bfseries%
        \YAD@ifemptyorundef{\printtitle}{%
          \YAD@generic@argument@translate{title}%
        }{%
          \textsc{\printtitle}%
        }%
        \ifundef{\printsubtitle}{%
        }{%
          \newline%
          \printsubtitle%
        }%
        \vspace{-.5em}%
        \vspace{\z@}%
        \begin{center}%
          \YAD@abstractname@secondarylanguage%
        \end{center}%
      }%
      \par%
      \ifboolexpr{%
        bool {YAD@abstract@used}%
        and not bool {YAD@second@abstract@empty}%
      }{%
        \usebox{\YAD@abstract@secondarylanguage}%
      }{%
        \YAD@generic@argument@translate{abstract}%
      }%
      \ifundef{\printkeywords}{%
      }{%
        \vspace{.5em}%
        \begin{description}
        \item[\YAD@translation{keywords}\IfLanguageName{french}{\ifundef{\Fcolonspace}{\FBcolonspace}{\Fcolonspace}}{}:]
          \textnormal{\printkeywords}
        \end{description}
      }%
    \end{minipage}%
  }{%
  }%
    \\[.5\baselineskip]%
  \YAD@abstract@page@rule%
  % \par%
  % \textbf{\printlaboratory*}%
  % \\%
  % \let\YAD@ORI@doublebackslash\\%
  % \renewcommand{\\}{ -- }%
  % \printlaboratoryaddress%
  % \let\\\YAD@ORI@doublebackslash%
  \egroup%
}%
\newcommand{\YAD@laboratory@abstract@page}{%
  \ifnumgreater{\cmdKV@YAD@numlaboratories}{0}{%
    \begin{minipage}[t]{\linewidth}
      \let\YAD@ORI@doublebackslash\\%
      \renewcommand{\\}{ -- }%
      \DTLforeach*{laboratories}{%
        \YAD@laboratory@name=name,%
        \YAD@laboratory@address=address%
      }{%
        \DTLiffirstrow{}{\newline}%
        \textbf{\printlaboratory{\YAD@laboratory@name}}%
        \ifnumgreater{\cmdKV@YAD@numlaboratories}{1}{%
          \\%
        }{%
          \newline%
        }
        \printlaboratoryaddress{\YAD@laboratory@address}%
        \ifthenelse{\value{DTLrowi}=\cmdKV@YAD@numlaboratories}{\dtlbreak}{}%
      }%
    \end{minipage}%
  }{%
  }%
}%
\newcommand{\makeabstract}{%
  \ifbool{YAD@nomakeabstract}{%
  }{%
    \YAD@alarm@noabstract%
  }%
  \pagestyle{preliminary}%
  \YAD@phantomsection%
  \addcontentsline{toc}{chapter}{\abstractname}%
  \booltrue{YAD@makeabstract@used}%
  \bgroup%
  \addtolength{\footskip}{6pt minus 6pt}%
  \setfootrule{0pt}%
  \setfoot[][%
  \ifboolexpr{%
    bool {YAD@inprogress@work}%
    or bool {YAD@inprogress@work@star}%
  }{%
    \textsc{\translate{lbl-inprogressfoottext} \today}%
  }{%
    \ifboolexpr{%
      bool {YAD@submitted@work@star}%
    }{%
      \textsc{\translate{lbl-submittedfoottext} \today}%
    }{%
    }%
  }%
  ][]{%
    % \medskip\par%
    \YAD@laboratory@abstract@page%
  }{}{}%
  \cleardoublepage%
  \renewcommand{\YAD@chapter@header}{\abstractname}%
  \renewcommand{\YAD@section@header}{\abstractname}%
  \YAD@abstract@page%
  \cleardoublepage%
  \egroup%
  \YAD@nolaboratorytrue%
  \YAD@nolaboratoryadresstrue%
}%
\newcommand{\YAD@abstract@page@rule}[1][black]{\bgroup\color{#1}\noindent\rule[2pt]{\linewidth}{2pt}\egroup}
\AtEndDocument{%
  \ifbool{YAD@makeabstract@used}{%
  }{%
    \ifbool{YAD@nomakeabstract}{%
    }{%
      \YAD@ClassError*[nomakeabstract]{%
        Commande \protect\makeabstract\space non utilisee%
      }{%
        La commande \protect\makeabstract\space n'a pas ete\MessageBreak%
        utilisee. Celle-ci est requise.%
      }%
    }%
  }%
}%
\newcommand{\YAD@alarm@noabstract}{%
  \ifbool{YAD@abstract@used}{%
    \ifbool{YAD@main@abstract@empty}{%
      \ifnumcomp{\value{YAD@abstracts}}{>}{1}{%
        \YAD@ClassError[noabstract]{%
          Contenu de la 1re occurrence de `abstract' vide%
        }{%
          La 1re occurrence de l'environnement `abstract' a ete
          utilisee\MessageBreak%
          avec un contenu vide.  Un contenu non vide est requis.%
        }%
      }{%
        \YAD@ClassError[noabstract]{%
          Contenu de l'environnement `abstract' vide%
        }{%
          L'environnement `abstract' a ete utilise mais avec un contenu
          vide.\MessageBreak%
          Un contenu non vide est requis.%
        }%
      }%
    }{%
    }%
    \ifbool{YAD@second@abstract@empty}{%
      \YAD@ClassError[noabstract]{%
        Contenu de la 2e occurrence de `abstract' vide%
      }{%
        La 2e occurrence de l'environnement `abstract' a ete
        utilisee\MessageBreak%
        avec un contenu vide.  Un contenu non vide est requis.%
      }%
    }{%
    }%
  }{%
    \ifbool{YAD@noabstract}{%
    }{%
      \YAD@ClassError[noabstract]{%
        Environnement `abstract' non utilise%
      }{%
        L'environnement `abstract' n'a pas ete utilise. Celui-ci est requis.%
      }%
    }%
  }%
}%
\newcommand{\makebackcover}{%
  \YAD@alarm@noabstract%
  \cleardoublepage%
  \pagestyle{backcover}%
  \YAD@abstract@page%
}%
        \csdef{makededications}{%
        \@ifstar{\@tempswatrue\csuse{YAD@starnostar@makededications}}{\@tempswafalse\csuse{YAD@starnostar@makededications}}%
        }%
        \csdef{YAD@starnostar@makededications}{%
        \pagestyle{prepreliminary}%
        \cleardoublepage%
        \if@tempswa%
        \else%
        \vspace*{\stretch{2}}%
        \fi%
        \DTLifdbempty{dedications}{%
        \YAD@generic@argument@translate{dedications}%
        \YAD@ClassError{%
        \protect\makededications\space utilisee/\protect\dedication\space non
        utilisee%
        }{%
        La commande \protect\makededications\space a ete utilisee mais la
        commande \protect\dedication,\MessageBreak%
        permettant de preparer des dedicaces, n'a pas ete utilisee.%
        }%
        }{%
        \begin{flushright}
          \itshape%
          \DTLforeach*{dedications}{%
            \YAD@dedication=dedication%
          }{%
            \YAD@ifemptyorundef{\YAD@dedication}{%
              \YAD@generic@argument@translate{dedication}%
              \YAD@ClassError{%
                Dedicace vide%
              }{%
                L'argument obligatoire d'une commande \protect\dedication\space est
                vide\MessageBreak%
                (celui-ci doit etre renseigne).%
              }%
            }{%
              \YAD@dedication%
            }%
            \par%
            \DTLiflastrow{%
            }{%
              \if@tempswa%
              \vspace*{\baselineskip}%
              \else%
              \vspace*{\stretch{1}}%
              \fi
            }%
          }%
        \end{flushright}
        }%
        \if@tempswa%
        \else%
        \vspace*{\stretch{2}}%
        \fi
        }%
\csdef{makefrontepigraphs}{%
  \@ifstar{\@tempswatrue\csuse{YAD@starnostar@makefrontepigraphs}}{\@tempswafalse\csuse{YAD@starnostar@makefrontepigraphs}}%
}%
\csdef{YAD@starnostar@makefrontepigraphs}{%
  \patchcmd{\epigraphs}{\qitemlabel}{\qitemlabel\itemsep=1.5\baselineskip}{}{}%
  \cleardoublepage%
  \if@tempswa%
  \else%
  \vspace*{\stretch{2}}%
  \fi
  \DTLifdbempty{frontepigraphs}{%
    \setlength\epigraphrule{0pt}%
    \begin{epigraphs}
      \qitem{\YAD@generic@argument@translate{epigraphs}}{}%
    \end{epigraphs}
    \YAD@ClassError{%
      \protect\makefrontepigraphs\space utilisee/\protect\frontepigraph\space
      non utilisee%
    }{%
      La commande \protect\makefrontepigraphs\space a ete utilisee mais la
      commande\MessageBreak%
      \protect\frontepigraph, permettant de preparer des epigraphes, n'a pas
      ete utilisee.%
    }{%
    }%
  }{%
    \begin{epigraphs}
      \DTLforeach*{frontepigraphs}{%
        \YAD@epigraphlanguage=epigraphlanguage,%
        \YAD@epigraph=epigraph,%
        \YAD@epigraphauthor=epigraphauthor%
      }{%
        \YAD@ifemptyorundef{\YAD@epigraph}{%
          \renewcommand{\YAD@epigraph}{%
            \YAD@generic@argument@translate{epigraph}%
          }%
          \YAD@ClassError{%
            Epigraphe vide%
          }{%
            L'argument obligatoire d'une commande \protect\frontepigraph\space
            est vide\MessageBreak%
            (celui-ci doit etre renseigne).%
          }%
        }{%
        }%
        \ifthenelse{\equal{\YAD@mainlanguage}{\YAD@epigraphlanguage}}{%
          \qitem{\YAD@epigraph}{\YAD@epigraphauthor}%
        }{%
          \bgroup%
          \expandafter\selectlanguage\expandafter{\YAD@epigraphlanguage}%
          \qitem{\YAD@epigraph}{\YAD@epigraphauthor}%
          \egroup%
        }%
        \DTLiflastrow{%
        }{%
          \if@tempswa%
          % \vspace*{2cm}%
          \else%
          % \vspace*{\stretch{1}}%
          \fi
        }%
      }%
    \end{epigraphs}
  }%
  \if@tempswa%
  \else%
  \vspace*{\stretch{2}}%
  \fi
}%
\newenvironment{epigraphspage}{%
  \patchcmd{\epigraphs}{\qitemlabel}{\qitemlabel\itemsep=1.5\baselineskip}{}{}
  \cleardoublepage%
  \vspace*{\stretch{1}}%
}{%
  \vspace*{\stretch{1}}%
}%
\BeforeBeginEnvironment{epigraphspage}{%
  \pagestyle{prepreliminary}%
}%
\AfterEndEnvironment{epigraphspage}{%
  \pagestyle{preliminary}%
}%
\let\YAD@ORI@chapter\chapter%
\AfterPreamble{% delay the redefinition when titlesec has done its own
  \renewcommand\chapter{%
    \cleardoublepage%
    \YAD@phantomsection%
    \ifbool{YAD@output@paper}{%
    }{%
      \YAD@bookmarksetup{startatroot}%
    }%
    \@ifstar{\YAD@starred@chapter}{\YAD@unstarred@chapter}%
  }%
  \newcommand{\YAD@starred@chapter}{%
    \setsecnumdepth{none}%
    \YAD@ORI@chapter%
  }%
  \newcommand{\YAD@unstarred@chapter}{%
    \if@mainmatter%
    \resetsecnumdepth*%
    \fi%
    \YAD@ORI@chapter%
  }%
  % \newcommand{\YAD@arg@chapter}[2][]{%
  %   \ifthenelse{\isempty{#1}}{%
  %     \YAD@ORI@chapter{#2}%
  %     \def\chaptertitle{#2}%
  %   }{%
  %     \YAD@ORI@chapter[#1]{#2}%
  %     \def\chaptertitle{#1}%
  %   }%
  % }%
  % \newcommand{\YAD@noarg@chapter}[1]{%
  %   \YAD@ORI@chapter{#1}%
  %   \def\chaptertitle{#1}%
  % }%
  % \xpatchcmd{\tableofcontents}{\chapter}{\YAD@ORI@chapter}{}{}%
  % \xpatchcmd{\shorttableofcontents}{\chapter}{\YAD@ORI@chapter}{}{}%
  % \xpatchcmd{\listoftables}{\chapter}{\YAD@ORI@chapter}{}{}%
  % \xpatchcmd{\listoffigures}{\chapter}{\YAD@ORI@chapter}{}{}%
  \@ifpackageloaded{floatrow}{%
    \xpatchcmd{\float@listhead}{\chapter}{\YAD@ORI@chapter}{}{}%
  }{%
  }%
  \@ifpackageloaded{tocbibind}{%
    \renewcommand{\toc@chapter}[1]{%
      \chapter*{#1}\prw@mkboth{#1}%
      % \addcontentsline{toc}{chapter}{#1}% < Suppression par rapport à l'original
    }%
  }{%
  }%
}%
\xpretocmd{\part}{\setsecnumdepth{\YAD@secnumdepth}}{}{}%
\disclaimer{%
  \IfLanguageName{french}{%
    \ifundef{\printinstitute}{%
      L'\YAD@generic@argument@translate{institute}
    }{%
      \YAD@if@starts@with@vowel{\YAD@institute}{L'}{Le }\printinstitute*
    }%
    %
    \ifundef{\printcoinstitute}{%
      n'entend
    }{%
      et
      \YAD@if@starts@with@vowel{\YAD@coinstitute}{l'}{le }\printcoinstitute*
      n'entendent
    }%
    %
    donner aucune approbation ni improbation aux opinions \'emises dans les
    th\`eses : ces opinions devront \^etre consid\'er\'ees comme propres \`a
    leurs auteurs.%
  }{%
    The \printinstitute{}
    %
    \ifundef{\printcoinstitute}{}{and the \printcoinstitute{}}
    %
    neither endorse nor censure authors' opinions expressed in the theses:
    these opinions must be considered to be those of their authors.%
  }%
}%
\csdef{makedisclaimer}{%
  \@ifstar{\@tempswatrue\csuse{YAD@starnostar@makedisclaimer}}{\@tempswafalse\csuse{YAD@starnostar@makedisclaimer}}%
}%
\csdef{YAD@starnostar@makedisclaimer}{%
  \pagestyle{prepreliminary}%
  \if@tempswa%
  \else%
  \vspace*{\stretch{1}}%
  \fi%
  \printdisclaimer%
  \if@tempswa%
  \else%
  \vspace*{\stretch{1}}%
  \fi%
  \pagestyle{preliminary}%
}%
\AtBeginDocument{%
  \ifthenelse{\equal{\YAD@mainlanguage}{french}}{%
    \YAD@hypersetup{pdflang=fr}%
  }{%
    \YAD@hypersetup{pdflang=en}%
  }%
}%
\AtEndPreamble{%
  \@ifpackageloaded{biblatex}{%
    \defbibheading{bibintoc}[\bibname]{\chapter*{#1}}%
    \defbibheading{subbibintoc}[\bibname]{\section{#1}}%
    \@ifpackageloaded{csquotes}{%
      \SetCiteCommand{\autocite}%
    }{%
    }%
    \let\YAD@printbibliography@ORI\printbibliography%
    \renewcommand{\printbibliography}[1][]{%
      \booltrue{YAD@printbibliography@used}%
      \pagestyle{biblio}%
      \YAD@printbibliography@ORI[heading=bibintoc,#1]%
      \pagestyle{ordinary}%
    }%
  }{%
  }%
}%
\AtEndDocument{%
  \ifbool{YAD@printbibliography@used}{%
  }{%
    \ifbool{YAD@noprintbibliography}{%
    }{%
      \YAD@ClassError*[noprintbibliography]{%
        Commande \protect\printbibliography\space non utilisee%
      }{%
        La commande \protect\printbibliography\space n'a pas ete utilisee. Celle-ci est
        requise.%
      }%
    }%
  }%
}%
\hopatch@AfterPackage{glossaries}{%
  \ifbool{YAD@output@paper}{%
    \ifbool{YAD@output@paper@star}{%
    }{%
      \renewcommand{\glsnavigation}{}%
    }%
  }{%
  }%
  \newcommand{\newglssymbol}[5][]{%
    \@ifpackageloaded{glossaries}{%
      \ifthenelse{\isempty{#1}}{%
        \newglossaryentry{#2}{%
          type=symbols,%
          symbol={#3},%
          name={#4},%
          description={#5},%
          sort={#2}%
        }%
}{%
  \newglossaryentry{#2}{%
    type=symbols,%
    symbol={#3},%
    name={#4},%
    description={#5},%
    sort={#1}%
  }%
}%
}{%
  \ClassError{yathesis}{}{%
    Commande \protect\newglssymbol\space utilisee sans que 'glossaries' soit
    charge%
  }{%
    La commande \protect\newglssymbol ne peut etre\MessageBreak%
    utilisee que si le package 'glossaries' est charge%
  }%
}%
}%
\newglossarystyle{yadsymbolstyle}{%
  % put the glossary in the itemize environment:
  \renewenvironment{theglossary}%
  {\begin{description}}{\end{description}}%
  % have nothing after \begin{theglossary}:
  \renewcommand*{\glossaryheader}{}%
  % have nothing between glossary groups:
  \renewcommand*{\glsgroupheading}[1]{}%
  \renewcommand*{\glsgroupskip}{}%
  % set how each entry should appear:
  \renewcommand*{\glossentry}[2]{%
  \item[\textmd{\glossentrysymbol{##1}}]
    \glstarget{##1}{\glossentryname{##1}}% the entry name
    \ifthenelse{\equal{\glossentrydesc{##1}}{}}{%
    }{%
      \space (\glossentrydesc{##1})% the description
    }%
    \hfill ##2% the number list in square brackets
  }%
  % set how sub-entries appear:
  \renewcommand*{\subglossentry}[3]{%
    \glossentry{##2}{##3}}%
}%
\ifundef{\printsymbols}{%
  \newcommand{\printsymbols}[1][]{%
    \printglossary[type=symbols,style=yadsymbolstyle,#1]%
  }%
}{%
  \renewcommand{\printsymbols}[1][]{%
    \printglossary[type=symbols,style=yadsymbolstyle,#1]%
  }%
}%
\AtEndPreamble{%
  \@ifpackageloaded{glossaries}{%
    \RequirePackage{glossaries-babel}%
  }{%
  }%
}%
}%
\AtEndPreamble{%
  \ifPDFTeX
  \shorthandon{;:!?}%
  \fi
  \InputIfFileExists{\YAD@configuration@directory/\YAD@configuration@file}%
  {\ClassInfo{yathesis}{%
    Fichier de configuration local \YAD@configuration@file\space
    trouve%
    }%
  }{%
    % \YAD@ClassWarningNoLine{%
    %   Fichier de configuration local
    %   \YAD@configuration@file\space introuvable%
    % }%
  }%
  \ifPDFTeX
  \shorthandoff{;:!?}%
  \fi
}%
\AtEndPreamble{%
  \ifPDFTeX
  \shorthandon{;:!?}%
  \fi
  \InputIfFileExists{\YAD@configuration@directory/\YAD@characteristics@file}%
  {%
    \ClassInfo{yathesis}{%
      Fichier \YAD@characteristics@file\space des donnees du document trouve%
    }%
  }%
  {%
    % \YAD@ClassWarningNoLine{%
    %   Fichier \YAD@characteristics@file\space des donnees du titre
    %   introuvable.\MessageBreak%
    %   Le fichier \YAD@characteristics@file\space n'a pas ete trouve\MessageBreak%
    %   dans le dossier `\YAD@configuration@directory'.\MessageBreak Ce fichier
    %   \YAD@characteristics@file\space peut faciliter l'usage\MessageBreak de la classe%
    % }%
  }%
  \ifPDFTeX
  \shorthandoff{;:!?}%
  \fi
}%
\AtEndDocument{%
  \ifbool{YAD@tableofcontents@used}{%
  }{%
    \ifbool{YAD@notableofcontents}{%
    }{%
      \YAD@ClassError*[notableofcontents]{%
        Commande \protect\tableofcontents\space non utilisee%
      }{%
        La commande \protect\tableofcontents\space n'a pas ete utilisee. Celle-ci
        est requise.%
      }%
    }%
  }%
}%
\expression{meta-logopres}{logo PRES}{logo PRES}
\expression{meta-logoinstitute}{logo de l'institut}{logo de l'institut}
\expression{meta-institute}{institut principal}{institut principal}
\expression{meta-coinstitute}{institut de cotutelle}{institut de cotutelle}
\expression{meta-logocoinstitute}{logo de l'institut de cotutelle}{logo de l'institut de cotutelle}
\expression{meta-doctoralschool}{\'ecole doctorale}{\'ecole doctorale}
\expression{meta-laboratory}{nom du laboratoire}{nom du laboratoire}
\expression{meta-logolaboratory}{logo du laboratoire}{logo du laboratoire}
\expression{meta-author}{pr\'enom et nom de l'auteur}{pr\'enom et nom de l'auteur}
\expression{meta-date}{date de la soutenance}{defense date}
\expression{meta-submissiondate}{date de la soumission}{submission date}
\expression{meta-academicfield}{discipline}{academic field}
\expression{meta-speciality}{sp\'ecialit\'e}{speciality}
\expression{meta-title}{titre du m\'emoire de th\`ese}{thesis title}
\expression{meta-subtitle}{sous-titre du m\'emoire de th\`ese}{thesis subtitle}
\expression{meta-firstname}{Pr\'enom}{Pr\'enom}
\expression{meta-lastname}{Nom}{Nom}
\expression{meta-role}{fonction}{fonction}
\expression{meta-corporation}{corporation}{corporation}
\expression{meta-corps}{corps}{corps}
\expression{meta-affiliation}{affiliation}{affiliation}
\expression{meta-introduction}{introduction}{introduction}%
\expression{meta-conclusion}{conclusion}{conclusion}%
\expression{meta-keywords}{mot(s) cl\'e(s) de la th\`ese}{thesis keyword(s)}
\expression{meta-laboratoryaddress}{adresse du laboratoire}{adresse du laboratoire}
\expression{meta-laboratorytelephone}{t\'el\'ephone du laboratoire}{t\'el\'ephone du laboratoire}
\expression{meta-laboratoryfax}{fax du laboratoire}{fax du laboratoire}
\expression{meta-laboratoryemail}{email du laboratoire}{email du laboratoire}
\expression{meta-urllaboratory}{URL du laboratoire}{URL du laboratoire}
\expression{meta-dedication}{d\'edicace}{dedication}
\expression{meta-dedications}{d\'edicaces}{dedications}
\expression{meta-epigraph}{\'epigraphe}{epigraph}
\expression{meta-epigraphs}{\'epigraphes}{epigraphs}
\expression{meta-abstract}{r\'esum\'e}{abstract}%
\expression{meta-ordernumber}{num\'ero d'ordre}{order number}%
\expression{coinstitute}{}{}%
\expression{company}{}{}%
\expression{institute}{}{}%
\expression{email}{\Email}{\Email}%
\expression{phone}{\Telefon}{\Telefon}%
\expression{fax}{\Fax}{\Fax}%
\expression{caution}{Avertissement}{Caution}%
\expression{draft}{brouillon}{draft}%
\expression{prepared-at}{Cette th\`ese a \'et\'e pr\'epar\'ee au}{This
  thesis has been prepared at}%
\expression{prepared-at-pl}{Cette th\`ese a \'et\'e pr\'epar\'ee dans les
  laboratoires suivants.}{This thesis has been prepared at the following
  research units.}%
\expression{prepared-at-hdr}{Cette \textsc{hdr} a \'et\'e pr\'epar\'ee au}{This
  habilitation to conduct research has been prepared at}%
\expression{prepared-at-pl-hdr}{Cette \textsc{hdr} a \'et\'e pr\'epar\'ee dans
  les laboratoires suivants.}{This habilitation to conduct research has been
  prepared at the following research units.}%
\expression{juniorresearcher}{charg\'e de recherche}{Junior Researcher}%
\expression{juniorresearcherfem}{charg\'ee de recherche}{Junior Researcher}%
\expression{juniorresearcher*}{charg\'e de recherche
  \textsc{hdr}}{\textsc{hdr} Junior Researcher}%
\expression{juniorresearcherfem*}{charg\'ee de recherche
  \textsc{hdr}}{\textsc{hdr} Junior Researcher}%
\expression{cosupervisor}{co-directeur}{Co-Supervisor}%
\expression{cosupervisorfem}{co-directrice}{Co-Supervisor}
\expression{comonitor}{co-encadrant}{Co-Monitor}%
\expression{comonitorfem}{co-encadrante}{Co-Monitor}
\expression{committeemembers}{Composition du jury}{Committee members}%
\expression{estimateddefensedate}{Date de soutenance pr\'evue le}{Defense
  date scheduled on}%
\expression{supervisor}{directeur}{Supervisor}%
\expression{supervisorfem}{directrice}{Supervisor}
\expression{seniorresearcher}{directeur de recherche}{Senior Researcher}%
\expression{seniorresearcherfem}{directrice de recherche}{Senior Researcher}%
\expression{supervisors-in-committee}{Directeur de th\`ese}{Supervisor}%
\expression{supervisors-in-committee-pl}{Directeurs de th\`ese}{Supervisors}%
\expression{supervisors-in-committee-hdr}{Directeur}{Supervisor}%
\expression{supervisors-in-committee-pl-hdr}{Directeurs}{Supervisors}%
\expression{academicfield}{Discipline}{Academic Field}%
\expression{doctoralschool}{\'Ecole doctorale}{Doctoral School}%
\expression{aim}{En vue de l'obtention du grade de docteur de l'}{In order
  to become Doctor from }%
\expression{aimand}{ et de l'}{ and from }%
\expression{examiners}{Examinateur}{Examiner}%
\expression{examiners-pl}{Examinateurs}{Examiners}%
\expression{guests}{Invit\'e}{Guest}%
\expression{guests-pl}{Invit\'es}{Guests}%
\expression{mcf}{\textsc{mcf}}{Lecturer}%
\expression{mcf*}{\textsc{mcf} \textsc{hdr}}{\textsc{hdr} Lecturer}%
\expression{keywords}{Mots cl\'es}{Keywords}%
\expression{ordernumber}{Num\'ero d'ordre}{Order Number}%
\expression{committeepresident}{pr\'esident du jury}{Committee President}%
\expression{committeepresidentfem}{pr\'esidente du jury}{Committee President}%
\expression{professor}{professeur}{Professor}%
\expression{professorfem}{professeure}{Professor}%
\expression{referees}{Rapporteur}{Referee}%
\expression{referees-pl}{Rapporteurs}{Referees}%
\expression{website}{Site}{Web Site}%
\expression{defendedon}{Soutenue le}{Defended on}%
\expression{speciality}{Sp\'ecialit\'e}{Speciality}%
\expression{supervisedby}{Th\`ese dirig\'ee par}{Thesis supervised by}%
\expression{supervisedby-hdr}{Directeurs}{Supervisors}%
\expression{thesisdefendedby}{Th\`ese pr\'esent\'ee par}{Thesis defended
  by}%
\expression{thesisdefendedby-hdr}{Habilitation \`a diriger les recherches
  pr\'esent\'ee par}{Habilitation to conduct research defended by}%
\expression{thesistitle}{Titre de la th\`ese}{Thesis Title}%
\expression{thesistitle-hdr}{Titre de l'habilitation \`a diriger les recherches}{Habilitation to conduct research's Title}%
\expression{inprogress}{travail en cours}{work in progress}%
\expression{universitydepartment}{Unit\'e de recherche}{University
  Department}%
\expression{versiondate}{Version interm\'ediaire en date
du}{Work in progress as of}%
\expression{inprogressfoottext}{\translate{lbl-versiondate}}{\translate{lbl-versiondate}}%
\expression{submittedfoottext}{Version soumise en date du}{Submitted work
  as of}%
%% ----------------------------------------------------------------------------------
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Denis Bitouz'e.
%% 
%% This work consists of the file  yathesis.dtx
%%           and the derived files yathesis.cls,
%%                                 yathesis.ins,
%%                                 yathesis.pdf,
%%                                 and a number of configuration files.
%%
%% End of file `yathesis.cls'.
