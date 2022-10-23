#!/usr/bin/env pwsh
cd "$HOME/repositories/carso-msc-thesis"
latexmk -C
Remove-Item * -Include *.aux,*.bbl,*.log,*.out,*.blg,*.toc,*.gz,*.pdf,*.xmpi,*.xmpdata,*.nav,*.snm,*.fls,*.fdb_latexmk
latexmk -interaction=nonstopmode -pdf thesis.tex
pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
latexmk -interaction=nonstopmode -pdf slides.tex
lualatex -synctex=1 -interaction=nonstopmode slides.tex
Remove-Item * -Include *.aux,*.bbl,*.log,*.out,*.blg,*.toc,*.gz,*.xmpi,*.xmpdata,*.nav,*.snm,*.fls,*.fdb_latexmk
