name="exp-user-study"

gs -sDEVICE=pdfwrite \
   -dCompatibilityLevel=1.4 \
   -dPDFSETTINGS=/ebook \
   -dNOPAUSE -dQUIET -dBATCH \
   -sOutputFile=/Users/shuo/Desktop/rrl/clean/figures/pdf/${name}.pdf \
   /Users/shuo/Desktop/rrl/clean/figures/pdf_large/${name}.pdf

input="/Users/shuo/Desktop/rrl/clean/figures/pdf_large/${name}.pdf"
outdir="/Users/shuo/projects/residual-copilot.github.io/files/images"

# PDF -> PNG (2000px wide)
sips -s format png --resampleWidth 2000 "$input" --out "${outdir}/${name}.png"

# PDF -> JPG (2000px wide, 85% quality)
sips -s format jpeg -s formatOptions 85 --resampleWidth 2000 "$input" --out "${outdir}/${name}.jpg"
