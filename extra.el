
(require 'ox-beamer)
(add-to-list 'org-beamer-environments-extra
             '("onlyenv" "O" "\\begin{onlyenv}%a" "\\end{onlyenv}"))

(require 'ox-latex)
(setq org-latex-listings 'minted)
(setq org-latex-packages-alist nil)
(add-to-list 'org-latex-packages-alist '("" "minted"))
(add-to-list 'org-latex-packages-alist '("" "xcolor"))


(setq org-latex-minted-options
      '(("frame" "lines") ("linenos=true") ("highlightcolor" "Thistle")))

(setq org-latex-pdf-process
      '("sed -i 's_	_        _g' %f"
	"sed -i 's/Emacs 24.4.1 (Org mode 8.3beta)//' %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	"pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
