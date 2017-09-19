%%
%% This is file `iscs-thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% iscs-thesis.dtx 
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from iscs-thesis.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file iscs-thesis.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}[1999/01/01]
\ProvidesClass{iscs-thesis}
    [2014/09/02 v1.3b
     Dept of IS/CS thesis class]
\newcommand\ist@classname{iscs-thesis}
\newcommand\ist@ahya{%
  You cannot go any further.\MessageBreak
  Type \space X <return> \space to quit.}
\newcommand*\ist@fatalerror[1]{%
  \ClassError\ist@classname{#1}\ist@ahya
  \batchmode\@@end}% bombout
\newcommand*\ist@error[1]{%
  \ClassError\ist@classname{#1}\@ehc}
\newcommand*\ist@err@invalid[1]{%
  \ist@fatalerror{\string#1 is invalid in this document class}}
\newcommand*\ist@err@notdefd[1]{%
  \ist@error{No \string#1 given}??}
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage \@titlepagetrue
\newif\if@openright
\newif\if@mainmatter \@mainmattertrue
\newif\if@seniorthesis
\newif\if@masterthesis
\newif\if@doctorthesis
\newif\ifist@interim
\newif\ifist@gradiss
\newif\ifist@sloppy
\newif\ifist@english
\newif\ifist@blankaftertp
\newcommand\ist@splitabst{}
\newif\ifist@longline
\newif\ifist@counttitlepage
\newif\ifist@bindoffset
\newif\ifist@simpletitlepage
\newlength\bindoffset
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{b4paper}
   {\setlength\paperheight {364mm}%
    \setlength\paperwidth  {257mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\DeclareOption{onecolumn}{\@twocolumnfalse}
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\DeclareOption{senior}%
  {\@seniorthesistrue \@masterthesisfalse \@doctorthesisfalse}
\DeclareOption{master}%
  {\@seniorthesisfalse \@masterthesistrue \@doctorthesisfalse}
\DeclareOption{doctor}%
  {\@seniorthesisfalse \@masterthesisfalse \@doctorthesistrue}
\DeclareOption{interim}{\ist@interimtrue}
\DeclareOption{gradiss}{\ist@gradisstrue}
\DeclareOption{sloppy}{\ist@sloppytrue}
\DeclareOption{splitabst}{\renewcommand\ist@splitabst{s}}
\DeclareOption{nosplitabst}{\renewcommand\ist@splitabst{n}}
\DeclareOption{autosplitabst}{\renewcommand\ist@splitabst{a}}
\DeclareOption{english}{\ist@englishtrue}
\DeclareOption{longline}{\ist@longlinetrue}
\DeclareOption{counttitlepage}{\ist@counttitlepagetrue}
\DeclareOption{nocounttitlepage}{\ist@counttitlepagefalse}
\ist@bindoffsettrue
\DeclareOption{nobindoffset}{\ist@bindoffsetfalse}
\DeclareOption{prodigal}{% now invalid
  \ist@fatalerror{You should not be prodigal in today's world!}}
\DeclareOption{simpletitlepage}{\ist@simpletitlepagetrue}
\ExecuteOptions{a4paper,11pt,oneside,onecolumn,draft,openany,%
            autosplitabst,counttitlepage}
\ProcessOptions
\if@seniorthesis\else \if@masterthesis\else
  \if@doctorthesis\else
    \ist@fatalerror{%
      None of `senior', `master', or `doctor'\MessageBreak
      is specified as option}
\fi\fi\fi
\newif\ifist@carepage
\if@twoside \ist@carepagetrue \fi
\if@openright \ist@carepagetrue \fi
\newcommand\ist@engine{e}
\@ifundefined{inhibitglue}{}{\renewcommand\ist@engine{p}}
\@ifundefined{jendlinetype}{}{\renewcommand\ist@engine{j}}
\if e\ist@engine \ist@englishtrue \fi
\newcommand\switchinterim[2]{%
  \ifist@interim #1\else #2\fi
}
\newcommand\switchenglish[2]{%
  \ifist@english #1\else #2\fi
}
\newcommand\blankaftertp{%
  \ist@blankaftertptrue
}\newcommand\noblankaftertp{%
  \ist@blankaftertpfalse
}
\if0\@ptsize\relax            %--------- 10pt
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{9.5}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\setlength\textwidth{360\p@}
\setlength\topskip{10\p@}
\setlength\marginparsep{11\p@}
\setlength\marginparpush{5\p@}
\else\if1\@ptsize\relax       %--------- 11pt
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt{13.6}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@ixpt{11}%
   \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\setlength\textwidth{384\p@}
\setlength\topskip{11\p@}
\setlength\marginparsep{10\p@}
\setlength\marginparpush{5\p@}
\else                         %--------- 12pt
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xiipt{14.5}%
   \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\newcommand\small{%
   \@setfontsize\small\@xipt{13.6}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 9\p@ \@plus3\p@ \@minus5\p@
               \parsep 4.5\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\newcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\newcommand\large{\@setfontsize\large\@xivpt{18}}
\newcommand\Large{\@setfontsize\Large\@xviipt{22}}
\newcommand\LARGE{\@setfontsize\LARGE\@xxpt{25}}
\newcommand\huge{\@setfontsize\huge\@xxvpt{30}}
\let\Huge=\huge
\setlength\textwidth{408\p@}
\setlength\topskip{12\p@}
\setlength\marginparsep{10\p@}
\setlength\marginparpush{7\p@}
\fi\fi                        %---------
\newcommand\isttitlesize{\@setfontsize\isttitlesize\@xivpt{25.2}}
\if p\ist@engine\relax
\DeclareFontShape{JY1}{mc}{m}{it}{<->ssub*mc/m/n}{}
\DeclareFontShape{JT1}{mc}{m}{it}{<->ssub*mc/m/n}{}
\DeclareFontShape{JY1}{mc}{m}{sc}{<->ssub*mc/m/n}{}
\DeclareFontShape{JT1}{mc}{m}{sc}{<->ssub*mc/m/n}{}
\DeclareFontShape{JY1}{mc}{m}{sl}{<->ssub*mc/m/n}{}
\DeclareFontShape{JT1}{mc}{m}{sl}{<->ssub*mc/m/n}{}
\DeclareFontShape{JY1}{mc}{bx}{it}{<->ssub*gt/m/n}{}
\DeclareFontShape{JT1}{mc}{bx}{it}{<->ssub*gt/m/n}{}
\DeclareFontShape{JY1}{mc}{bx}{sc}{<->ssub*gt/m/n}{}
\DeclareFontShape{JT1}{mc}{bx}{sc}{<->ssub*gt/m/n}{}
\DeclareFontShape{JY1}{mc}{bx}{sl}{<->ssub*gt/m/n}{}
\DeclareFontShape{JT1}{mc}{bx}{sl}{<->ssub*gt/m/n}{}
\DeclareFontShape{JY1}{gt}{m}{it}{<->ssub*gt/m/n}{}
\DeclareFontShape{JT1}{gt}{m}{it}{<->ssub*gt/m/n}{}
\DeclareFontShape{JY1}{gt}{m}{sc}{<->ssub*gt/m/n}{}
\DeclareFontShape{JT1}{gt}{m}{sc}{<->ssub*gt/m/n}{}
\DeclareFontShape{JY1}{gt}{m}{sl}{<->ssub*gt/m/n}{}
\DeclareFontShape{JT1}{gt}{m}{sl}{<->ssub*gt/m/n}{}
\DeclareFontShape{JY1}{gt}{bx}{it}{<->ssub*gt/m/n}{}
\DeclareFontShape{JT1}{gt}{bx}{it}{<->ssub*gt/m/n}{}
\DeclareFontShape{JY1}{gt}{bx}{sc}{<->ssub*gt/m/n}{}
\DeclareFontShape{JT1}{gt}{bx}{sc}{<->ssub*gt/m/n}{}
\DeclareFontShape{JY1}{gt}{bx}{sl}{<->ssub*gt/m/n}{}
\DeclareFontShape{JT1}{gt}{bx}{sl}{<->ssub*gt/m/n}{}
\fi
\ifist@bindoffset
  \setlength{\bindoffset}{9mm}
\else
  \setlength{\bindoffset}{0pt}
\fi
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}

\setlength\parskip{0\p@ \@plus \p@}
\if@twocolumn
  \setlength\parindent{1em}
\else
  \setlength\parindent{1.5em}
\fi
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setlength\headheight{12\p@}
\setlength\headsep   {12\p@}
\setlength\footskip{30\p@}
\setlength\maxdepth{.5\topskip}
\setlength\@tempdima{\paperwidth}
\addtolength\@tempdima{-\bindoffset}
\setlength\@tempdima{.833333\@tempdima}
\if@twocolumn
  \setlength\textwidth\@tempdima
\else\ifist@longline
  \setlength\textwidth\@tempdima
\else\ifdim\textwidth>\@tempdima\relax
  \setlength\textwidth\@tempdima
\fi\fi\fi
\@settopoint\textwidth
\setlength\@tempdima{.833333\paperheight}
\divide\@tempdima\baselineskip
\@tempcnta=\@tempdima
\setlength\textheight{\@tempcnta\baselineskip}
\addtolength\textheight{\topskip}
\if@twocolumn
 \setlength\marginparsep {10\p@}
\else
\fi
\if@twoside
  \setlength\@tempdima        {\paperwidth}
  \addtolength\@tempdima      {-\bindoffset}
  \addtolength\@tempdima      {-\textwidth}
  \setlength\oddsidemargin    {.333333\@tempdima}
  \addtolength\oddsidemargin  {-1in}
  \addtolength\oddsidemargin  {\bindoffset}
  \setlength\evensidemargin   {.666667\@tempdima}
  \addtolength\evensidemargin {-1in}
  \setlength\marginparwidth   {.666667\@tempdima}
  \addtolength\marginparwidth {-\marginparsep}
  \addtolength\marginparwidth {-0.4in}
\else
  \setlength\@tempdima        {\paperwidth}
  \addtolength\@tempdima      {-\bindoffset}
  \addtolength\@tempdima      {-\textwidth}
  \setlength\oddsidemargin    {.5\@tempdima}
  \addtolength\oddsidemargin  {-1in}
  \addtolength\oddsidemargin  {\bindoffset}
  \setlength\marginparwidth   {.5\@tempdima}
  \addtolength\marginparwidth {-\marginparsep}
  \addtolength\marginparwidth {-0.4in}
  \addtolength\marginparwidth {-.4in}
  \setlength\evensidemargin   {\oddsidemargin}
\fi
\ifdim \marginparwidth >2in
   \setlength\marginparwidth{2in}
\fi
\@settopoint\oddsidemargin
\@settopoint\marginparwidth
\@settopoint\evensidemargin
\setlength\@tempdima{\paperheight}
\addtolength\@tempdima{-\textheight}
\setlength\topmargin{.4\@tempdima}
\addtolength\topmargin{-1in}
\addtolength\topmargin{-\headheight}
\addtolength\topmargin{-\headsep}
\@settopoint\topmargin
\setcounter{topnumber}{2}
\renewcommand\topfraction{.8}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.8}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.1}
\renewcommand\floatpagefraction{.8}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.8}
\renewcommand\dblfloatpagefraction{.8}
\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            \@chapapp\ \thechapter. \ %
          \fi
        \fi
        ##1}}{}}%
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection. \ %
        \fi
        ##1}}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
          \if@mainmatter
            \@chapapp\ \thechapter. \ %
          \fi
        \fi
        ##1}}}}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }
\newcommand\ist@saveps{%
  \let\ist@mkboth\@mkboth
  \let\ist@oddhead\@oddhead\let\ist@oddfoot\@oddfoot
  \let\ist@evenhead\@evenhead\let\ist@evenfoot\@evenfoot
}
\newcommand\ist@restoreps{%
  \let\@mkboth\ist@mkboth
  \let\@oddhead\ist@oddhead\let\@oddfoot\ist@oddfoot
  \let\@evenhead\ist@evenhead\let\@evenfoot\ist@evenfoot
}
\newcommand\maketitle{%
  \pagenumbering{roman}%
  \maketitlepage
  \ist@putblankpage
  \ifist@counttitlepage\else \setcounter{page}\@ne \fi
  \makeabstract
}
\newenvironment{ist@titlepage}
 {\ifist@carepage \cleardoublepage \fi
  \if@twocolumn \@restonecoltrue\onecolumn
  \else \@restonecolfalse\newpage
  \fi
  \thispagestyle{empty}}
 {\if@restonecol \twocolumn
  \else \newpage \fi}
\newcommand\ist@putblankpage{%
  \ifist@interim \ist@blankaftertpfalse \fi
  \ifist@carepage \ist@blankaftertptrue \fi
  \ifist@blankaftertp
    \null\vfil \thispagestyle{empty}% make an empty page
    \newpage
  \fi
}
\newcommand\maketitlepage{%
  \ist@maketitle
  \ist@maketitle@post
}
\newcommand\makeabstract{%
  \ist@showabstract
  \ist@showabstract@post
}
\newcommand\ist@maketitle{\begin{ist@titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vskip-100\p@\@plus1fill\null
  \centering\isttitlesize
    {\ist@hookcr\@etitle}\par
    {\@jtitle}\par
    \vskip 20\p@
    by\par
    \vskip 10\p@
    {\@eauthor\\\@jauthor}\par
    \vskip 30\p@
    \ifist@interim
      {\einterimname\\\jinterimname}\par
    \else
      {\ethesisname\\\jthesisname}\par
    \fi
    \vskip 80\p@
    {\ist@submittedtoblock}\par
    \vskip 20\p@
    {Thesis Supervisor: \@esupervisor \quad \@jsupervisor\\
     \@supervisortitleline}\par
  \vskip-\footskip
  \vskip-100\p@\@plus1fill\null
  \end{ist@titlepage}%
  \setcounter{footnote}{0}%
}
\def\ist@hookcr{%
  \let\ist@curcr\\\def\\{\protect\ist@curcr}}
\newcommand\ist@showabstract{%
  \setlength{\@tempskipb}{36\p@\@minus24\p@}
  \if a\ist@splitabst \relax
    \setlength\@tempdima{\@tempskipb}%
    \addtolength\@tempdima{\ht\eabstractbox}%
    \addtolength\@tempdima{\dp\eabstractbox}%
    \addtolength\@tempdima{\ht\jabstractbox}%
    \addtolength\@tempdima{\dp\jabstractbox}%
    \ifdim \@tempdima>\textheight
      \renewcommand\ist@splitabst{s}%
    \fi
  \fi
  \if a\ist@splitabst \relax
    \begin{ist@titlepage}%
      \unvbox\eabstractbox
      \vskip\@tempskipb
      \unvbox\jabstractbox
    \end{ist@titlepage}%
  \else
    \ifist@carepage \cleardoublepage \fi
    \if@twocolumn \@restonecoltrue\onecolumn
    \else         \@restonecolfalse\newpage
    \fi
    \ist@saveps \pagestyle{empty}%
    \unvbox\eabstractbox
    \if s\ist@splitabst\relax \newpage
    \else  \vskip\@tempskipb
    \fi
    \unvbox\jabstractbox
    \if@restonecol\twocolumn \else \newpage \fi
    \ist@restoreps
  \fi
}
\newcommand\ist@submittedtoblock{%
  Submitted to\\\@submittedto\\
  \ifist@interim\else on \@date\\\fi
  in Partial Fulfillment of the Requirements\\
  for \@degreename
}
\if@seniorthesis
  \newcommand\@submittedto{%
    the Department of Information Science\\
    the Faculty of Science, the University of Tokyo}
  \newcommand\@degreename{%
    the Degree of \thesisgrade \ of Science}
\else
  \newcommand\@submittedto{%
    the Graduate School of the University of Tokyo}
  \ifist@gradiss
    \newcommand\@degreename{%
      the Degree of \thesisgrade \ of Science\\
      in Information Science}
  \else
    \newcommand\@degreename{%
      the Degree of \thesisgrade\
      of Information Science and Technology\\
      in Computer Science}
  \fi
\fi
\newcommand\ist@maketitle@post{%
  \global\let\thanks\relax
  \global\let\@thanks\@empty
  \global\let\@jauthor\@empty
  \global\let\@eauthor\@empty
  \global\let\@date\@empty
  \global\let\@jtitle\@empty
  \global\let\@etitle\@empty
  \global\let\@jsupervisor\@empty
  \global\let\@esupervisor\@empty
  \global\let\@supervisortitle\@empty
  \global\let\@submittedto\@empty
  \global\let\@degree\@empty
  \global\let\ist@submittedtoblock\@empty
  \global\let\einterimname\@empty
  \global\let\jinterimname\@empty
  \global\let\ethesisname\@empty
  \global\let\jthesisname\@empty
  \global\let\thesisgrade\@empty
  \global\let\jtitle\relax
  \global\let\etitle\relax
  \global\let\jauthor\relax
  \global\let\eauthor\relax
  \global\let\jsupervisor\relax
  \global\let\esupervisor\relax
  \global\let\supervisortitle\relax
  \global\let\date\relax
  %
  \global\let\maketitle\relax
  \global\let\maketitlepage\relax
  \global\let\ist@maketitle\relax
  \global\let\ist@maketitle@post\relax
}
\newcommand\ist@showabstract@post{%
  \global\let\makeabstract\relax
  \global\let\ist@putblankpage\relax
  \global\let\ist@showabstract\relax
  \global\let\ist@showabstract@post\relax
}
\ifist@simpletitlepage
\renewcommand\ist@maketitle{\begin{ist@titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vskip 40\p@\null
  \centering\isttitlesize
    {\@etitle}\par
    \vskip 10\p@
    {\ist@jparen\@jtitle}\par
    \vfill
    \@jauthor\par
  \vskip 10\p@
  \end{ist@titlepage}%
  \setcounter{footnote}{0}%
}
\fi
\ifist@english                %--------- english
\renewcommand\ist@maketitle{\begin{ist@titlepage}%
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \null\vskip-100\p@\@plus1fill\null
  \centering\isttitlesize
    {\ist@hookcr\MakeUppercase{\@etitle}}\par
    \vskip 20\p@
    by\par
    \vskip 10\p@
    {\@eauthor}\par
    \vskip 30\p@
    \ifist@interim
      {\einterimname}\par
    \else
      {\ethesisname}\par
    \fi
    \vskip 80\p@
    {\ist@submittedtoblock}\par
    \vskip 20\p@
    {Thesis Supervisor: \@esupervisor\\
     \@supervisortitleline}\par
  \vskip-\footskip
  \vskip-100\p@\@plus1fill\null
  \end{ist@titlepage}%
  \setcounter{footnote}{0}%
}
\renewcommand\ist@showabstract{%
  \ifist@carepage \cleardoublepage \fi
  \if@twocolumn \@restonecoltrue\onecolumn
  \else         \@restonecolfalse\newpage
  \fi
  \ist@saveps \pagestyle{empty}%
  \unvbox\eabstractbox
  \if@restonecol\twocolumn \else \newpage \fi
  \ist@restoreps
}
\fi                           %---------
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \thesection {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\frontmatter{%
  \ist@clearpage
  \@mainmatterfalse}
\newcommand\mainmatter{%
  \ist@clearpage
  \@mainmattertrue
  \pagenumbering{arabic}}
\newcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \@mainmatterfalse}
\newcommand\ist@clearpage{%
  \ifist@carepage \cleardoublepage \else \clearpage \fi}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname\nobreakspace\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
      \if@mainmatter
        \chapn@font \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
      \fi
    \fi
    \interlinepenalty\@M
    \chapt@font #1\par\nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \chapt@font #1\par\nobreak
    \vskip 40\p@
  }}
\newcommand*\chapterfont[2]{%
   \gdef\chapn@font{#1}\gdef\chapt@font{#2}}
\chapterfont{\LARGE\bfseries}{\LARGE\bfseries}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\sec@font}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\ssec@font}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\sssec@font}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
\newcommand*\sectionfont[3]{%
   \gdef\sec@font{#1}\gdef\ssec@font{#2}\gdef\sssec@font{#3}}
\sectionfont{\large\bfseries}{\normalsize\bfseries}{\normalsize\bfseries}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\if0\@ptsize\relax            %--------- 10pt
\setlength\footnotesep{6.65\p@}
\setlength{\skip\footins}{9\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{2\p@ \@plus 1\p@ \@minus 1\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep 4\p@ \@plus2\p@ \@minus\p@
            \topsep 8\p@ \@plus2\p@ \@minus4\p@
            \itemsep4\p@ \@plus2\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@ \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\else\if1\@ptsize\relax       %--------- 11pt
\setlength\footnotesep{7.7\p@}
\setlength{\skip\footins}{10\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {12\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{3\p@ \@plus 1\p@ \@minus 1\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep 4.5\p@ \@plus2\p@ \@minus\p@
            \topsep 9\p@   \@plus3\p@ \@minus5\p@
            \itemsep4.5\p@ \@plus2\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    4.5\p@ \@plus2\p@ \@minus\p@
              \parsep    2\p@   \@plus\p@  \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2\p@ \@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\else                         %--------- 12pt
\setlength\footnotesep{8.4\p@}
\setlength{\skip\footins}{10.8\p@ \@plus 4\p@ \@minus 2\p@}
\setlength\floatsep    {12\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\textfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {14\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\dblfloatsep    {14\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\dbltextfloatsep{20\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{10\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{10\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{3\p@ \@plus 2\p@ \@minus 2\p@}
\def\@listi{\leftmargin\leftmargini
            \parsep 5\p@  \@plus2.5\p@ \@minus\p@
            \topsep 10\p@ \@plus4\p@   \@minus6\p@
            \itemsep5\p@  \@plus2.5\p@ \@minus\p@}
\let\@listI\@listi
\@listi
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    5\p@   \@plus2.5\p@ \@minus\p@
              \parsep    2.5\p@ \@plus\p@    \@minus\p@
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep    2.5\p@\@plus\p@\@minus\p@
              \parsep    \z@
              \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep   \topsep}
\fi\fi                        %---------
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\leftmargin \labelsep1em%
                        \advance\labelwidth-\labelsep
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\normalfont\bfseries #1\hfil}
\newenvironment{acknowledge}
               {\begin{titlepage}
                \vspace*{50\p@}%
                  {\parindent \z@ \raggedright \normalfont
                   \interlinepenalty\@M
                   \chapt@font Acknowledgements\par\nobreak
                   \vskip 40\p@}%
               }
               {\end{titlepage}}
\newsavebox{\eabstractbox}%
\newsavebox{\jabstractbox}%
\newenvironment{eabstract}%
    {\global\setbox\eabstractbox\vbox\bgroup
     \everypar{}% cancel \@nodocument
     \@beginparpenalty\@lowpenalty \small
     \setlength{\parindent}{1.5em}%
     \begin{center}%
       \bfseries\MakeUppercase{\eabstractname}%
       \@endparpenalty\@M
     \end{center}\par}%
    {\par\egroup}
\newenvironment{jabstract}%
    {\global\setbox\jabstractbox\vbox\bgroup
     \everypar{}%
     \renewcommand{\baselinestretch}{1.4}%
     \@beginparpenalty\@lowpenalty \small
     \setlength{\parindent}{1zw}%
     \begin{center}%
       \bfseries \jabstractname
       \@endparpenalty\@M
     \end{center}\par}%
    {\par\egroup}
\ifist@english
\renewenvironment{jabstract}%
    {\global\setbox\jabstractbox\vbox\bgroup\everypar{}}
    {\par\egroup\global\setbox\jabstractbox\box\voidb@x}
\fi
\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
\newenvironment{titlepage}
    {\ifist@carepage \cleardoublepage \fi
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
    }
\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\newcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\chapter*{\bibname
        \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
      \addcontentsline{toc}{chapter}{\bibname}% added(v1.1a)
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
\@addtoreset{footnote}{chapter}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\eabstractname{Abstract}
\newcommand\jabstractname{\ist@j@abst}
\if@seniorthesis
 \newcommand\ethesisname{A Senior Thesis}
 \newcommand\einterimname{An Interim Report (Abstract)}
 \newcommand\jthesisname{\ist@j@senior}
 \newcommand\jinterimname{\ist@j@interim}
 \newcommand\thesisgrade{Bachelor}
 \newcommand\ist@whatscience{Information Science}
\else \if@masterthesis
 \newcommand\ethesisname{A Master Thesis}
 \newcommand\einterimname{An Interim Report (Abstract)}
 \newcommand\jthesisname{\ist@j@master}
 \newcommand\jinterimname{\ist@j@interim}
 \newcommand\thesisgrade{Master}
 \newcommand\ist@whatscience{Computer Science}
\else \if@doctorthesis
 \newcommand\ethesisname{A Doctor Thesis}
 \newcommand\einterimname{An Interim Report (Abstract)}
 \newcommand\jthesisname{\ist@j@doctor}
 \newcommand\jinterimname{\ist@j@interim}
 \newcommand\thesisgrade{Doctor}
 \newcommand\ist@whatscience{Computer Science}
\fi \fi \fi
\def\etitle#1{\gdef\@etitle{#1}}
\def\jtitle#1{\gdef\@jtitle{#1}}
\def\eauthor#1{\gdef\@eauthor{#1}}
\def\jauthor#1{\gdef\@jauthor{#1}}
\def\esupervisor#1{\gdef\@esupervisor{#1}}
\def\jsupervisor#1{\gdef\@jsupervisor{#1}}
\def\supervisortitle#1{\gdef\@supervisortitle{#1}}
\def\@etitle{\ist@err@notdefd\etitle}
\def\@jtitle{\ist@err@notdefd\jtitle}
\def\@eauthor{\ist@err@notdefd\eauthor}
\def\@jauthor{\ist@err@notdefd\jauthor}
\def\@esupervisor{\ist@err@notdefd\esupervisor}
\def\@jsupervisor{\ist@err@notdefd\jsupervisor}
\def\@supervisortitle{\ist@err@notdefd\supervisortitle}
\def\@date{\ist@err@notdefd\@date}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\newcommand\thesupervisortitle{\@supervisortitle}
\newcommand*\supervisortitleline[1]{\gdef\@supervisortitleline{#1}}
\newcommand\@supervisortitleline{%
  \@supervisortitle\ of \ist@whatscience
}
\ifist@english \catcode`\.=14 \else \catcode`\.=9 \fi
.\newcommand\ist@j@senior{卒業論文}
.\newcommand\ist@j@master{修士論文}
.\newcommand\ist@j@doctor{博士論文}
.\newcommand\ist@j@abst{論文要旨}
.\newcommand\ist@j@interim{中間報告}
.\newcommand\ist@jparen[1]{（#1）}
\catcode`\.=12\relax
\def\title{\ist@err@invalid\title}
\def\author{\ist@err@invalid\author}
\def\and{\ist@err@invalid\and}
\def\abstract{\ist@err@invalid\abstract}
\if e\ist@engine
  \input{ist-en.clo}
\fi
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\def\sloppy{\tolerance 9999 \hbadness 5000
            \emergencystretch 3em
            \hfuzz 2.5\p@ \vfuzz .5\p@}
\ifist@sloppy
  \sloppy
\fi
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\endinput
%%
%% End of file `iscs-thesis.cls'.
