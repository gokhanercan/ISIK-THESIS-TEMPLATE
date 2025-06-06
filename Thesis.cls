%%
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\input{myPackages.tex}		%Bunu kaldırma.
%\usepackage{tocloft}

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{10pt}{10pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           {4cm}  % left margin
                        {2.5cm}  % top margin
                        {2.5cm}  % right margin
                        {2.5cm}  % bottom margin
                        {0cm}  % head height
                        {0cm}  % head sep
                        {0cm}  % foot height
                        {0cm}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
%\usepackage{fancyhdr}
%\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
%\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
%\chead{}\lfoot{}\rfoot{}\cfoot{}
%\pagestyle{fancy}

%Bunlar çalışmıyor. Aktif değil. 
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}

\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
%\usepackage[centerlast,medium,sc,skip=10pt]{caption}
%\setlength{\captionmargin}{40pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {}
\examiner    {}
\degree      {}
\authors     {}
\university  {\texorpdfstring{\href{http://www.isikun.edu.tr}
                {I\c{s}ýk University}}
                {I\c{s}ýk University}}
\UNIVERSITY  {\texorpdfstring{\href{http://www.isikun.edu.tr}
                {I\c{S}IK UNIVERSITY}}
                {I\c{S}IK UNIVERSITY}}
\department  {\texorpdfstring{\href{http://www.isikun.edu.tr}
                {Graduate School of Science and Engineering}}
                {Graduate School of Science and Engineering}}
\DEPARTMENT  {\texorpdfstring{\href{http://www.isikun.edu.tr}
                {GRADUATE SCHOOL OF SCIENCE AND ENGINEERING}}
                {GRADUATE SCHOOL OF SCIENCE AND ENGINEERING}}
\group       {\texorpdfstring{\href{http://www2.isikun.edu.tr/personel/hfates/}
                {Video and Image Processing Lab}}
                {Video and Image Processing Lab}}
\GROUP       {\texorpdfstring{\href{http://www2.isikun.edu.tr/personel/hfates/}
                {VIDEO AND IMAGE PROCESSING LAB}}
                {VIDEO AND IMAGE PROCESSING LAB}}
\faculty     {\texorpdfstring{\href{http://www.isikun.edu.tr}
                {Faculty of Engineering}}
                {Faculty of Engineering}}
\FACULTY     {\texorpdfstring{\href{http://www.isikun.edu.tr}
                {FACULTY OF ENGINEERING}}
                {FACULTY OF ENGINEERING}}
\addresses   {}
\subject     {}
\keywords    {}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      {\LARGE by \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large A thesis submitted in partial fulfillment for the \par}
      {\large degree of Master of Science \par}
      \bigskip
      \bigskip
      {\large in the \par}
      {\large \facname \par}
      {\large \deptname \par}
      \bigskip
      \bigskip
      \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{plain}
  
\begin{center}    {\large{\textbf{\TEZBASLIK}} \par}  \vspace*{0.6cm}
    {\large{\textbf{ABSTRACT}} \par}\end{center}
{\normalsize }

}

\newenvironment{ozet}
{
  \btypeout{Özet Page}
  \thispagestyle{plain}
\begin{center} 
     {\large{\textbf{\TEZBASLIKTR}}\par}  \vspace*{0.6cm}
   {\large{\textbf{ÖZET}} \par}
    \end{center}
  {\normalsize } 
}

\newenvironment{conclusion}
{
  \btypeout{Conclusion Page}
  \thispagestyle{plain}
   \vspace*{1.3cm}
\begin{center} 
    {\large{\textbf{CONCLUSION}} \par}
\end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}

\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{3}		%TOC level buradan yönetiliyor. Cache'leri silip iki kere derle. Alttaki paragraph stillerini de geri açman lazım. 
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}

%TOC
%FORMAT: \@dottedtocline{level}{indent}{numwidth}
\renewcommand\tableofcontents{\pagestyle{empty} 
\setlength{\voffset}{-2.1cm}
\btypeout{TABLE OF CONTENTS}

%Section
\renewcommand{\l@section}{%
	\vspace{0.25cm}%
	\@dottedtocline{1}{1.6em}{2em}%
	%\vspace{0.25cm}%bu çalışmıyor bir türlü. Section->subsection arasına koyamadım boşluğu.
}
%SubSection
\renewcommand{\l@subsection}{%
	%\vspace{0.2cm}
	\@dottedtocline{2}{2.5em}{2.7em}
}
\renewcommand{\l@subsubsection}{\@dottedtocline{3}{2.5em}{3.5em}} % Adjust subsection 
%    \renewcommand{\l@paragraph}{\@dottedtocline{4}{2.5em}{4em}}
% \renewcommand{\l@subparagraph}{\@dottedtocline{5}{2.5em}{4.5em}}
 
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}

\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{LIST OF FIGURES}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}

\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{LIST OF TABLES}
\begin{spacing}{1}{%
    \setlength{\parskip}{0pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
%    \vspace*{-10pt}
	\setlength{\parskip}{0pt}
    \chapter*{\listtablename
%    	\setlength{\parskip}{-10pt}
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
%        \vspace{-10pt} 
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}
\end{spacing}
}

% Customizing List of Tables to ensure single-line entries
%\renewcommand{\listtablename}{List of Tables}
%\setlength{\cfttabindent}{0pt}                % No indentation for table entries
%\setlength{\cfttabnumwidth}{2.5em}            % Space for table number
%\renewcommand{\cfttabpresnum}{\hfill}         % Right-align table numbers
%\renewcommand{\cfttabaftersnum}{\hspace{0.5em}} % Space between number and caption
%\setlength{\cftbeforetabskip}{0.5ex}          % Space between entriesc

\newcommand\listsymbolname{ABBREVIATIONS LIST}
\usepackage{longtable}
\newcommand\listofsymbols[2]{\pagestyle{plain}
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\newcommand\listnomenclature{List of Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\setlength{\voffset}{-2.7cm}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\vspace*{1.2cm}
\begin{center}{\large{\textbf{ACKNOWLEDGEMENTS}}\par} \vspace*{0.3cm}\end{center}
{\normalsize #1}
\vfil\vfil\null

}
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{empty}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
%%
%% End of file `Thesis.cls'.
