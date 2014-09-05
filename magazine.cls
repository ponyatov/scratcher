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

% shorts
\newcommand{\Scr}{Скрэтчер}
\newcommand{\scr}{скрэтчер}
\newcommand{\internet}{Internet}

\newcommand{\term}[1]{\emph{#1}}
