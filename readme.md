# My Undergraduate Thesis

Welcome! These are the source files of my undergraduate thesis.

In the last semester of my undergraduate study(2021-Spring),
I take a course called '**Basic Algebraic Geometry**' on which this thesis is based.
The course is taught by [Prof. Jinxing Cai](https://www.math.pku.edu.cn/jsdw/js_20180628175159671361/c_20180628175159671361/69891.htm)
who is also, of course, my mentor of this thesis.
Though it has a name related to Algebra,
this course primarily gives an introduction to the theory of
compact [Riemann surfaces](https://en.wikipedia.org/wiki/Riemann_surface)
and [plane algebraic curves](https://en.wikipedia.org/wiki/Algebraic_curve)
by using undergraduate level complex analysis,
so it would have a strong flavor of complex analysis rather than algebra.

During the couse, we have already proved [genus formula](https://en.wikipedia.org/wiki/Genus%E2%80%93degree_formula)
for an algebraic curve with its singular points all being ordinary double points.
In this thesis, I will give a proof of the general case.

With respect to this thesis,
I would like to express my thanks from the bottom of heart to
my mentor, my pals 萧浩梁 and 周昊天(a.k.a 天神) for their significant help.

## Download

You can download the [pdf file](https://raw.githubusercontent.com/complex2-liu/undergraduate-thesis/main/genus-formula.pdf) only,
or download the whole project to your local and simply run
```bash
cd my-undergraduate-thesis
latexmk
```
My personal tex setting(like various user-defined commands and environment)
is included in [header](./header).

## About the template

My template is derived from [overleaf](https://www.overleaf.com/latex/templates/2021-peking-university-undergraduate-thesis/bctgcdnckbdq)(the original
template is probably from [CasperVector/pkuthss](https://github.com/CasperVector/pkuthss))
and I make a bit of modification in order to accommodate
the layout requirement.

### Font

It appears that pkuthss uses `ctex` to support Chinese,
though it is not recommended generally.
I notice that `Latex` will use fonts that `/usr/local/texlive/2021/texmf-dist/tex/latex/ctex/fontset/ctex-fontset-macnew.def` assign,
so one can modify the file with same name in current directory to customize font.
Note that you may adjust the file name according to your OS(Windows/Mac/Linux).

Since `FangSong` does not contain in my computer,
so I use `\setCJKsansfont { SimHei }` instead.

I disable
```tex
%\RequirePackage[defaultsups]{newtxtext}
%\RequirePackage[cmintegrals, varg]{newtxmath}
```
so as to use Computer Modern instead of Times New Roman,
the latter one presented in math equations looks ugly.

### Cover layout
Add
```tex
		{%
			\ifthss@opt@ugly%
				\zihao{-0}\includegraphics[height = 1.9em]{pkulogo}\hspace{0.3em}%
				\raisebox{0.32em}{\includegraphics[height = 1.3em]{pkuword}}\\[0.5em]
			\else%
				\zihao{1}\includegraphics[height = 2.4em]{pkulogo}\hspace{0.4em}%
				\raisebox{0.4em}{\includegraphics[height = 1.6em]{pkuword}}\\[0.8em]
			\fi%
			{\ifx\heiti\thesiscover\empty{\heiti\zihao{-0}\cthesisname}\else{\heiti{\zihao{-0}\thesiscover}}\fi}%
		}
		\vfill
		% Title of the thesis.
		{%
			\zihao{2}\linespread{1.6}\heiti{\label@ctitle}%
			\thss@int@fillinblank{1}{0.64\textwidth}{\heiti{\fontsize{22bp}{26.4pt}\@ctitle}}%
		}
    {%
    \\
    \vspace{1em}
			\zihao{2}\linespread{1.6}\sffamily{\label@etitle}%
			\thss@int@fillinblank{2}{0.64\textwidth}{\heiti{\fontsize{22bp}{26.4pt}\@etitle}}%
		}
```
to `pkuthss.cls` and
```tex
\def\label@etitle{\phantom{题目：}}
```
to `pkuthss-utf8.def` in the proper place so that
both Chinese title and English title are presented,
and the size of `本科生毕业论文` will be right.

Add the following to the proper place of `pkuthss.cls`
```tex
		% Date.
		{\heiti\ifthss@opt@ugly\zihao{3}\else\zihao{-2}\fi\@date}
```
to change the font of date.
One can similarly change the font of `姓名, 学号, 院系, 专业, 指导教师`.

### Abstract layout

Change the font of Chinese abstract to `\songti`.
Disable part of the following
```tex
% Typeset the English abstract.
\newenvironment{eabstract}{%
	\thss@int@pdfmark{\eabstractname}{eabstract}
	\chapter*{\sffamily\eabstractname}\markboth{\eabstractname}{}%
	%\chapter*{\sffamily\@etitle}\markboth{\eabstractname}{}
	%\noindent
	%\begin{minipage}{\linewidth}
	%\centering{
	%	~\\
	%	{\@eauthor} ({\@emajor})\\
	%	{\label@ementor}{\@ementor}\\[8pt]
	%	\textbf{\sffamily\eabstractname}
	%}
	%\end{minipage}\\[20pt]
}{% Keywords at the bottom of the page.
	\vfill\noindent\label@ekeywords{\@ekeywords}%
}
```
to make the layout of English abstract page right.

## Troubleshooting

- pkuthss use `enumitem` package which is incompaticle with `enumerate` package.
- `\usepackage{amsthm}` will lead to
    ```tex
    LaTeX Error: Command \openbox already defined.
    ```
    Use
    ```tex
    \let\openbox\relax
    \usepackage{amsthm}
    ```
    instead to resolve.
- `\usepackage{amssymb}` will lead to
    ```tex
    LaTeX Error: Command `\Bbbk' already defined
    ```
    Use
    ```tex
    \let\Bbbk\relax
    \usepackage{amsthm}
    ```
    instead to resolve.

