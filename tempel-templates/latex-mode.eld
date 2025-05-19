latex-mode

(beg > "\\begin{" (s env) "}" n> r> n> "\\end{" (s env) "}")
(beq > "\\begin{equation}" n> r> n> "\\end{equation}")
(bal "\\begin{align}" n> r> n> "\\end{align}")
(bga "\\begin{gather}" n> r> n> "\\end{gather}")
(bseq > "\\begin{equation*}" n> r> n> "\\end{equation*}")
(bsal "\\begin{align*}" n> r> n> "\\end{align*}")
(bsga "\\begin{gather*}" n> r> n> "\\end{gather*}")
(bit > "\\begin{itemize}" n> "\\item "r> n> "\\end{itemize}")
(benum > "\\begin{enumeration}" n> "\\item"r> n> "\\end{enumeration}")
(gra > "\\includegraphics[" p "]" "{" p "}")
(bfr > "\\begin{frame}" n> "\\frametitle{" p "}" n> p n> "\\end{frame}")
(bb "\\mathbb{" p "}")
(mc "\\mathcal{" p "}")
(newpage "\\phantom{苟利国家生死以，岂因祸福避趋之。}" n>
         "\\thispagestyle{empty}" n>
         "\\clearpage" n n>)
(ph "\\phantom{m}" n>)
(vs > "\\vspace{5cm}" n n>)
