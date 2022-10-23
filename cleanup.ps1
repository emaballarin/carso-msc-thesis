#!/usr/bin/env pwsh
cd "$HOME/repositories/carso-msc-thesis"
latexmk -C
Remove-Item * -Include *.aux,*.bbl,*.log,*.out,*.blg,*.toc,*.gz,*.pdf,*.xmpi,*.xmpdata,*.nav,*.snm,*.fls,*.fdb_latexmk
