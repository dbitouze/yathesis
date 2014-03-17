# mode: yathesis.cls
# denisbitouze, 17.03.2014
#
#include:class-book
#include:babel
#include:geometry
#include:babel
#include:xkvltxp
#include:xkeyval
#include:etoolbox
#include:xpatch
#include:filehook
#include:hopatch
#include:xifthen
#include:geometry
#include:graphicx
#include:environ
#include:adjustbox
#include:array
#include:xstring
#include:textcase
#include:translator
#include:fixltx2e
#include:epigraph
#include:marvosym
#include:setspace
#include:morewrites
#include:shorttoc
#include:tocvsec2
#include:tocbibind
#include:nonumonpart
#include:xcolor
#include:datatool
#include:fncychap
#include:titleps
#include:ifdraft
#include:draftwatermark
#include:index
#include:idxlayout
#include:babel
#include:datetime
#include:datenumber
#include:hyperref
#include:hypcap
#include:bookmark
#
# Cover and title pages
#
# Author
\author{prénom}{nom}{email}#n
#
# Title, etc.
\title[titre dans la langue secondaire]{titre dans la langue principale}#n
\subtitle[sous-titre dans la langue secondaire]{sous-titre dans la langue principale}#n
\academicfield[discipline dans la langue secondaire]{discipline dans la langue principale}#n
\speciality[spécialité dans la langue secondaire]{spécialité dans la langue principale}#n
\subject[sujet dans la langue secondaire]{sujet dans la langue principale}#n
#
\title{titre}#n
\subtitle{sous-titre}#n
\academicfield{discipline}#n
\speciality{spécialité}#n
\subject{sujet}#n
\date{jour}{mois}{année}#n
#
# Institute and entities
\pres[logo=%|,url=%|]{nom du PRES}#n
\institute[logo=%|,url=%|]{nom de l'institut}#n
\coinstitute[logo=%|,url=%|]{nom de l'institut de cotutelle}#n
\company[logo=%|,url=%|]{nom de l'entreprise}#n
\doctoralschool[logo=%|,url=%|]{nom de l'école doctorale}#n
\laboratory[logo=%|,url=%|,telephone=%|,fax=%|,email=%|]{nom du laboratoire}{adresse du laboratoire}#n
#
\pres{nom du PRES}#n
\institute{nom de l'institut}#n
\coinstitute{nom de l'institut de cotutelle}#n
\company{nom de l'entreprise}#n
\doctoralschool{nom de l'école doctorale}#n
\laboratory{nom du laboratoire}{adresse du laboratoire}#n
#
# Committee
\supervisor[affiliation=%|]{prénom}{nom}#n
\cosupervisor[affiliation=%|]{prénom}{nom}#n
\comonitor[affiliation=%|]{prénom}{nom}#n
\referee[affiliation=%|]{prénom}{nom}#n
\examiner[affiliation=%|]{prénom}{nom}#n
\committeepresident[affiliation=%|]{prénom}{nom}#n
\guest[affiliation=%|]{prénom}{nom}#n
#
\supervisor{prénom}{nom}#n
\cosupervisor{prénom}{nom}#n
\comonitor{prénom}{nom}#n
\referee{prénom}{nom}#n
\examiner{prénom}{nom}#n
\committeepresident{prénom}{nom}#n
\guest{prénom}{nom}#n
#
# Misc
\ordernumber[ordernumber]#n
\ordernumber#n*
#
# Preliminary pages
#
\disclaimer{clause}#n
\makedisclaimer#n
\makedisclaimer*#n
\keywords{mots clés dans la langue secondaire}{mots clés dans la langue principale}#n
\makekeywords#n
\makekeywords*#n
\makelaboratory#n
\makelaboratory*#n
\dedication{dédicace}#n
\makededications#n
\makededications*#n
\frontepigraph[langue]{épigraphe}{auteur}
\frontepigraph{épigraphe}{auteur}
\makefrontepigraphs#n
\makefrontepigraphs*#n
\begin{abstract}[intitulé alternatif]#n*
\begin{abstract}#n
\end{abstract}#n
\makeabstract#n
\newglssymbol[classement]{label}{symbole}{nom}{description}#n
\newglssymbol{label}{symbole}{nom}{description}#n
\tableofcontents[depth=%|]#n*
#
# Main pages
#
# Appendix pages
#
# Back matter pages
#
\makebackcover
#
# Customization
#
\expression{label}{valeur (en français)}{valeur (en anglais)}#n*
