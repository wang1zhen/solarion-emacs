org-mode

(title "#+TITLE: " p n "#+AUTHOR: " p n n)
(ex > "#+begin_example" n> r> n> "#+end_example")
(center > "#+begin_center" n> r> n> "#+end_center")
(comment > "#+begin_comment" n> r> n> "#+end_comment")
(quote > "#+begin_quote" n> r> n> "#+end_quote")
(include > "#+INCLUDE: " p n>)
(el > "#+begin_src emacs-lisp" n> r> n> "#+end_src" :post (org-edit-src-code))
(sh > "#+begin_src shell" n> r> n> "#+end_src" :post (org-edit-src-code))
(py > "#+begin_src python :results output :session" n> r> n> "#+end_src" :post (org-edit-src-code))
(la > "#+begin_src latex" n> r> n> "#+end_src" :post (org-edit-src-code))
(conf > "#+begin_src conf-unix" n> r> n> "#+end_src" :post (org-edit-src-code))
(m > "#+begin_src matlab" n> r> n> "#+end_src" :post (org-edit-src-code))
(gp > "#+begin_src gnuplot" n> r> n> "#+end_src" :post (org-edit-src-code))
(src > "#+begin_src " p n> r> n> "#+end_src" :post (org-edit-src-code))

;; LaTeX

(beg "\\begin{" (s env) "}" n> r> n> "\\end{" (s env) "}" :post (org-edit-special))
(beq "\\begin{equation}" n> r> n> "\\end{equation}" :post (org-edit-special))
(bseq "\\begin{equation*}" n> r> n> "\\end{equation*}" :post (org-edit-special))
(bsal "\\begin{align*}" n> r> n> "\\end{align*}" :post (org-edit-special))
(bsga "\\begin{gather*}" n> r> n> "\\end{gather*}" :post (org-edit-special))
(bb "\\mathbb{" p "}")
(newpage "#+LATEX: \\phantom{苟利国家生死以，岂因祸福避趋之。}" n>
         "#+LATEX: \\thispagestyle{empty}" n>
         "#+LATEX: \\clearpage" n n>)
(ph "\\phantom{m}" n>)
(vs > "#+LATEX: \\vspace{5cm}" n n>)
(lec "#+TITLE: " (file-name-base (buffer-file-name)) n
     "#+DATE: " p n
     "#+AUTHOR: " p n
     "#+LATEX_CLASS: article" n
     "#+LATEX_CLASS_OPTIONS: [a4paper,12pt]" n
     "#+LATEX_HEADER: \\setlength{\\parindent}{0pt}" n
     "#+LATEX_HEADER: \\usepackage{geometry}" n
     "#+LATEX_HEADER: \\geometry{a4paper,scale=0.8}" n
     "#+LATEX_HEADER: \\usepackage{mathrsfs}" n
     "#+LATEX_COMPILER: xelatex" n
     "#+OPTIONS: toc:2" n
     "#+STARTUP: overview" n
     "#+STARTUP: inlineimages" n n)

(note "#+TITLE: " (file-name-base (buffer-file-name)) n
      "#+DATE: " p n
      "#+LATEX_CLASS: article" n
      "#+LATEX_CLASS_OPTIONS: [a4paper,12pt]" n
      "#+LATEX_HEADER: \\setlength{\\parindent}{0pt}" n
      "#+LATEX_HEADER: \\usepackage{geometry}" n
      "#+LATEX_HEADER: \\geometry{a4paper,scale=0.8}" n
      "#+LATEX_HEADER: \\usepackage{mathrsfs}" n
      "#+LATEX_HEADER: \\author{WANG Yizhen\\王~一臻\\オウ~イシン\\37-236970}" n
      "#+LATEX_COMPILER: xelatex" n
      "#+OPTIONS: toc:nil author: nil" n
      "#+STARTUP: overview" n
      "#+STARTUP: inlineimages" n n)
