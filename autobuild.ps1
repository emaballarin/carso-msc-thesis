#!/usr/bin/env pwsh
cd "$HOME/repositories/carso-msc-thesis"
latexmk -C
Remove-Item * -Include *.aux,*.bbl,*.log,*.out,*.blg,*.toc,*.gz,*.pdf,*.xmpi,*.xmpdata,*.nav,*.snm,*.fls,*.fdb_latexmk
if ($args -contains "thesis") {
    latexmk -interaction=nonstopmode -pdf thesis.tex
    pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
}
if ($args -contains "slides") {
    latexmk -pdflatex=lualatex -interaction=nonstopmode -pdf slides.tex
    lualatex -synctex=1 -interaction=nonstopmode slides.tex
}
if ($args -contains "thinslides") {
    latexmk -pdflatex=lualatex -interaction=nonstopmode -pdf thin_slides.tex
    lualatex -synctex=1 -interaction=nonstopmode thin_slides.tex
}
Remove-Item * -Include *.aux,*.bbl,*.log,*.out,*.blg,*.toc,*.gz,*.xmpi,*.xmpdata,*.nav,*.snm,*.fls,*.fdb_latexmk
Remove-Item * -Include *.aux,*.bbl,*.log,*.out,*.blg,*.toc,*.gz,*.xmpi,*.xmpdata,*.nav,*.snm,*.fls,*.fdb_latexmk
