name="method"

gs -sDEVICE=pdfwrite \
   -dCompatibilityLevel=1.4 \
   -dPDFSETTINGS=/ebook \
   -dNOPAUSE -dQUIET -dBATCH \
   -sOutputFile=/Users/shuo/Documents/papers/26Feb_residual_copilot/Release/clean/figures/pdf/${name}.pdf \
   /Users/shuo/Documents/papers/26Feb_residual_copilot/Release/clean/figures/pdf_large/${name}.pdf

input="/Users/shuo/Documents/papers/26Feb_residual_copilot/Release/clean/figures/pdf/${name}.pdf"
outdir="/Users/shuo/projects/residual-copilot.github.io/files/images"

# PDF -> PNG (2000px wide, trimmed)
magick -density 300 "$input" -trim -resize 2000x "${outdir}/${name}.png"

# PDF -> JPG (2000px wide, trimmed, 85% quality)
magick -density 300 "$input" -trim -resize 2000x -quality 85 "${outdir}/${name}.jpg"
