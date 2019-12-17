\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{myres}

\LoadClass[11pt,letterpaper]{article}

\RequirePackage[hidelinks]{hyperref}
\RequirePackage{multirow}
\RequirePackage{array}
\RequirePackage{tabularx}
\RequirePackage{makecell}

\RequirePackage{titlesec}
\RequirePackage[usenames,dvipsnames]{xcolor}

\RequirePackage{fontspec}
\setmainfont[Ligatures=TeX]{Adobe Garamond Pro}
\setsansfont[Ligatures=TeX]{Gill Sans Std}
\setmonofont{PT Mono}

\newfontfamily\latoh[Ligatures=TeX]{Lato Hairline}
\newfontfamily\latog[Ligatures=TeX]{Lato Heavy}
\newfontfamily\latot[Ligatures=TeX]{Lato Thin}

\newcommand{\mydegree}[1]{{\latog\large #1}}

\RequirePackage[letterpaper,hmargin=.75in,top=.5in,bottom=.75in]{geometry}
\defaultfontfeatures{Mapping=tex-text}

\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

\titleformat{\section}
{\color{headings}\scshape\fontspec{Lato Medium}\fontsize{16pt}{24pt}\selectfont\raggedright\uppercase}
{}
{0em}
{}
{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec{Lato}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\myendsec}{\vspace{-1.2em}}

\newcolumntype{R}{>{\raggedleft\arraybackslash}X}%
\newcommand{\mktop}[7]
{
  {\latoh\addfontfeature{LetterSpace=10.0}\fontsize{40}{48}\selectfont
    #1}
  {\latog\addfontfeature{LetterSpace=10.0}\fontsize{40}{48}\selectfont
    #2}\\
  \hrule
  \begin{tabularx}{\textwidth}{ @{} l | r l R}
    #6 & Voice: & #4 & \url{#3}\\
    #7 & Web: & \url{#5}
  \end{tabularx}
}

\newcommand{\myschool}[3]{
	{\latog\large #1}\\
	\textit{#2} \hfill #3
	
	\vspace{.5em}
}
  
\newcommand{\myworkplace}[5]{
	\begin{tabularx}{\textwidth}{@{} p{3.2cm} l R}
	#1 & {\latot\selectfont\textit{#2}} $\bullet$ {\latog\large #3} & #4\\
	& \multicolumn{2}{l}{\makecell[l]{#5}}\\
	\end{tabularx}\\
}
  
  
\setlength\parindent{0pt}
