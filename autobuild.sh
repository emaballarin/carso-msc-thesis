#!/usr/bin/env bash
cd "$HOME/repositories/carso-msc-thesis"
latexmk -C
rm -f ./*.aux ./*.bbl ./*.log ./*.out ./*.blg ./*.toc ./*.gz ./*.pdf
latexmk -pdf thesis.tex
