\ProvidesClass{magazine}[2014/11/11 Scratcher Magazine TeX class]
% (c) Dmitry Ponyatov <dponyatov@gmail.com>
% https://github.com/ponyatov/scratcher
\NeedsTeXFormat{LaTeX2e}

% inherited document class
\LoadClass[oneside]{article}

% page layouting
% 	paper sizing A5
%		for booklet printing
\RequirePackage[paperwidth=148mm,paperheight=210mm,margin=10mm]{geometry}
% multi colunms
\RequirePackage{multicol}

% Cyrillization
\RequirePackage[T1,T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,russian]{babel}
\RequirePackage{indentfirst}

% pdflatex options
\usepackage[unicode]{hyperref}
\RequirePackage[pdftex]{graphicx} % graph illustrations

% misc
\RequirePackage{wasysym} % smileys
\RequirePackage[svgnames]{xcolor}

% magazine specific
\newcommand{\article}[4]{
\section{\textit{\textcolor{blue}{#1}}\\#2}
%\begin{multicols}{2}
#3

\textit{#4}
%\end{multicols}
}

\newcommand{\subarticle}[1]{
%\end{multicols}
\subsection{#1}
%\begin{multicols}{2}
}

\newcommand{\subsubarticle}[1]{
%\end{multicols}
\subsubsection{#1}
%\begin{multicols}{2}
}

% shorts
\newcommand{\Scr}{Скрэтчер}
\newcommand{\scr}{скрэтчер}
\newcommand{\internet}{Internet}

\newcommand{\term}[1]{\emph{#1}}
\newcommand{\cp}[1]{\href{#1}{копипаста}}

\newcommand{\linux}{Linux}
\newcommand{\emlinux}{em\linux}

\newcommand{\ram}{RAM}

\newcommand{\git}{\file{git}}
\newcommand{\make}{\file{make}}

\newcommand{\sdl}{\file{libSDL}}

% program listings & software using manuals

\RequirePackage{menukeys}

\RequirePackage{listings}

\lstset{
extendedchars=true,inputencoding=utf8, % i18n
frame=single, % show frames around
numbers=left, numberstyle=\small,numbersep=1mm,% line numbering
tabsize=4, % tab style
keywordstyle=\color{blue}\texttt,
commentstyle=\color{magenta}\texttt,
showspaces=false
}

\newcommand{\file}[1]{\textbf{#1}}

\newcommand{\lst}[3]{
\lstinputlisting[title=\href{#2}{#1}]{#3}
}

% bibliography managment

\bibliographystyle{alpha}

% rule markup

\RequirePackage{framed}
