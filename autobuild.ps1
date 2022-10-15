#!/usr/bin/env pwsh
cd "$HOME/repositories/carso-msc-thesis"
latexmk -C
Remove-Item * -Include *.aux,*.bbl,*.log,*.out,*.blg,*.toc,*.gz,*.pdf
latexmk -pdf thesis.tex
pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
