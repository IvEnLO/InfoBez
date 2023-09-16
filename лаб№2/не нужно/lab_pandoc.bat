cd %CD%
pandoc report.md -o report.pdf --pdf-engine=lualatex -V mainfront="Times New Roman" -V sansfront="DejaVu Sans" -V monofront="DejaVu Sans Mono"
pandoc -f markdown -t docx --data-dir=docs/rendering/ report.md -o report.docx
pandoc presentation.md -o presentation.pdf --pdf-engine=lualatex -V mainfront="Times New Roman" -V sansfront="DejaVu Sans" -V monofront="DejaVu Sans Mono" -t beamer --slide-level=2