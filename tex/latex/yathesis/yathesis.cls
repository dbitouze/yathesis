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
\def\fileversion{v0.95}
\def\filedate{2014/01/01}
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{yathesis}[\filedate\space\fileversion\space Yet another class for writing thesis (DB)]
\RequirePackage{xkvltxp}%
\RequirePackage{xkeyval}%
\RequirePackage{etoolbox}%
\RequirePackage{xpatch}%
\RequirePackage{filehook}%
\RequirePackage{hopatch}%
\RequirePackage{xifthen}%
\newif\if@nolink\@nolinkfalse
\newtoggle{YAD@work@inprogress}
\newtoggle{YAD@printed@on@paper}
\newtoggle{YAD@printed@on@paper@star}
\newtoggle{YAD@in@footnote}
\newtoggle{YAD@second@title}
\newtoggle{YAD@second@abstract}
\newtoggle{YAD@maketitle@used}
\newtoggle{YAD@keywords@used}
\newtoggle{YAD@introduction@used}
\newtoggle{YAD@introduction@empty}
\newtoggle{YAD@conclusion@used}
\newtoggle{YAD@conclusion@empty}
\newtoggle{YAD@makeabstract@used}
\newtoggle{YAD@second@abstract@used}
\newtoggle{YAD@abstract@used}
\newtoggle{YAD@main@abstract@empty}
\newtoggle{YAD@second@abstract@empty}
\newtoggle{YAD@tableofcontents@used}
\newtoggle{YAD@printbibliography@used}
\newtoggle{YAD@two@titles}
\newtoggle{YAD@cover@page}
\newtoggle{YAD@supervisor@specified}
\newtoggle{YAD@symbols@isolated}
\newtoggle{YAD@logo@before}
\newtoggle{YAD@valid@day}
\newtoggle{YAD@valid@month}
\newtoggle{YAD@valid@year}
\newlength{\YAD@logo@height}
\def\YAD@mainlanguage{french}%
\def\YAD@secondarylanguage{english}%
\def\YAD@tocdepth{subsection}%
\def\YAD@secnumdepth{subsection}%
\def\YAD@mainkeywords{\YAD@generic@argument@translate{keywords}}%
\def\YAD@secondarykeywords{\YAD@generic@argument@translate{keywords}}%
\def\YAD@global@sepcorpaffil@french{}%
\def\YAD@global@sepcorpaffil@english{}%
\DeclareOption{nolink}{\YAD@nolinktrue}%
\DeclareOption{link}{\YAD@nolinkfalse}%
\newcommand{\YAD@create@boolean}[1]{%
  \define@boolkey+{yathesis.cls}[YAD@]{#1}[true]{%
  }{%
    \ClassWarningNoLine{yathesis}{%
      Valeur pass\'ee \`a la cl\'e `#1' non valide :\MessageBreak%
      cette valeur ne peut \^etre que `true' ou `false'%
    }%
  }%
}%
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
\define@boolkey+{yathesis.cls}[YAD@]{draft}[true]{%
  \ifYAD@draft
  \ifthenelse{\equal{\@classoptionslist}{}}{%
    \edef\@classoptionslist{draft}%
  }{%
    \edef\@classoptionslist{\@classoptionslist,draft}%
  }%
  \fi
}{%
  \YAD@ClassWarningNoLine{%
    Valeur de la cl\'e `draft' non valide :\MessageBreak%
    elle ne peut \^etre que `true' ou `false'%
  }%
}%
\define@boolkey+{yathesis.cls}[YAD@]{intermediate}[true]{%
  \ifYAD@intermediate
  \toggletrue{YAD@work@inprogress}%
  \fi
}{%
  \YAD@ClassWarningNoLine{%
    Valeur de la cl\'e `intermediate' non valide :\MessageBreak%
    elle ne peut \^etre que `true' ou `false'%
  }%
}%
\define@boolkey+{yathesis.cls}[YAD@]{printed}[true]{%
  \ifYAD@printed
  \toggletrue{YAD@printed@on@paper}%
  \fi
}{%
  \YAD@ClassWarningNoLine{%
    Valeur de la cl\'e `printed' non valide :\MessageBreak%
    elle ne peut \^etre que `true' ou `false'%
  }%
}%
\define@boolkey+{yathesis.cls}[YAD@]{printed*}[true]{%
}{%
  \YAD@ClassWarningNoLine{%
    Valeur de la cl\'e `printed*' non valide :\MessageBreak%
    elle ne peut \^etre que `true' ou `false'%
  }%
}%
\def\YAD@interligne{single}%
\define@choicekey*{yathesis.cls}{space}%
{single,onehalf,double}[single]%
{\def\YAD@interligne{#1}}%
\DeclareOptionX{mainlanguage}{%
  \ifthenelse{\isempty{#1}}{%
  }{%
    \def\YAD@mainlanguage{#1}%
  }%
}%
\DeclareOptionX{secnumdepth}{%
  \ifthenelse{\isempty{#1}}{%
  }{%
    \def\YAD@secnumdepth{#1}%
  }%
}%
\DeclareOptionX{logoheight}[1.5cm]{\setlength\YAD@logo@height{#1}}%
\DeclareOptionX{sepcorpaffilfrench}[]{\def\YAD@global@sepcorpaffil@french{#1}}%
\DeclareOptionX{sepcorpaffilenglish}[ at ]{\def\YAD@global@sepcorpaffil@english{#1}}%
\DeclareOptionX{chap-style}[PetersLenny]{%
  \def\YAD@fncychapstyle{#1}%
  \PassOptionsToPackage{#1}{fncychap}%
}%
\DeclareOptionX*{\PassOptionsToClass{\CurrentOption}{book}}%
\ExecuteOptionsX{logoheight}%
\ExecuteOptionsX{sepcorpaffilfrench}%
\ExecuteOptionsX{sepcorpaffilenglish}%
\ExecuteOptionsX{mainlanguage}%
\ExecuteOptionsX{secnumdepth}%
\ExecuteOptionsX{chap-style}%
\ProcessOptionsX\relax%
\ProcessOptionsX\relax%
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
  \edef\@classoptionslist{\@classoptionslist,\YAD@secondarylanguage,\YAD@mainlanguage}%
}%
\presetkeys{yathesis.cls}{%
  screen=false,%
  draft=false,%
  intermediate=false,%
  printed=false,%
  printed*=false,%
}{}
\csuse{ifYAD@printed*}
\toggletrue{YAD@printed@on@paper}%
\toggletrue{YAD@printed@on@paper@star}%
\fi
\LoadClass{book}%
\RequirePackage[a4paper]{geometry}%
\AtEndPreamble{%
  \@ifpackageloaded{kpfonts}{%
  }{%
    \@ifpackageloaded{libertine}{%
    }{%
      \RequirePackage[full]{textcomp}%
    }%
  }%
}%
\RequirePackage[final]{graphicx}%
\RequirePackage{environ}%
\RequirePackage[export]{adjustbox}%
\RequirePackage{array}%
\RequirePackage{xstring}%
\RequirePackage{textcase}%
\RequirePackage{translator}%
\RequirePackage{fixltx2e}%
\RequirePackage{epigraph}%
\RequirePackage{marvosym}%
\RequirePackage{setspace}%
\AtEndPreamble{\RequirePackage{morewrites}}%
\RequirePackage{shorttoc}%
\RequirePackage{tocvsec2}%
\RequirePackage{tocbibind}%
\RequirePackage{nonumonpart}%
\RequirePackage{xcolor}%
\RequirePackage{datatool}%
\ifthenelse{\equal{\YAD@fncychapstyle}{none}}{%
}{%
  \RequirePackage{fncychap}%
}%
\RequirePackage{titleps}%
\RequirePackage{ifdraft}%
\ifdraft{%
  \RequirePackage{draftwatermark}%
  \geometry{showframe}%
}{%
  \iftoggle{YAD@work@inprogress}{%
    \RequirePackage{draftwatermark}%
  }{%
  }%
}%
\RequirePackage{index}%
\RequirePackage[columns=1]{idxlayout}%
\RequirePackage{iflang}%
\RequirePackage{babel}%
\RequirePackage[nodayofweek]{datetime}%
\RequirePackage{datenumber}%
\RequirePackage[final,unicode,hyperfootnotes=false,hyperindex=false,plainpages=false,breaklinks,pdfpagemode=UseOutlines,pdfpagelayout=TwoPageRight]{hyperref}%
\iftoggle{YAD@printed@on@paper}{%
}{%
  \RequirePackage[all]{hypcap}%
  \RequirePackage[numbered]{bookmark}%
}
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
\newcounter{YAD@warnings}%
\setcounter{YAD@warnings}{0}%
\newcommand{\YAD@ClassWarningNoLine}[1]{%
  \ifYAD@nowarning%
  \ifboolexpr{%
    togl {YAD@work@inprogress}%
    or bool {YAD@draft}%
  }{%
  }{%
    \stepcounter{YAD@warnings}%
  }%
  \else%
  \ClassWarningNoLine{yathesis}{%
    #1%
  }%
  % \AfterEndDocument{%
  % \immediate\write\YAD@file{%
  \ClassWarningNoLine{yathesis}{%
    #1%
  }%
  % }%
  % }%
  \fi
}%
\AfterEndDocument{%
  \ifYAD@nowarning%
    \ifboolexpr{%
      togl {YAD@work@inprogress}%
      or bool {YAD@draft}%
    }{%
    }{%
      \ifnumgreater{\value{YAD@warnings}}{0}{%
        % \immediate\write\YAD@file{%
          \ClassWarningNoLine{yathesis}{%
            L'option `nowarning' ayant \'et\'e employ\'ee,\MessageBreak%
            \theYAD@warnings\space warning%
            \ifnumequal{\value{YAD@warnings}}{1}{%
              \space propre%
            }{%
              s propres%
            }
            %
            \`a la classe `yathesis'\MessageBreak%
            \ifnumequal{\value{YAD@warnings}}{1}{%
              a \'et\'e masqu\'e%
            }{%
              ont \'et\'e masqu\'es%
            }
            %
            dans ce fichier de log.\MessageBreak%
            Il est fortement conseill\'e de r\'eactiver\MessageBreak%
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
  \fi%
}%
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
\patchcmd{\chapter}{plain}{empty}{}{}%
\newcommand*{\YAD@configuration@directory}{configuration}
\newcommand*{\configurationdirectory}{\YAD@configuration@directory}
\newcommand*{\YAD@configuration@file}{these.cfg}
\newcommand*{\configurationfile}{\YAD@configuration@file}
\newcommand*{\YAD@title@file}{yadtitle.tex}
\newcommand*{\titlefile}{\YAD@title@file}
\newcommand*{\YAD@macros@file}{yadmacros.tex}
\newcommand*{\macrosfile}{\YAD@macros@file}
\newcommand*{\glossaryfile}{glossary.tex}
\newcommand*{\acronymsfile}{acronyms.tex}
\newcommand*{\symbolsfile}{symbols.tex}
\newcommand*{\imagesdirectory}{images}
\newcommand*{\thesismasterfile}{these}
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
\newcommand*{\YAD@reach@file}[2][\titlefile]{%
  \ifdraft{%
    \ifthenelse{\equal{\titlefile}{#1}}{%
      \hypersetup{urlbordercolor={0.5 0 0.5}}%
    }{%
      \hypersetup{urlbordercolor={1 0.5 0}}%
    }%
    \IfFileExists{\configurationdirectory/#1}{%
       \YAD@href{\configurationdirectory/#1}{#2}%
    }{%
      \YAD@href{\jobname.tex}{#2}%
    }
  }{%
    #2%
  }%
}%
  \newcommand{\YAD@href}[3][]{%
    \href[#1]{#2}{#3}%
  }%
\iftoggle{YAD@printed@on@paper}{%
  \hypersetup{draft}%
  \renewcommand{\YAD@href}[3][]{%
    #3%
  }%
  \let\YAD@ori@footnote\footnote%
  \renewcommand{\footnote}[1]{\toggletrue{YAD@in@footnote}\YAD@ori@footnote{#1}\togglefalse{YAD@in@footnote}}%
  \renewcommand*\url[1]{\nolinkurl{#1}}%
  \renewcommand*\href[3][]{%
    \iftoggle{YAD@in@footnote}{%
      #3 (\url{#2})
    }{%
      #3\footnote{\url{#2}}
    }%
  }%
}{%
}%
\@ifpackageloaded{draftwatermark}{%
  \SetWatermarkColor{gray!10}%
}{%
}%
\iftoggle{YAD@work@inprogress}{%
  \SetWatermarkFontSize{3cm}%
  \AfterEndPreamble{\translatelet\YAD@trintermediate{lbl-intermediate}}%
  \SetWatermarkText{\MakeUppercase{\YAD@trintermediate}}%
}{%
}%
\ifdraft{%
  \AfterEndPreamble{\translatelet\YAD@trdraft{lbl-draft}}%
  \SetWatermarkText{\MakeUppercase{\YAD@trdraft}}%
}{%
}%
\newcommand*{\YAD@generic@argument}[1]{%
  \bgroup\color{brown}{\normalfont\textlangle}\textit{\texttt{#1}}{\normalfont\textrangle}\egroup%
}%
\newcommand*{\YAD@translation}[1]{%
  \ifthenelse{\isempty{#1}}{%
  }{%
    \ifdraft{%
      \scriptsize%
      \begin{tabular}{l}
        {%
          \normalfont\ttfamily\tiny%
          (lbl-#1)%
        }%
        \\[-.3\baselineskip]
        \YAD@reach@file[\configurationfile]{%
          \translate{lbl-#1}%
        }%
      \end{tabular}
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
            \YAD@reach@file[\configurationfile]{expression
              cl\'e}\ifundef{\Fcolonspace}{\FBcolonspace}{\Fcolonspace}:
            il suffit de cliquer sur le cadre de couleur orange qui
            l'entoure pour atteindre le fichier
            \YAD@reach@file[\configurationfile]{\texttt{\configurationfile}}
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
            \YAD@reach@file{\texttt{\titlefile}} o\`u elle est
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
    \deftranslation[to=French]{#1}{#2}%
    \deftranslation[to=English]{#1}{#3}%
  }%
}%
\newcommand*{\YAD@generic@argument@translate}[1]{%
  \texorpdfstring{\YAD@generic@argument{\translate{meta-#1}}}{<#1>}%
}%
\define@cmdkeys{YAD}{%
  role,%
  corporation,%
  url,%
  logoheight,%
  logo,%
  address,%
  telephone,%
  fax,%
  email,%
  % distinction,%
  % award,%
  affiliation,%
  sepcorpaffilfrench,%
  affiliationsecondary,%
  sepcorpaffilenglish,%
  name,%
  depth%
}[]%
\define@boolkeys{YAD}{%
  nologo,%
  professor,%
  mcf,%
  mcf*,%
  juniorresearcher,%
  juniorresearcher*,%
  seniorresearcher,%
}[true]%
\newcommand*{\yatsetup}[1]{%
  \presetkeys{YAD}{#1}{}%
}%
\presetkeys{YAD}{%
  role=,%
  corporation=,%
  url=,%
  logoheight=\YAD@logo@height,%
  logo=,%
  address=,%
  telephone=,%
  fax=,%
  email=,%
  % distinction=,%
  % award=,%
  affiliation=,%
  sepcorpaffilfrench=\YAD@global@sepcorpaffil@french,%
  affiliationsecondary=,%
  sepcorpaffilenglish=\YAD@global@sepcorpaffil@english,%
  name=\contentsname,%
  depth=subsubsection,%
  nologo=false,%
  professor=false,%
  mcf=false,%
  mcf*=false,%
  juniorresearcher=false,%
  juniorresearcher*=false,%
  seniorresearcher=false,%
}{}%
\DTLnewdb{YAD@staffs}%
\DTLnewrow{YAD@staffs}%
\DTLnewdbentry{YAD@staffs}{YAD@the@staff}{referees}%
\DTLnewrow{YAD@staffs}%
\DTLnewdbentry{YAD@staffs}{YAD@the@staff}{examiners}%
\DTLnewrow{YAD@staffs}%
\DTLnewdbentry{YAD@staffs}{YAD@the@staff}{guests}%
\DTLnewrow{YAD@staffs}%
\DTLnewdbentry{YAD@staffs}{YAD@the@staff}{supervisors}%
\DTLforeach{YAD@staffs}{%
  \YAD@the@staff=YAD@the@staff}{%
  \DTLnewdb{\YAD@the@staff}%
}%
\DTLnewdb{dedications}%
\DTLnewdb{frontepigraphs}%
\newcommand*{\YAD@staff}[4][]{%
  \dtlexpandnewvalue%
  \setkeys{YAD}{#1}%
  \ifKV@YAD@professor%
  \setkeys{YAD}{#1,corporation=professor}%
  \fi%
  \ifKV@YAD@mcf%
  \setkeys{YAD}{#1,corporation=mcf}%
  \fi%
  \csuse{ifKV@YAD@mcf*}%
  \setkeys{YAD}{#1,corporation=mcf*}%
  \fi%
  \ifKV@YAD@juniorresearcher%
  \setkeys{YAD}{#1,corporation=juniorresearcher}%
  \fi%
  \csuse{ifKV@YAD@juniorresearcher*}%
  \setkeys{YAD}{#1,corporation=juniorresearcher*}%
  \fi%
  \ifKV@YAD@seniorresearcher%
  \setkeys{YAD}{#1,corporation=seniorresearcher}%
  \fi%
  \DTLnewrow{#4}%
  \DTLnewdbentry{#4}{firstname}{#2}%
  \DTLnewdbentry{#4}{lastname}{#3}%
  \ifthenelse{\equal{\cmdKV@YAD@role}{}}{%
    \DTLnewdbentry{#4}{role}{}%
  }{%
    \DTLnewdbentry{#4}{role}{\cmdKV@YAD@role}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@corporation}{}}{%
    \DTLnewdbentry{#4}{corporation}{}%
  }{%
    \DTLnewdbentry{#4}{corporation}{\cmdKV@YAD@corporation}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@sepcorpaffilfrench}{}}{%
    \DTLnewdbentry{#4}{sepcorpaffilfrench}{\YAD@global@sepcorpaffil@french}%
  }{%
    \DTLnewdbentry{#4}{sepcorpaffilfrench}{\cmdKV@YAD@sepcorpaffilfrench}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@sepcorpaffilenglish}{}}{%
    \DTLnewdbentry{#4}{sepcorpaffilenglish}{\YAD@global@sepcorpaffil@english}%
  }{%
    \DTLnewdbentry{#4}{sepcorpaffilenglish}{\cmdKV@YAD@sepcorpaffilenglish}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@affiliation}{}}{%
    \DTLnewdbentry{#4}{affiliation}{}%
  }{%
    \DTLnewdbentry{#4}{affiliation}{\cmdKV@YAD@affiliation}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@affiliationsecondary}{}}{%
    \DTLnewdbentry{#4}{affiliationsecondary}{\cmdKV@YAD@affiliation}%
  }{%
    \DTLnewdbentry{#4}{affiliationsecondary}{\cmdKV@YAD@affiliationsecondary}%
  }%
}%
\newcommand*{\YAD@supervisors}[3][]{%
  \YAD@staff[#1]{#2}{#3}{supervisors}%
}%
\newcommand*{\supervisor}[3][]{%
  \YAD@supervisors[#1,role=supervisor]{#2}{#3}%
  \toggletrue{YAD@supervisor@specified}%
}%
\newcommand*{\cosupervisor}[3][]{%
  \YAD@supervisors[#1,role=cosupervisor]{#2}{#3}%
}%
\newcommand*{\comonitor}[3][]{%
  \YAD@supervisors[#1,role=comonitor]{#2}{#3}%
}%
\newcommand*{\guest}[3][]{%
  \YAD@staff[#1]{#2}{#3}{guests}%
}%
\newcommand*{\referee}[3][]{%
  \YAD@staff[#1]{#2}{#3}{referees}%
}%
\newcommand*{\examiner}[3][]{%
  \YAD@staff[#1]{#2}{#3}{examiners}%
}%
\newcommand*{\committeepresident}[3][]{%
  \examiner[#1,role=committeepresident]{#2}{#3}%
}%
\newcommand*{\YAD@al}{ \`a l'}%
\newcommand*{\YAD@au}{ au }%
\newcommand*{\YAD@del}{ de l'}%
\newcommand*{\YAD@du}{ du }%
\newcommand*{\YAD@alaudeldu}[3]{%
  \ifboolexpr{%
    test {\IfBeginWith{#3}{a}} or %
    test {\IfBeginWith{#3}{e}} or %
    test {\IfBeginWith{#3}{i}} or %
    test {\IfBeginWith{#3}{o}} or %
    test {\IfBeginWith{#3}{u}} or %
    test {\IfBeginWith{#3}{y}} or %
    test {\IfBeginWith{#3}{\`a}} or %
    test {\IfBeginWith{#3}{\^a}} or %
    test {\IfBeginWith{#3}{\"a}} or %
    test {\IfBeginWith{#3}{\'e}} or %
    test {\IfBeginWith{#3}{\`e}} or %
    test {\IfBeginWith{#3}{\^e}} or %
    test {\IfBeginWith{#3}{\"e}} or %
    test {\IfBeginWith{#3}{\^i}} or %
    test {\IfBeginWith{#3}{\"i}} or %
    test {\IfBeginWith{#3}{\^o}} or %
    test {\IfBeginWith{#3}{\"o}} or %
    test {\IfBeginWith{#3}{\`u}} or %
    test {\IfBeginWith{#3}{\^u}} or %
    test {\IfBeginWith{#3}{\"u}} or %
    test {\IfBeginWith{#3}{\"y}} or %
    test {\IfBeginWith{#3}{A}} or %
    test {\IfBeginWith{#3}{E}} or %
    test {\IfBeginWith{#3}{I}} or %
    test {\IfBeginWith{#3}{O}} or %
    test {\IfBeginWith{#3}{U}} or %
    test {\IfBeginWith{#3}{Y}} or %
    test {\IfBeginWith{#3}{\`A}} or %
    test {\IfBeginWith{#3}{\^A}} or %
    test {\IfBeginWith{#3}{\"A}} or %
    test {\IfBeginWith{#3}{\'E}} or %
    test {\IfBeginWith{#3}{\`E}} or %
    test {\IfBeginWith{#3}{\^E}} or %
    test {\IfBeginWith{#3}{\"E}} or %
    test {\IfBeginWith{#3}{\^I}} or %
    test {\IfBeginWith{#3}{\"I}} or %
    test {\IfBeginWith{#3}{\^O}} or %
    test {\IfBeginWith{#3}{\"O}} or %
    test {\IfBeginWith{#3}{\`U}} or %
    test {\IfBeginWith{#3}{\^U}} or %
    test {\IfBeginWith{#3}{\"U}} or %
    test {\IfBeginWith{#3}{\"Y}} or %
    test {\IfBeginWith{#3}{\ae}} or %
    test {\IfBeginWith{#3}{\oe}} or %
    test {\IfBeginWith{#3}{\AE}} or %
    test {\IfBeginWith{#3}{\OE}}%
  }%
  {#1}{#2}%
  #3%
}%
\newcommand*{\YAD@committee@tabular}{%
  {%
    \small%
    \DTLifdbempty{\YAD@the@staff}{}{%
      \vspace{\stretch{1}}%
      \begin{tabular}[t]{>{\itshape}lllll}
        \multicolumn{5}{@{}l}{\bfseries\YAD@translation{committeemembers}}%
        \\[.25cm]
        \DTLforeach*{YAD@staffs}{%
          \YAD@the@staff=YAD@the@staff%
        }{%
          \DTLforeach*{\YAD@the@staff}{%
            \YAD@committeemember@lastname=lastname,%
            \YAD@committeemember@fistname=firstname,%
            \YAD@committeemember@role=role,%
            \YAD@committeemember@corporation=corporation,%
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
                \YAD@translation{\YAD@the@staff-pl}%
              }{%
                \YAD@translation{\YAD@the@staff}%
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
                \ifthenelse{\equal{\YAD@the@staff}{supervisors}}{%
                  \ifthenelse{\DTLrowcount{supervisors}>1}{%
                    \YAD@translation{%
                      \YAD@committeemember@role%
                    }%
                  }{%
                  }%
                }{%
                  \YAD@translation{%
                    \YAD@committeemember@role%
                  }%
                }%
              }%
            }%
            &
            % Corporation
            \YAD@reach@file{%
              \ifthenelse{\DTLiseq{\YAD@committeemember@corporation}{}}{%
                \ifdraft{%
                  \YAD@generic@argument@translate{corporation}%
                }{%
                }%
              }{%
                \YAD@translation{%
                  \YAD@committeemember@corporation%
                }%
              }%
            }%
            % Établissement
            \YAD@reach@file{%
              \ifthenelse{\DTLiseq{\YAD@committeemember@affiliation}{}}{%
                \ifdraft{%
                  \YAD@generic@argument@translate{affiliation}%
                }{%
                }%
              }{%
                \ifthenelse{\DTLiseq{\YAD@committeemember@corporation}{}}{%
                  \YAD@committeemember@affiliation%
                }{%
                  \ifthenelse{\equal{\YAD@committeemember@sepcorpaffil}{}}{%
                    \YAD@alaudeldu{\YAD@al}{\YAD@au}{\YAD@committeemember@affiliation}%
                  }{%
                    \YAD@committeemember@sepcorpaffil\YAD@committeemember@affiliation%
                  }%
                }%
              }%
            }%
            \DTLiflastrow{%
              \\[.25cm]
            }{%
              \\
            }%
          }%
        }%
      \end{tabular}
    }%
  }%
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
            \if@nolink%
            \YAD@generic@argument@translate{#1#2}%
            \else%
            \YAD@href{mailto:#1.#2@institute.fr}{\YAD@generic@argument@translate{#1#2}}%
            \fi%
          }{%
            \if@nolink%
            \nolinkurl{##1}%
            \else%
            \YAD@href{mailto:##1}{\nolinkurl{##1}}%
            \fi%
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
            \if@nolink%
            \YAD@generic@argument@translate{#1#2}%
            \else%
            \url{%
              \YAD@generic@argument@translate{#1#2}%
            }%
            \fi%
          }{%
            \if@nolink%
            \nolinkurl{##1}%
            \else%
            \url{%
              ##1%
            }%
            \fi%
          }%
        }%
      }%
    }%
  }{%
  }%
  \ifthenelse{\equal{#1}{entite}}{%
    \expandafter\newcommand\expandafter{\csname #2\endcsname}[2][]{%
\csdef{print#2}{%
  \@ifstar{\csuse{YAD@print#2@star}}{\csuse{YAD@print#2@nostar}}%
}%
\csdef{YAD@print#2@star}{%
  \ifthenelse{\isempty{##2}}{%
    \YAD@ClassWarningNoLine{%
      La commande \csuse{#2}\space a \'et\'e employ\'ee\MessageBreak%
      mais avec un argument obligatoire vide.\MessageBreak%
      Un texte g\'en\'erique va \^etre affich\'e\MessageBreak%
      \`a la place%
    }%
    \YAD@reach@file{\YAD@generic@argument@translate{#2}}%
  }{%
    \YAD@reach@file{##2}%
  }%
}%
\csdef{YAD@print#2@nostar}{%
  \let\YAD@texte\relax%
  \csdef{YAD@texte}{%
    \ifthenelse{\isempty{##2}}{%
      \YAD@ClassWarningNoLine{%
        La commande \csuse{#2}\space a \'et\'e employ\'ee\MessageBreak%
        mais avec un argument obligatoire vide.\MessageBreak%
        Un texte g\'en\'erique va \^etre affich\'e\MessageBreak%
        \`a la place%
      }%
      \YAD@reach@file{\YAD@generic@argument@translate{#2}}%
    }{%
      ##2%
    }%
  }%
  \setkeys{YAD}{##1}%
  \ifthenelse{\equal{\cmdKV@YAD@url}{}}{%
    \ifdraft{%
      \YAD@reach@file{%
        \YAD@texte%
      }%
    }{%
      \if@nolink%
      \YAD@texte%
      \else%
      \YAD@href{www.#2.fr}{\YAD@texte}%
      \fi%
    }%
  }{%
    \ifdraft{%
      \YAD@reach@file{%
        \YAD@texte%
      }%
    }{%
      \if@nolink%
      \YAD@texte%
      \else%
      \YAD@href{\cmdKV@YAD@url}{\YAD@texte}%
      \fi%
    }%
  }%
}%
      \csdef{print#2address}{%
        \setkeys{YAD}{##1}%
        \ifthenelse{\equal{\cmdKV@YAD@address}{}}{%
          \YAD@reach@file{\YAD@generic@argument@translate{address#2}}%
        }{%
          \YAD@reach@file{\cmdKV@YAD@address}%
        }%
        %
      }%
      \csdef{print#2telephone}{%
        \setkeys{YAD}{##1}%
        \ifthenelse{\equal{\cmdKV@YAD@telephone}{}}{%
          \YAD@reach@file{\YAD@generic@argument@translate{telephone#2}}%
        }{%
          \YAD@reach@file{\cmdKV@YAD@telephone}%
        }%
        %
      }%
      \csdef{print#2fax}{%
        \setkeys{YAD}{##1}%
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
      \if@nolink%
      \YAD@generic@argument@translate{#2email}%
      \else%
      \YAD@href{mailto:#2@institute.fr}{\YAD@generic@argument@translate{#2email}}%
      \fi%
    }{%
      \if@nolink%
      \nolinkurl{\cmdKV@YAD@email}%
      \else%
      \YAD@href{mailto:\cmdKV@YAD@email}{\nolinkurl{\cmdKV@YAD@email}}%
      \fi%
    }%
  }%
}%
      \setkeys{YAD}{##1}%
      \ifKV@YAD@nologo%
      \else%
      \csdef{print#2logo}{%
        \ifthenelse{\equal{#2}{doctoralschool}}{%
          \YAD@ClassWarningNoLine{%
            Le logo de l'\'ecole doctorale a \'et\'e fourni mais\MessageBreak%
            il n'appara\^itra nulle part. Veuillez le supprimer%
          }%
        }{%
        }%
        \@ifstar{\@tempswatrue\csuse{YAD@starnostar@print#2logo}}{\@tempswafalse\csuse{YAD@starnostar@print#2logo}}%
      }%
      \csdef{YAD@starnostar@print#2logo}{%
        \setkeys{YAD}{##1}%
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
        \if@nolink%
        \YAD@logo%
        \else%
        \ifthenelse{\equal{\cmdKV@YAD@url}{}}{%
          \YAD@href{www.#2.fr}{\YAD@logo}%
        }{%
          \YAD@href{\cmdKV@YAD@url}{\YAD@logo}%
        }%
        \fi%
        \fi%
      }%
      \fi%
      %
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
\ifthenelse{\equal{#2}{title}}{%
  \hypersetup{pdftitle=\YAD@metatitle}%
}{%
}%
\ifundef{\YAD@metakeywords}{%
}{%
  \hypersetup{pdfkeywords=\YAD@metakeywords}%
}%
\ifundef{\YAD@metasubject}{%
  \ifundef{\YAD@metaacademicfield}{%
  }{%
    \hypersetup{pdfsubject=\YAD@metaacademicfield}%
  }%
}{%
  \hypersetup{pdfsubject=\YAD@metasubject}%
}%
\csdef{print#2}{%
        \YAD@reach@file{%
          \expandafter\IfLanguageName{\YAD@mainlanguage}{%
            \ifthenelse{\isempty{##2}}{%
              \YAD@ClassWarningNoLine{%
                La commande \csuse{#2}\space a \'et\'e employ\'ee\MessageBreak%
                mais avec un argument obligatoire vide.\MessageBreak%
                Un texte g\'en\'erique va \^etre affich\'e\MessageBreak%
                \`a la place%
              }%
              \YAD@reach@file{\YAD@generic@argument@translate{#2}}%
            }{%
              \YAD@reach@file{##2}%
            }%
          }{%
            \ifthenelse{\isempty{##1}}{%
              \iftoggle{YAD@two@titles}{%
                \YAD@ClassWarningNoLine{%
                  La commande \csuse{#2}\space a \'et\'e employ\'ee\MessageBreak%
                  mais avec un argument optionnel vide.\MessageBreak%
                  Un texte g\'en\'erique va \^etre affich\'e\MessageBreak%
                  \`a la place%
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
          \toggletrue{YAD@two@titles}%
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
  }%
}%
\newcommand{\YAD@ordernumber@with@argument}[1][]{%
  \csdef{printordernumber}{%
    \ifthenelse{\isempty{#1}}{%
      \YAD@reach@file{%
        \YAD@generic@argument@translate{ordernumber}%
      }%
      \YAD@ClassWarningNoLine{%
        La commande \protect\ordernumber\space a \'et\'e
        employ\'ee\MessageBreak%
        mais avec un argument optionnel vide.\MessageBreak%
        Un texte g\'en\'erique va \^etre affich\'e\MessageBreak%
        \`a la place%
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
\renewcommand*{\author}[3]{%
  \ifthenelse{\isempty{#1}}{%
    \newcommand*\YAD@firstname@author{%
      \YAD@generic@argument@translate{firstname}%
    }%
    \YAD@ClassWarningNoLine{%
      Pr\'enom de l'auteur de la th\`ese non sp\'ecifi\'e :\MessageBreak%
      le 1er argument obligatoire de la commande \string\author\MessageBreak%
      est vide (celui-ci doit \^etre renseign\'e)%
    }%
  }{%
    \newcommand*\YAD@firstname@author{%
      #1%
    }%
  }%
  \ifthenelse{\isempty{#2}}{%
    \newcommand*\YAD@lastname@author{%
      \YAD@generic@argument@translate{lastname}%
    }%
    \YAD@ClassWarningNoLine{%
      Nom de l'auteur de la th\`ese non sp\'ecifi\'e :\MessageBreak%
      Le 2e argument obligatoire de la commande \protect\author\MessageBreak%
      est vide (celui-ci doit \^etre renseign\'e)%
    }%
  }{%
    \newcommand*\YAD@lastname@author{%
      #2%
    }%
  }%
  \hypersetup{pdfauthor=\YAD@firstname@author{} \YAD@lastname@author}%
  \ifthenelse{\isempty{#3}}{%
    \newcommand*\YAD@email@author{%
      prenom.nom@laboratoire.institut.fr%
    }%
  }{%
    \newcommand*\YAD@email@author{%
      #3%
    }%
  }%
  \ifthenelse{\isempty{#1}\AND\isempty{#2}}{%
    \newcommand*{\printauthor}{%
      \ifdraft{%
        \YAD@reach@file{%
          \YAD@generic@argument@translate{firstname}
          \YAD@generic@argument@translate{lastname}%
        }%
      }{%
        \if@nolink%
          \YAD@generic@argument@translate{firstname}
          \YAD@generic@argument@translate{lastname}%
        \else%
        \YAD@href{mailto:\YAD@email@author}{%
          \YAD@generic@argument@translate{firstname}
          \YAD@generic@argument@translate{lastname}%
        }%
        \fi%
      }%
      %
    }%
  }{%
    \newcommand*{\printauthor}{%
      \ifdraft{%
        \YAD@reach@file{\YAD@firstname@author{} \bsc{\YAD@lastname@author}}%
      }{%
        \if@nolink%
        \YAD@firstname@author{} \bsc{\YAD@lastname@author}%
        \else%
        \YAD@href{mailto:\YAD@email@author}{\YAD@firstname@author{} \bsc{\YAD@lastname@author}}%
        \fi%
      }%
      %
    }%
  }%
}%
\newcounter{datetoday}
\setmydatenumber{datetoday}{\the\year}{\the\month}{\the\day}
\csdef{date}#1#2#3{%
  \csxdef{YAD@daydate}{#1}%
  \csxdef{YAD@monthdate}{#2}%
  \csxdef{YAD@yeardate}{#3}%
  \ifboolexpr{%
    not (test {\IfInteger{\YAD@daydate}})%
  }{%
    \YAD@ClassWarningNoLine{%
      La commande \protect\date{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
      n'a pas \'et\'e correctement saisie car le\MessageBreak%
      jour (\YAD@daydate) n'est pas valide :\MessageBreak%
      ce doit \^etre un nombre entier entre\MessageBreak%
      1 et 31%
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
      \YAD@ClassWarningNoLine{%
        La commande \protect\date{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
        n'a pas \'et\'e correctement saisie car le\MessageBreak%
        num\'ero de jour (\YAD@daydate) n'est pas valide :\MessageBreak%
        ce doit \^etre un nombre entier entre\MessageBreak%
        1 et 31%
      }%
    }{%
      \toggletrue{YAD@valid@day}%
    }%
  }%
  % month
  \ifboolexpr{%
    not (test {\IfInteger{\YAD@monthdate}})%
  }{%
    \YAD@ClassWarningNoLine{%
      La commande \protect\date{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
      n'a pas \'et\'e correctement saisie car le\MessageBreak%
      mois (\YAD@monthdate) n'est pas valide :\MessageBreak%
      ce doit \^etre un nombre entier entre\MessageBreak%
      1 (janvier) et 12 (d\'ecembre)%
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
      \YAD@ClassWarningNoLine{%
        La commande \protect\date{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
        n'a pas \'et\'e correctement saisie car le\MessageBreak%
        num\'ero de mois (\YAD@monthdate) n'est pas valide :\MessageBreak%
        ce doit \^etre un nombre entier entre\MessageBreak%
        1 (janvier) et 12 (d\'ecembre)%
      }%
    }{%
      \toggletrue{YAD@valid@month}%
    }%
  }%
  % year
  \ifboolexpr{%
    not (test {\IfInteger{\YAD@yeardate}})%
  }{%
    \YAD@ClassWarningNoLine{%
      La commande
      \protect\date{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}\space\MessageBreak%
      n'a pas \'et\'e correctement saisie car\MessageBreak%
      l'ann\'ee (\YAD@yeardate) n'est pas valide :\MessageBreak%
      ce doit \^etre un nombre entier (sup\'erieur ou \'egal\MessageBreak%
      \`a \number\year)%
    }%
  }{%
    \IfDecimal{\YAD@yeardate}{%
      \csxdef{YAD@yeardate}{\number\integerpart}%
    }{%
    }%
    \ifnumless{\YAD@yeardate}{\number\year}{%
      \YAD@ClassWarningNoLine{%
        La commande \protect\date{#1}{#2}{#3}\space\MessageBreak%
        n'a pas \'et\'e correctement saisie car le\MessageBreak%
        num\'ero de l'ann\'ee (#3) n'est pas valide :\MessageBreak%
        ce doit \^etre un nombre entier sup\'erieur ou \'egal\MessageBreak%
        \`a \number\year%
      }%
    }{%
      \toggletrue{YAD@valid@year}%
    }%
  }%
  \ifboolexpr{%
    togl {YAD@valid@day}%
    and togl {YAD@valid@month}%
    and togl {YAD@valid@year}%
  }{%
    \csdef{printdate}{%
      \setdatenumber{\YAD@yeardate}{\YAD@monthdate}{\YAD@daydate}%
      \ifnumgreater{\value{datetoday}}{\value{datenumber}}{%
        \YAD@generic@argument@translate{date}%
        \YAD@ClassWarningNoLine{%
          La date saisie
          (\protect\date{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate})\MessageBreak%
          n'est pas correcte car elle ne doit pas \^etre\MessageBreak%
          ant\'erieure \`a la date du jour\MessageBreak%
          (\protect\date{\number\day}{\number\month}{\number\year})%
        }%
      }{%
        \formatdate{\YAD@daydate}{\YAD@monthdate}{\YAD@yeardate}%
      }%
    }%
  }{%
    \csdef{printdate}{%
      \YAD@generic@argument@translate{date}%
    }%
  }%
  \togglefalse{YAD@valid@day}%
  \togglefalse{YAD@valid@month}%
  \togglefalse{YAD@valid@year}%
}%
\AtEndDocument{%
  \YAD@ifemptyorundef{\printdate}{%
    \ifYAD@nodate%
    \else%
    \YAD@ClassWarningNoLine{%
      Date de soutenance de la th\`ese non sp\'ecifi\'ee :\MessageBreak%
      la commande \protect\date\space n'a pas \'et\'e\MessageBreak%
      employ\'ee (celle-ci est requise)%
    }%
    \fi%
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
\let\YAD@ORI@cleardoublepage\cleardoublepage
\newcommand*{\YAD@clearemptydoublepage}{%
  \clearpage%
  {%
    \pagestyle{empty}%
    \YAD@ORI@cleardoublepage%
  }%
}%
\iftoggle{YAD@work@inprogress}{%
  \newcommand*{\YAD@setfoot}{%
    \footrule%
    \setfoot{}{\textsc{\translate{lbl-versiondate} \today}}{}%
    }%
}{%
  \newcommand*{\YAD@setfoot}{}%
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
\newif\if@YAD@knownsect
\renewcommand{\tableofcontents}{%
  \toggletrue{YAD@tableofcontents@used}%
  \YAD@clearemptydoublepage%
  \phantomsection%
  \let\cmdKV@YAD@name\contentsname%
  \@ifnextchar[{\tableofcontents@YAD@with@argument}{\tableofcontents@YAD@without@argument}%]
}%
\newcommand\tableofcontents@YAD@without@argument{%
  \YAD@ORI@tableofcontents%
}%
\newcommand\tableofcontents@YAD@with@argument[1][]{%
  \setkeys{YAD}{#1}%
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
  \if@YAD@knownsect
  \else
  \shorttableofcontents{\cmdKV@YAD@name}{3}%
  \YAD@ClassWarningNoLine{%
    Nom de commande de sectionnement (#1) inconnu\MessageBreak%
    et un par d\'efaut (`subsection') va \^etre utilis\'e \`a la place.\MessageBreak%
    Les noms de commandes de sectionnement sp\'ecifi\'e doivent\MessageBreak%
    \^etre l'un des suivants : `part', `chapter', `section', `subsection',\MessageBreak%
    `subsubsection', `paragraph', `subparagraph' et `all'%
  }%
  \fi
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
  \AtBeginDocument{\setsecnumdepth{none}}%
\newpagestyle{titles}[]{%
  \frontmatter%
  % \settocdepth{none}%
  \setsecnumdepth{none}%
  \ifdraft{%
    \newgeometry{centering,nomarginpar,bottom=0.1cm,top=0.1cm,headheight=\YAD@logo@height,margin=0.5cm,tmargin=2\YAD@logo@height}%
  }{%
    \newgeometry{centering,nomarginpar,bottom=1cm,top=1cm,headheight=\YAD@logo@height,hmargin=2cm,includeall}%
  }%
  \sethead[]%
  []%
  []%
  {%
    \ifdef{\printpreslogo}{%
      \printpreslogo%
      \toggletrue{YAD@logo@before}%
    }{%
    }%
    \ifdef{\printinstitutelogo}{%
      \iftoggle{YAD@logo@before}{%
        \hspace{\stretch{1}}%
      }{%
      }%
      \printinstitutelogo%
      \toggletrue{YAD@logo@before}%
    }{%
    }%
    \ifdef{\printcoinstitutelogo}{%
      \iftoggle{YAD@logo@before}{%
        \hspace{\stretch{1}}%
      }{%
      }%
      \printcoinstitutelogo%
      \toggletrue{YAD@logo@before}%
    }{%
    }%
    \ifdef{\printcompanylogo}{%
      \iftoggle{YAD@logo@before}{%
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
  \pagestyle{mainmatter}%
}{}{}%
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
    \MakeUppercase\appendixname{} \thechapter.%
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
        \MakeUppercase\appendixname{} \thechapter.%
      }{%
      }
    }{%
      \YAD@section@header%
    }%
  }%
  {}%
  {\thepage}%
  \headrule%
  \phantomsection%
  \setsecnumdepth{\YAD@secnumdepth}%
  \iftoggle{YAD@printed@on@paper}{%
  }{%
    \bookmarksetup{startatroot}%
  }%
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
  \YAD@clearemptydoublepage%
  \phantomsection%
  \iftoggle{YAD@printed@on@paper}{%
  }{%
    \bookmarksetup{startatroot}%
  }%
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
  \phantomsection%
  \setsecnumdepth{none}%
  \iftoggle{YAD@printed@on@paper}{%
  }{%
    \bookmarksetup{startatroot}%
  }%
  \YAD@setfoot%
}%
\xapptocmd{\backmatter}{%
  \pagestyle{backmatter}%
}{}{}%
\newpagestyle{contents}[]{%
  \YAD@clearemptydoublepage%
  \phantomsection%
  \iftoggle{YAD@printed@on@paper}{%
  }{%
    \bookmarksetup{startatroot}%
  }%
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
  \YAD@clearemptydoublepage%
  \phantomsection%
  \iftoggle{YAD@printed@on@paper}{%
  }{%
    \bookmarksetup{startatroot}%
  }%
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
  \YAD@clearemptydoublepage%
  \phantomsection%
  \setsecnumdepth{\YAD@secnumdepth}%
  \iftoggle{YAD@printed@on@paper}{%
  }{%
    \bookmarksetup{startatroot}%
  }%
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
\newcommand*{\printlaboratory}{\@ifstar{\@tempswatrue\YAD@thelaboratory@temp}{\@tempswafalse\YAD@thelaboratory@temp}}%
\newcommand*{\YAD@thelaboratory@temp}{%
  \YAD@ifemptyorundef{\YAD@thelaboratory}{%
    \YAD@reach@file{\YAD@generic@argument@translate{laboratory}}%
    \ifYAD@nolaboratory%
    \else%
    \YAD@ClassWarningNoLine{%
      Laboratoire de la th\`ese non sp\'ecifi\'e ou vide :\MessageBreak%
      la commande \protect\laboratory\space n'a pas \'et\'e\MessageBreak%
      employ\'ee (celle-ci est requise) ou son 1er argument\MessageBreak%
      est vide (celui-ci doit \^etre renseign\'e)%
    }%
    \fi%
  }{%
    \ifdraft{%
      \YAD@reach@file{%
        \YAD@thelaboratory%
      }%
    }{%
      \ifboolexpr{ bool {@tempswa} or bool {@nolink} }{%
        \YAD@thelaboratory%
      }{%
        \YAD@ifemptyorundef{\YAD@thelaboratoryurl}{%
          \YAD@href{www.laboratory.fr}{\YAD@thelaboratory}%
        }{%
          \YAD@href{\YAD@thelaboratoryurl}{\YAD@thelaboratory}%
        }%
      }%
    }%
  }%
}%
\newcommand*{\printlaboratoryaddress}{%
  \YAD@ifemptyorundef{\YAD@thelaboratoryaddress}{%
    \YAD@reach@file{\YAD@generic@argument@translate{laboratoryaddress}}%
    \ifYAD@nolaboratoryadress%
    \else%
    \YAD@ClassWarningNoLine{%
      Adresse du laboratoire non sp\'ecifi\'ee ou vide :\MessageBreak%
      la commande \protect\laboratory\space n'a pas \'et\'e\MessageBreak%
      employ\'ee (celle-ci est requise) ou son 2e argument\MessageBreak%
      est vide (celui-ci doit \^etre renseign\'e)%
    }%
    \fi%
  }{%
    \YAD@reach@file{\YAD@thelaboratoryaddress}%
  }%
}%
\ifYAD@nofrontcover%
\else%
\toggletrue{YAD@cover@page}%
\fi%
\newlength{\YAD@titleboxheight}%
\newlength{\YAD@titleboxwidth}%
\newlength{\YAD@otherboxheight}%
\newsavebox{\YAD@titlebox}%
\newsavebox{\YAD@beforetitlebox}%
\newsavebox{\YAD@aftertitlebox}%
\newcounter{YAD@titlepages}%
\setcounter{YAD@titlepages}{0}%
\renewcommand{\maketitle}{%
  \toggletrue{YAD@maketitle@used}%
  \setlength{\fboxsep}{10pt}%
  \setlength{\YAD@titleboxwidth}{\linewidth-2\fboxsep-2\fboxrule}%
  \renewcommand*{\do}[1]{%
    \stepcounter{YAD@titlepages}%
  \pagestyle{titles}%
\begingroup%
\expandafter\selectlanguage\expandafter{##1}%
  \begin{lrbox}{\YAD@titlebox}
    \fbox{%
      \noindent%
      \begin{minipage}{\linewidth-2\fboxsep-2\fboxrule}
      \onehalfspacing%
      \noindent%
      \YAD@translation{thesistitle}%
      \par%
      \centering%
      \Huge\bfseries%
      \YAD@ifemptyorundef{\printtitle}{%
        \YAD@generic@argument@translate{title}%
        \ifYAD@notitle%
        \else%
        \YAD@ClassWarningNoLine{%
          Titre de la th\`ese non sp\'ecifi\'e :\MessageBreak%
          la commande \protect\title\space n'a pas \'et\'e\MessageBreak%
          employ\'ee (celle-ci est requise) ou son argument\MessageBreak%
          obligatoire est vide (celui-ci doit \^etre renseign\'e)%
        }%
        \fi%
      }{%
        \printtitle%
      }%
      \ifundef{\printsubtitle}{%
      }{%
        \ifdraft{}{\vspace*{\stretch{.15}}}%
        \par%
        \centering%
        \Large\printsubtitle%
      }%
    \end{minipage}%
    }%
  \end{lrbox}
  \settototalheight{\YAD@titleboxheight}{\YAD@titlebox}%
  \setlength{\YAD@otherboxheight}{0.5\paperheight-\YAD@titleboxheight-2cm}%
  %\YAD@astuce@expressioncle%
  \noindent%
    \ifcsdef{printordernumber}{%
      \iftoggle{YAD@cover@page}{%
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
      \par%
    }{%
    }%
    % \begin{minipage}[c][\YAD@otherboxheight][c]{\YAD@titleboxwidth}
    %   \ifdraft{}{\vspace*{\stretch{.25}}}%
    \begin{center}
      \YAD@ifemptyorundef{\printinstitute}{%
        \YAD@generic@argument@translate{institute}%
        \ifYAD@noinstitute%
        \else%
        \YAD@ClassWarningNoLine{%
          Institut de la th\`ese non sp\'ecifi\'e :\MessageBreak%
          la commande \protect\institute\space n'a pas \'et\'e\MessageBreak%
          employ\'ee (celle-ci est requise) ou son argument\MessageBreak%
          obligatoire est vide (celui-ci doit \^etre\MessageBreak%
          renseign\'e)%
        }%
        \fi%
      }{%
        \YAD@translation{institute}
        \textbf{\textsc{\Large\printinstitute}}%
      }%
      \ifundef{\printcoinstitute}{%
      }{%
        \ifdraft{}{\vspace*{\stretch{.5}}}%
        \par%
        \YAD@translation{coinstitute} \textbf{\textsc{\Large\printcoinstitute}}%
      }%
      \ifundef{\printcompany}{%
      }{%
        \ifdraft{}{\vspace*{\stretch{.5}}}%
        \par%
        \YAD@translation{company} \textbf{\textsc{\Large\printcompany}}%
      }%
      \ifdraft{}{\vspace*{\stretch{1.5}}}%
      \par%
      \YAD@translation{doctoralschool}
      \YAD@ifemptyorundef{\printdoctoralschool}{%
        \YAD@generic@argument@translate{doctoralschool}%
        \ifYAD@nodoctoralschool%
        \else%
        \YAD@ClassWarningNoLine{%
          \'Ecole doctorale de la th\`ese non sp\'ecifi\'ee :\MessageBreak%
          la commande \protect\doctoralschool\space n'a pas \'et\'e\MessageBreak%
          employ\'ee (celle-ci est requise) ou son argument\MessageBreak%
          obligatoire est vide (celui-ci doit \^etre\MessageBreak%
          renseign\'e)%
        }%
        \fi%
      }{%
        \textbf{\printdoctoralschool}%
      }%
      \ifdraft{}{\vspace*{\stretch{.5}}}%
      \par%
      \YAD@translation{universitydepartment}
      \textbf{\printlaboratory}%
      \ifdraft{}{\vspace*{\stretch{1.5}}}%
      \par%
      {\large%
        \YAD@translation{thesisdefendedby}
        %
        \YAD@ifemptyorundef{\printauthor}{%
          \YAD@generic@argument@translate{author}%
          \ifYAD@noauthor%
          \else%
          \YAD@ClassWarningNoLine{%
            Auteur de la th\`ese non sp\'ecifi\'e :\MessageBreak%
            la commande \protect\author\space n'a pas \'et\'e\MessageBreak%
            employ\'ee (celle-ci est requise) ou ses 2 premiers\MessageBreak%
            arguments obligatoires sont vides (ceux-ci doivent \^etre\MessageBreak%
            renseign\'es)%
          }%
          \fi%
        }{%
          \textbf{\printauthor}%
        }%
        \ifdraft{}{\vspace*{\stretch{1}}}%
        \par%
        \YAD@translation{defendedon}
        \YAD@ifemptyorundef{\printdate}{%
          \YAD@generic@argument@translate{date}%
        }{%
          \textbf{\printdate}%
        }%
      }%
      \ifdraft{}{\vspace*{\stretch{1}}}%
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
      \ifdraft{}{\vspace*{\stretch{1}}}%
      \par%
      \large%
      \YAD@translation{academicfield}
      %
      \YAD@ifemptyorundef{\printacademicfield}{%
        \YAD@generic@argument@translate{academicfield}%
        \ifYAD@noacademicfield%
        \else%
        \YAD@ClassWarningNoLine{%
          Champ disciplinaire de la th\`ese non sp\'ecifi\'e :\MessageBreak%
          la commande \protect\academicfield\space n'a pas \'et\'e\MessageBreak%
          employ\'ee (celle-ci est requise) ou son argument\MessageBreak%
          obligatoire est vide (celui-ci doit \^etre renseign\'e)%
        }%
        \fi%
      }{%
        \textbf{\printacademicfield}%
      }%
      \ifundef{\printspeciality}{%
      }{%
        \ifdraft{}{\vspace*{\stretch{.5}}}%
        \par%
        \large%
        \YAD@translation{speciality} \textbf{\printspeciality}%
      }
    \end{center}
  \ifdraft{}{\vspace*{\stretch{.25}}}%
  % \end{minipage}%
  \begin{center}
    \usebox{\YAD@titlebox}%
  \end{center}
  % \noindent%
  % \begin{minipage}[c][\YAD@otherboxheight][c]{\YAD@titleboxwidth}
\YAD@committee@tabular%
\iftoggle{YAD@supervisor@specified}{%
}{%
  \ifYAD@nosupervisor%
  \else%
  \YAD@ClassWarningNoLine{%
    Directeur de th\`ese non sp\'ecifi\'e :\MessageBreak%
    la commande \protect\supervisor\space n'a pas \'et\'e\MessageBreak%
    employ\'ee (celle-ci est requise) ou ses arguments\MessageBreak%
    obligatoires sont vides (ceux-ci doivent \^etre\MessageBreak%
    renseign\'es)%
  }%
  \fi%
}%
\ifdraft{}{\vspace*{\stretch{.1}}}%
  % \end{minipage}
\ifnumcomp{\value{YAD@titlepages}}{=}{2}{\addtocounter{page}{2}}{}
\ifnumcomp{\value{YAD@titlepages}}{=}{3}{\addtocounter{page}{4}}{}
\endgroup%
\togglefalse{YAD@cover@page}%
}%
\expandafter\docsvlist{\YAD@mainlanguage}%
\iftoggle{YAD@two@titles}{%
  \toggletrue{YAD@second@title}%
  \ifthenelse{\equal{\YAD@mainlanguage}{french}}{%
    \ifYAD@nofrontcover%
    \docsvlist{english}%
    \else%
    \docsvlist{french,english}%
    \fi%
  }{%
    \ifYAD@nofrontcover%
    \docsvlist{french}%
    \else%
    \docsvlist{english,french}%
    \fi%
  }%
}{%
}%
\expandafter\selectlanguage\expandafter{\YAD@mainlanguage}%
}%
\AtEndDocument{%
  \ifboolexpr{%
    togl {YAD@maketitle@used}%
    or bool {YAD@nomaketitle}%
  }{%
  }{%
    \YAD@ClassWarningNoLine{%
      La commande \protect\maketitle\space n'a pas \'et\'e\MessageBreak%
      employ\'ee. Celle-ci est requise%
    }%
  }%
}%
\newcommand{\keywords}[2]{%
  \toggletrue{YAD@keywords@used}%
  \def\YAD@mainkeywords{#1}%
  \def\YAD@secondarykeywords{#2}%
  \ifthenelse{\isempty{#1}}{%
  }{%
    \ifthenelse{\isempty{#2}}{%
      \hypersetup{pdfkeywords={#1}}%
    }{%
      \hypersetup{pdfkeywords={#1} ({#2})}%
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
  \nottoggle{YAD@keywords@used}{%
    \ifYAD@nokeywords%
    \else%
    \YAD@ClassWarningNoLine{%
      La commande \protect\keywords\space n'a pas \'et\'e\MessageBreak%
      employ\'ee. Celle-ci est requise%
    }%
    \fi%
  }{%
    \ifdefempty{\YAD@mainkeywords}{%
      \YAD@ClassWarningNoLine{%
        Les mots cl\'e dans la langue principale\MessageBreak%
        (1er argument de la commande \protect\keywords) n'ont\MessageBreak%
        pas \'et\'e spécifi\'es. Ceux-ci sont requis%
      }%
    }{%
      \csdef{YAD@metakeywords}{\YAD@mainkeywords}
    }%
    \ifdefempty{\YAD@secondarykeywords}{%
      \YAD@ClassWarningNoLine{%
        Les mots cl\'e dans la langue secondaire\MessageBreak%
        (2e argument de la commande \protect\keywords) n'ont\MessageBreak%
        pas \'et\'e spécifi\'es. Ceux-ci sont requis%
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
  \YAD@clearemptydoublepage%
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
}%
\DTLnewdb{laboratories}%
\newcommand{\laboratory}[3][]{%
  \DTLnewrow{laboratories}%
  \dtlexpandnewvalue%
  \setkeys{YAD}{#1}%
  \DTLnewdbentry{laboratories}{name}{#2}%
  \DTLnewdbentry{laboratories}{address}{#3}%
  \ifthenelse{\equal{\cmdKV@YAD@logo}{}}{%
    \DTLnewdbentry{laboratories}{logo}{}%
  }{%
    \DTLnewdbentry{laboratories}{logo}{\cmdKV@YAD@logo}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@logoheight}{}}{%
    \DTLnewdbentry{laboratories}{logoheight}{}%
  }{%
    \DTLnewdbentry{laboratories}{logoheight}{\cmdKV@YAD@logoheight}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@url}{}}{%
    \DTLnewdbentry{laboratories}{url}{}%
  }{%
    \DTLnewdbentry{laboratories}{url}{\cmdKV@YAD@url}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@telephone}{}}{%
    \DTLnewdbentry{laboratories}{telephone}{}%
  }{%
    \DTLnewdbentry{laboratories}{telephone}{\cmdKV@YAD@telephone}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@fax}{}}{%
    \DTLnewdbentry{laboratories}{fax}{}%
  }{%
    \DTLnewdbentry{laboratories}{fax}{\cmdKV@YAD@fax}%
  }%
  \ifthenelse{\equal{\cmdKV@YAD@email}{}}{%
    \DTLnewdbentry{laboratories}{email}{}%
  }{%
    \DTLnewdbentry{laboratories}{email}{\cmdKV@YAD@email}%
  }%
  %
  \DTLgetvalue{\YAD@thelaboratory}{laboratories}{1}{\dtlcolumnindex{laboratories}{name}}%
  \DTLgetvalue{\YAD@thelaboratoryaddress}{laboratories}{1}{\dtlcolumnindex{laboratories}{address}}%
  \DTLgetvalue{\YAD@thelaboratoryurl}{laboratories}{1}{\dtlcolumnindex{laboratories}{url}}%
  %
}%
\csdef{makelaboratory}{%
  \@ifstar{\@tempswatrue\csuse{YAD@starnostar@makelaboratory}}{\@tempswafalse\csuse{YAD@starnostar@makelaboratory}}%
}%
\csdef{YAD@starnostar@makelaboratory}{%
  \YAD@clearemptydoublepage%
  \pagestyle{prepreliminary}%
  \if@tempswa%
  \else%
  \vspace*{\stretch{1}}%
  \fi
  \noindent%
  \ifthenelse{\DTLrowcount{laboratories}>1}{%
    \YAD@translation{prepared-at-pl}%
  }{%
    \YAD@translation{prepared-at}%
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
    \YAD@laboratory@logo=logo,%
    \YAD@laboratory@logoheight=logoheight,%
    \YAD@laboratory@url=url,%
    \YAD@laboratory@telephone=telephone,%
    \YAD@laboratory@fax=fax,%
    \YAD@laboratory@email=email%
  }{%
    \newlength{\YAD@laboratory@width}%
    \ifthenelse{\DTLiseq{\YAD@laboratory@logo}{}}{%
      \setlength{\YAD@laboratory@width}{\linewidth-\parindent}%
    }{%
      \setlength{\YAD@laboratory@width}{.625\linewidth-\parindent}%
    }%
    \begin{minipage}[t]{\YAD@laboratory@width}
      \textbf{\printlaboratory}%
      \\[.1cm]
      \printlaboratoryaddress%
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
            \ifthenelse{\equal{\YAD@laboratory@email}{}}{%
              \if@nolink%
              \YAD@generic@argument@translate{laboratoryemail}%
              \else%
              \YAD@href{mailto:laboratory@institute.fr}{\YAD@generic@argument@translate{laboratoryemail}}%
              \fi%
            }{%
              \if@nolink%
              \nolinkurl{\YAD@laboratory@email}%
              \else%
              \YAD@href{mailto:\YAD@laboratory@email}{\nolinkurl{\YAD@laboratory@email}}%
              \fi%
            }%
          }%
          \\%
        }%
        \ifthenelse{\DTLiseq{\YAD@laboratory@url}{}}{%
        }{%
          \YAD@translation{website} & % \printlaboratoryurl
          \def\YAD@texteurl{%
            \ifthenelse{\equal{\YAD@laboratory@url}{}}{%
              \YAD@reach@file{\YAD@generic@argument@translate{urllaboratory}}%
            }{%
              \YAD@reach@file{\nolinkurl{\YAD@laboratory@url}}%
            }%
          }%
          \ifthenelse{\equal{\YAD@laboratory@url}{}}{%
            \if@nolink%
            \YAD@texteurl%
            \else%
            \YAD@href{www.laboratory.fr}{\YAD@texteurl}%
            \fi%
          }{%
            \ifdraft{%
              \YAD@texteurl%
            }{%
              \if@nolink%
              \nolinkurl{\YAD@laboratory@url}%
              \else%
              \url{%
                \YAD@laboratory@url%
              }%
              \fi%
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
          \ifthenelse{\equal{\YAD@laboratory@logo}{}}{%
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
        \if@nolink%
        \YAD@logo%
        \else%
        \ifthenelse{\equal{\cmdKV@YAD@url}{}}{%
          \YAD@href{www.laboratory.fr}{\YAD@logo}%
        }{%
          \YAD@href{\cmdKV@YAD@url}{\YAD@logo}%
        }%
        \fi%
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
  }%
  \ifthenelse{\DTLrowcount{laboratories}<1}{%
    \vspace*{\stretch{1}}%
  }{%
  }%
}%
\newsavebox{\YAD@abstract@mainlanguage}%
\newsavebox{\YAD@abstract@secondarylanguage}%
\csgdef{YAD@abstractname@mainlanguage}{\abstractname}%
\csgdef{YAD@abstractname@secondarylanguage}{\abstractname}%
\newcounter{YAD@abstracts}%
\setcounter{YAD@abstracts}{0}%
\newcommand{\YAD@absract}[1]{%
  \ifthenelse{\isempty{#1}}{
    \ifnumcomp{\value{YAD@abstracts}}{>}{0}{%
      \global\toggletrue{YAD@second@abstract@empty}%
    }{%
      \global\toggletrue{YAD@main@abstract@empty}%
    }%
  }{%
    \begin{minipage}{\linewidth}
      \small%
      #1%
    \end{minipage}%
  }%
}
\newenvironment{abstract}[1][\abstractname]{%
  \global\toggletrue{YAD@abstract@used}%
  \ifnumcomp{\value{YAD@abstracts}}{>}{0}{%
    \global\toggletrue{YAD@second@abstract@used}%
    \csgdef{YAD@abstractname@secondarylanguage}{#1}%
    \lrbox{\YAD@abstract@secondarylanguage}%
    \expandafter\selectlanguage\expandafter{\YAD@secondarylanguage}%
  }{%
    \csgdef{YAD@abstractname@mainlanguage}{#1}%
    \lrbox{\YAD@abstract@mainlanguage}%
  }%
  \Collect@Body\YAD@absract%
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
      togl {YAD@abstract@used}%
      and not togl {YAD@main@abstract@empty}%
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
  \iftoggle{YAD@second@abstract@used}{%
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
        togl {YAD@abstract@used}%
        and not togl {YAD@second@abstract@empty}%
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
  \begin{minipage}[t]{\linewidth}
    \textbf{\printlaboratory*}%
    \\%
    \let\YAD@ORI@doublebackslash\\%
    \renewcommand{\\}{ -- }%
    \printlaboratoryaddress%
    \let\\\YAD@ORI@doublebackslash%
  \end{minipage}%
}%
\newcommand{\makeabstract}{%
  \pagestyle{preliminary}%
  \phantomsection%
  \addcontentsline{toc}{chapter}{\abstractname}%
  \toggletrue{YAD@makeabstract@used}%
  \bgroup%
  % \setlength{\footskip}{-15pt}%
  \setfootrule{0pt}%
  \setfoot[][%
  \iftoggle{YAD@work@inprogress}{%
    \textsc{\translate{lbl-versiondate} \today}%
  }{%
  }%
  ][]{%
    \YAD@laboratory@abstract@page%
  }{}{}%
  \YAD@clearemptydoublepage%
  \renewcommand{\YAD@chapter@header}{\abstractname}%
  \renewcommand{\YAD@section@header}{\abstractname}%
  \YAD@abstract@page%
  \YAD@clearemptydoublepage%
  \egroup%
}%
\newcommand{\YAD@abstract@page@rule}[1][black]{\bgroup\color{#1}\noindent\rule[2pt]{\linewidth}{2pt}\egroup}
\AtEndDocument{%
  \iftoggle{YAD@makeabstract@used}{%
  }{%
    \ifYAD@nomakeabstract%
    \else%
    \YAD@ClassWarningNoLine{%
      La commande \protect\makeabstract\space n'a pas \'et\'e\MessageBreak%
      employ\'ee. Celle-ci est requise%
    }%
    \fi%
  }%
}%
\AtEndDocument{%
  \iftoggle{YAD@abstract@used}{%
    \iftoggle{YAD@main@abstract@empty}{%
      \ifnumcomp{\value{YAD@abstracts}}{>}{1}{%
        \YAD@ClassWarningNoLine{%
          La 1re occurrence de l'environnement `abstract'\MessageBreak%
          a \'et\'e employ\'ee avec un contenu est vide.\MessageBreak%
          Un contenu non vide est requis%
        }%
      }{%
        \YAD@ClassWarningNoLine{%
          L'environnement `abstract' a \'et\'e\MessageBreak%
          employ\'e mais avec un contenu est vide.\MessageBreak%
          Un contenu non vide est requis%
        }%
      }%
    }{%
    }%
    \iftoggle{YAD@second@abstract@empty}{%
      \YAD@ClassWarningNoLine{%
        La 2e occurrence de l'environnement `abstract'\MessageBreak%
        a \'et\'e employ\'ee avec un contenu est vide.\MessageBreak%
        Un contenu non vide est requis%
      }%
    }{%
    }%
  }{%
    \ifYAD@noabstract%
    \else%
    \YAD@ClassWarningNoLine{%
      L'environnement `abstract' n'a pas \'et\'e\MessageBreak%
      employ\'e. Celui-ci est requis%
    }%
    \fi%
  }%
}%
\newcommand{\makebackcover}{%
  \YAD@clearemptydoublepage%
  \pagestyle{backcover}%
  \YAD@abstract@page%
}%
\csdef{makededications}{%
  \@ifstar{\@tempswatrue\csuse{YAD@starnostar@makededications}}{\@tempswafalse\csuse{YAD@starnostar@makededications}}%
}%
\csdef{YAD@starnostar@makededications}{%
  \YAD@clearemptydoublepage%
  \if@tempswa%
  \else%
  \vspace*{\stretch{2}}%
  \fi
  \DTLifdbempty{dedications}{%
    \YAD@generic@argument@translate{dedications}%
    \YAD@ClassWarningNoLine{%
      La commande \protect\makededications\space est employ\'ee\MessageBreak%
      alors que la commande
      \protect\dedication\protect{<d\'edicace>\protect},\MessageBreak%
      permettant de pr\'eparer des d\'edicaces, n'a pas\MessageBreak%
      \'et\'e employ\'ee. Veuillez l'employer au moins\MessageBreak%
      une fois%
    }%
  }{%
    \begin{flushright}
      \itshape%
      \DTLforeach*{dedications}{%
        \YAD@dedication=dedication%
      }{%
        \YAD@ifemptyorundef{\YAD@dedication}{%
          \YAD@generic@argument@translate{dedication}%
          \YAD@ClassWarningNoLine{%
            D\'edicace vide%
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
  \YAD@clearemptydoublepage%
  \if@tempswa%
  \else%
  \vspace*{\stretch{2}}%
  \fi
  \DTLifdbempty{frontepigraphs}{%
    \setlength\epigraphrule{0pt}%
    \begin{epigraphs}
      \qitem{\YAD@generic@argument@translate{epigraphs}}{}%
    \end{epigraphs}
    \YAD@ClassWarningNoLine{%
      La commande \protect\makefrontepigraphs\space est employ\'ee\MessageBreak%
      alors que la commande
      \protect\frontepigraph\protect{<\'epigraphe>\protect},\MessageBreak%
      permettant de pr\'eparer des \'epigraphes, n'a pas\MessageBreak%
      \'et\'e employ\'ee. Veuillez l'employer au moins\MessageBreak%
      une fois%
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
        \YAD@ClassWarningNoLine{%
          \'Epigraphe vide%
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
      }
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
  \YAD@clearemptydoublepage%
  \vspace*{\stretch{1}}%
}{%
  \vspace*{\stretch{1}}%
}%
\BeforeBeginEnvironment{epigraphspage}{%
  \pagestyle{prepreliminary}%
}%
\let\YAD@ORI@chapter\chapter%
\AfterPreamble{% delay the redefinition when titlesec has done its own
  \renewcommand\chapter{%
    \YAD@clearemptydoublepage%
    \phantomsection%
    \iftoggle{YAD@printed@on@paper}{%
    }{%
      \bookmarksetup{startatroot}%
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
    L'%
    \ifundef{\printinstitute}{%
      \YAD@generic@argument@translate{institute}
    }{%
      \printinstitute*
    }%
    %
    \ifundef{\printcoinstitute}{n'entend}{et l'\printcoinstitute*{} n'entendent}
    %
    donner aucune approbation ni improbation aux opinions \'emises dans les
    th\`eses : ces opinions devront \^etre consid\'er\'ees comme propres \`a
    leurs auteurs.%
  }{%
    The \printinstitute{}
    %
    \ifundef{\printcoinstitute}{}{and the \printcoinstitute{}}
    %
    neither endorse nor censure authors' opinions expressed
    in the theses: these opinions must be considered to be those of their
    authors.%
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
      \toggletrue{YAD@printbibliography@used}%
      \pagestyle{biblio}%
      \YAD@printbibliography@ORI[heading=bibintoc,#1]%
      \pagestyle{ordinary}%
    }%
  }{%
  }%
}%
\AtEndDocument{%
  \iftoggle{YAD@printbibliography@used}{%
  }{%
    \ifYAD@noprintbibliography%
    \else%
    \YAD@ClassWarningNoLine{%
      La commande \protect\printbibliography\space n'a pas \'et\'e\MessageBreak%
      employ\'ee. Celle-ci est requise%
    }%
    \fi%
  }%
}%
\hopatch@AfterPackage{glossaries}{%
  \iftoggle{YAD@printed@on@paper}{%
    \iftoggle{YAD@printed@on@paper@star}{%
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
    La commande \protect\newglssymbol ne peut \^etre\MessageBreak%
    employ\'ee que si le package 'glossaries' est charg\'e%
  }{%
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
}
\renewcommand{\printsymbols}[1][]{%
  \printglossary[type=symbols,style=yadsymbolstyle,#1]%
}%
  \AfterEndPreamble{%
    \renewcommand*{\glossarysection}[2][]{%
      \YAD@ORI@chapter*{#2}%
      \ifglstoc
      \addcontentsline{toc}{chapter}{#1}%
      \fi
    }
    \let\glossarysection\YAD@ORI@chapter%
  }%
}%
\AtEndPreamble{%
  \InputIfFileExists{\configurationdirectory/\configurationfile}%
  {\ClassInfo{yathesis}{%
    Fichier de configuration local \configurationfile\space
    trouv\'e%
    }%
  }{%
    % \YAD@ClassWarningNoLine{%
    %   Fichier de configuration local
    %   \configurationfile\space introuvable%
    % }%
  }%
}%
\AtEndPreamble{%
  \InputIfFileExists{\configurationdirectory/\macrosfile}%
  {\ClassInfo{yathesis}{%
      Fichier \macrosfile\space trouv\'e%
    }}%
  {%
    % \YAD@ClassWarningNoLine{%
    %   Fichier \macrosfile\space introuvable.\MessageBreak%
    %   Le fichier \macrosfile\space n'a pas \'et\'e trouv\'e\MessageBreak%
    %   dans le dossier `\configurationdirectory'%
    % }%
  }%
}%
\AfterEndPreamble{%
  \InputIfFileExists{\configurationdirectory/\titlefile}%
  {%
    \ClassInfo{yathesis}{%
      Fichier \titlefile\space des donn\'ees du titre trouv\'e%
    }%
  }%
  {%
    % \YAD@ClassWarningNoLine{%
    %   Fichier \titlefile\space des donn\'ees du titre
    %   introuvable.\MessageBreak%
    %   Le fichier \titlefile\space n'a pas \'et\'e trouv\'e\MessageBreak%
    %   dans le dossier `\configurationdirectory'.\MessageBreak Ce fichier
    %   \titlefile\space peut faciliter l'usage\MessageBreak de la classe%
    % }%
  }%
}%
\AtEndDocument{%
  \iftoggle{YAD@tableofcontents@used}{%
  }{%
    \ifYAD@notableofcontents%
    \else%
    \YAD@ClassWarningNoLine{%
      La commande \protect\tableofcontents\space n'a pas \'et\'e\MessageBreak%
      employ\'ee. Celle-ci est requise%
    }%
    \fi%
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
\expression{meta-date}{date de la soutenance}{date de la soutenance}
\expression{meta-academicfield}{discipline}{academic field}
\expression{meta-speciality}{sp\'ecialit\'e}{speciality}
\expression{meta-title}{titre du m\'emoire de th\`ese}{thesis title}
\expression{meta-subtitle}{sous-titre du m\'emoire de th\`ese}{thesis subtitle}
\expression{meta-firstname}{Pr\'enom}{Pr\'enom}
\expression{meta-lastname}{Nom}{Nom}
\expression{meta-role}{fonction}{fonction}
\expression{meta-corporation}{corporation}{corporation}
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
\expression{lbl-aim}{En vue de l'obtention du grade de docteur de l'}{In order to
  become Doctor from }%
\expression{lbl-aimand}{ et de l'}{ and from }%
\expression{lbl-caution}{Avertissement}{Caution}%
\expression{lbl-coinstitute}{}{}%
\expression{lbl-committeemembers}{Composition du jury}{Committee members}%
\expression{lbl-committeepresident}{pr\'esident}{President}%
\expression{lbl-comonitor}{co-encadrant}{Co-Monitor}%
\expression{lbl-company}{}{}%
\expression{lbl-conclusion}{Conclusion}{Conclusion}%
\expression{lbl-cosupervisor}{co-directeur}{Co-Supervisor}%
\expression{lbl-defendedon}{Soutenue le}{Defended on}%
\expression{lbl-doctoralschool}{\'Ecole doctorale}{Doctoral School}%
\expression{lbl-draft}{brouillon}{draft}%
\expression{lbl-email}{\Email}{\Email}%
\expression{lbl-examiners}{Examinateur}{Examiner}%
\expression{lbl-examiners-pl}{Examinateurs}{Examiners}%
\expression{lbl-fax}{\fax}{\fax}%
\expression{lbl-guests}{Invit\'e}{Guest}%
\expression{lbl-guests-pl}{Invit\'es}{Guests}%
\expression{lbl-institute}{}{}%
\expression{lbl-intermediate}{travail en cours}{work in progress}%
\expression{lbl-introduction}{Introduction}{Introduction}%
\expression{lbl-juniorresearcher}{charg\'e de recherche}{Junior Researcher}%
\expression{lbl-juniorresearcher*}{charg\'e de recherche
  \textsc{hdr}}{\textsc{hdr} Junior Researcher}%
\expression{lbl-keywords}{Mots cl\'es}{Keywords}%
\expression{lbl-mcf}{\textsc{mcf}}{Lecturer}%
\expression{lbl-mcf*}{\textsc{mcf} \textsc{hdr}}{\textsc{hdr} Lecturer}%
\expression{lbl-ordernumber}{Num\'ero d'ordre}{Order Number}%
\expression{lbl-phdthesis}{th\`ese}{Ph. D. Thesis}%
\expression{lbl-phone}{\Telefon}{\Telefon}%
\expression{lbl-preface}{Pr\'eface}{Preface}%
\expression{lbl-prepared-at}{Cette th\`ese a \'et\'e pr\'epar\'ee au}{This thesis has
  been prepared at}%
\expression{lbl-prepared-at-pl}{Cette th\`ese a \'et\'e pr\'epar\'ee dans les
  laboratoires suivants.}{This thesis has
  been prepared at the following research units.}%
\expression{lbl-professor}{professeur}{Professor}%
\expression{lbl-referees}{Rapporteur}{Referee}%
\expression{lbl-referees-pl}{Rapporteurs}{Referees}%
\expression{lbl-seniorresearcher}{directeur de recherche}{Senior Researcher}%
\expression{lbl-academicfield}{Discipline}{Academic Field}%
\expression{lbl-speciality}{Sp\'ecialit\'e}{Speciality}%
\expression{lbl-supervisor}{directeur}{Supervisor}%
\expression{lbl-supervisors}{Directeur de th\`ese}{Supervisor}%
\expression{lbl-supervisors-pl}{Directeurs de th\`ese}{Supervisors}%
\expression{lbl-thesisdefendedby}{Th\`ese pr\'esent\'ee par}{Thesis defended by}%
\expression{lbl-thesistitle}{Titre de la th\`ese}{Thesis Title}%
\expression{lbl-universitydepartment}{Unit\'e de recherche}{University Department}%
\expression{lbl-versiondate}{Version interm\'ediaire en date du}{Intermediate
  version as of}%
\expression{lbl-website}{Site}{Web Site}%
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
%%                                 yathesisdoc.sty,
%%                                 and a number of configuration files.
%%
%% End of file `yathesis.cls'.
