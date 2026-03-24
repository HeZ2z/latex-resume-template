\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/03/25 v0.2.0 Open-source friendly resume class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax
\LoadClass[zihao=5,autoindent=0pt,fontset=fandol]{ctexart}

\RequirePackage{array}
\RequirePackage{enumitem}
\RequirePackage{fontawesome5}
\RequirePackage{fontspec}
\RequirePackage[margin=1.1cm,top=0.8cm,bottom=0.8cm]{geometry}
\RequirePackage[hidelinks,unicode]{hyperref}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{titlesec}
\RequirePackage{xcolor}

\pagestyle{empty}
\pagenumbering{gobble}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\setstretch{0.94}

\IfFontExistsTF{TeX Gyre Heros}
  {
    \setmainfont{TeX Gyre Heros}[Ligatures=TeX]
    \setsansfont{TeX Gyre Heros}[Ligatures=TeX]
  }
  {}
\IfFontExistsTF{Latin Modern Mono}
  {\setmonofont{Latin Modern Mono}}
  {}
\renewcommand{\familydefault}{\sfdefault}

\definecolor{resumeaccent}{RGB}{25,80,150}
\definecolor{resumemuted}{RGB}{90,90,90}

\setlist[itemize]{
  noitemsep,
  topsep=2pt,
  itemsep=2pt,
  parsep=0pt,
  partopsep=0pt,
  leftmargin=1.3em,
  labelsep=0.5em
}

\titleformat{\section}
  {\Large\bfseries\color{resumeaccent}}
  {}
  {0pt}
  {}
  [\color{resumeaccent}\titlerule]
\titlespacing*{\section}{0pt}{2.2ex}{0.8ex}

\newcommand{\@resumename}{}
\newcommand{\@resumesubtitle}{}
\newcommand{\@resumecontacts}{}

\newcommand{\ResumeName}[1]{\gdef\@resumename{#1}}
\newcommand{\ResumeSubtitle}[1]{\gdef\@resumesubtitle{#1}}
\newcommand{\ResumeContacts}[1]{\gdef\@resumecontacts{#1}}

\newcommand{\MakeResumeHeader}{
  \begin{center}
    {\Huge\bfseries \@resumename \par}
    \vspace{0.35em}
    {\large \@resumesubtitle \par}
    \vspace{0.45em}
    {\small \@resumecontacts \par}
  \end{center}
}

\newcommand{\ResumeEntry}[3]{
  \noindent
  \begin{tabularx}{\textwidth}{@{}X>{\raggedleft\arraybackslash}p{0.26\textwidth}@{}}
    \textbf{#1} & \textcolor{resumemuted}{#3} \\
    \textcolor{resumemuted}{#2} & \\
  \end{tabularx}
}

\newcommand{\ResumeMeta}[1]{
  \vspace{0.15em}
  {\small\textcolor{resumemuted}{#1}\par}
}

\newcommand{\ResumeDescription}[1]{
  \vspace{0.15em}
  {\small #1\par}
}

\newenvironment{ResumeItemList}
  {\begin{itemize}}
  {\end{itemize}}

\endinput
