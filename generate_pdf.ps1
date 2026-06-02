# Script to generate PDF from HTML using Edge Headless
$htmlPath = "c:\Users\LENOVO\Desktop\cv\cv.html"
$pdfPath = "c:\Users\LENOVO\Desktop\cv\MOISES-ALDAS-MOYA-ATS.pdf"

Write-Host "Generando PDF a partir de $htmlPath..."

# Build absolute URI for index.html
$fileUri = "file:///" + $htmlPath.Replace("\", "/")

# Call Microsoft Edge in headless mode to print to PDF
Start-Process "msedge" -ArgumentList "--headless", "--disable-gpu", "--no-sandbox", "--print-to-pdf-no-header", "--print-to-pdf=$pdfPath", $fileUri -Wait

# Verify the file was created
if (Test-Path $pdfPath) {
    $size = (Get-Item $pdfPath).Length
    Write-Host "PDF generado exitosamente en $pdfPath ($size bytes)"
} else {
    Write-Error "Error: No se pudo generar el archivo PDF."
}
