#!/usr/bin/env pwsh
cd "$HOME/repositories/carso-msc-thesis"
Remove-Item * -Include *.aux
Remove-Item * -Include *.bbl
Remove-Item * -Include *.log
Remove-Item * -Include *.out
Remove-Item * -Include *.blg
Remove-Item * -Include *.toc
Remove-Item * -Include *.gz
Remove-Item * -Include *.pdf
