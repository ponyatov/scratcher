\ProvidesClass{scratcher}[2014/11/11 Scratcher Magazine TeX class]
% (c) Dmitry Ponyatov <dponyatov@gmail.com>
\NeedsTeXFormat{LaTeX2e}

% used:
% https://www.sharelatex.com/blog/2011/03/27/how-to-write-a-latex-class-file-and-design-your-own-cv.html
% http://tutex.tug.org/pracjourn/2005-4/hefferon/hefferon.pdf

% inherited document class
\LoadClass[oneside]{article}

% Cyrillization
\RequirePackage[T1,T2A]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english,russian]{babel}
\RequirePackage{indentfirst}

% page layouting
% 	paper sizing A5
%		for booklet printing
\RequirePackage[paperwidth=148mm,paperheight=210mm,margin=10mm]{geometry}
%		for landscape screen reading
% \RequirePackage[paperwidth=210mm,paperheight=148mm,margin=5mm]{geometry}
%	column control
\RequirePackage{multicol}
%	page headers/footers
\RequirePackage{fancyhdr}
\fancypagestyle{coverpage}{
	\fancyhf{}
 	\renewcommand{\headrulewidth}{0.0mm}
% 	\fancyhead[RE,LO]{RE,LO}
% 	\fancyhead[LE,RO]{LE,RO}
}
\fancypagestyle{magazine}{
	\fancyhf{}
 	\renewcommand{\headrulewidth}{0.0pt}
}
\AtBeginDocument{\thispagestyle{coverpage}}
\pagestyle{magazine}

% % section formatting
% \RequirePackage{titlesec}
% \titleformat{\section}
% 	{\Large\scshape\raggedright\ttfamily}
% 	{}{0em}
% 	{}
% 	[\titlerule]
% \titleformat{\subsection}
% 	{\large\scshape\raggedright\ttfamily}
% 	{}{0em}
% 	{}

% graph processing
\usepackage[pdftex]{graphicx} % graph illustrations

% misc
\RequirePackage{wasysym} % smileys

% shorts
\newcommand{\Scr}{Scratcher}
\newcommand{\scr}{scratcher}
\newcommand{\scrAbout}{Online журнал для \scr ов\ --- людей, чье хобби создавать
вещи и технологии по следам уже существующих, в сотый раз изобретать велосипед,
чтобы разобраться как оно работает, научиться делать самому, а возможно найти
новый или забытый способ что-то сделать, и конечно получить удовольствие от
процесса поиска}

\newcommand{\internet}{Internet}

% magazine cover page

\newcommand{\cover}[2]{
\begin{multicols}{2}

\noindent\includegraphics[width=0.45\textwidth]{logo/chbz.png}

\columnbreak

{\noindent\raggedleft\Huge\textbf\Scr #1\bigskip\\}% magazine number

{\noindent\LARGE #2\bigskip\\}% number theme

\end{multicols}
{\noindent\Large\scrAbout\\}

\noindent\includegraphics[width=1\textwidth]{logo/trolley.jpg}
\clearpage\tableofcontents
}