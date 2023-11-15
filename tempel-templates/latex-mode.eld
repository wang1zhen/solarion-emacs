latex-mode

(beg > "\\begin{" (s env) "}" n> r> n> "\\end{" (s env) "}")
(beq > "\\begin{equation}" n> r> n> "\\end{equation}")
(bseq > "\\begin{equation*}" n> r> n> "\\end{equation*}")
(bit > "\\begin{itemize}" n> "\\item "r> n> "\\end{itemize}")
(benum > "\\begin{enumeration}" n> "\\item"r> n> "\\end{enumeration}")
(gra > "\\includegraphics[" (s size) "]" "{" r "}")
(bb "\\mathbb{" p "}")
(mc "\\mathcal{" p "}")
(newpage "#+LATEX: \phantom{苟利国家生死以，岂因祸福避趋之。}" n>
         "#+LATEX: \thispagestyle{empty}" n>
         "#+LATEX: \clearpage" n n>)
(ph "\\phantom{m}" n>)
(vs > "#+LATEX: \\vspace{5cm}" n n>)
(lec "#+TITLE: " p n
     "#+DATE: " p n
     "#+AUTHOR: " p n
     "#+LATEX_CLASS: article" n
     "#+LATEX_CLASS_OPTIONS: [a4paper,12pt]" n
     "#+LATEX_HEADER: \\usepackage[scheme=plain]{ctex}" n
     "#+LATEX_HEADER: \\setlength{\\parindent}{0pt}" n
     "#+LATEX_HEADER: \\usepackage{geometry}" n
     "#+LATEX_HEADER: \\geometry{a4paper,scale=0.8}" n
     "#+LATEX_HEADER: \\usepackage{mathrsfs}" n
     "#+LATEX_COMPILER: xelatex" n
     "#+OPTIONS: toc:2" n
     "#+STARTUP: overview" n
     "#+STARTUP: inlineimages" n n)
