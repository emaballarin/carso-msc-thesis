#!/usr/bin/env pwsh
cd "$HOME/repositories/carso-msc-thesis"
latexmk -C
Remove-Item * -Include *.aux,*.bbl,*.log,*.out,*.blg,*.toc,*.gz,*.pdf
latexmk -pdf thesis.tex
pdflatex -synctex=1 -interaction=nonstopmode thesis.tex
git add -A
git commit --all
gitpush
ssh raspicf /bin/bash /home/emaballarin/HTTPSERVE/CDN/scheduled_from_outside.sh
