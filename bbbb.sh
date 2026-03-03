name="app-setup"

gs -sDEVICE=pdfwrite \
   -dCompatibilityLevel=1.4 \
   -dPDFSETTINGS=/ebook \
   -dNOPAUSE -dQUIET -dBATCH \
   -sOutputFile=/Users/shuo/Desktop/rrl/clean/figures/pdf/${name}.pdf \
   /Users/shuo/Desktop/rrl/clean/figures/pdf_large/${name}.pdf
