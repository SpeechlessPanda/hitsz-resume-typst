param(
  [string]$Source = "main.typ"
)

$ErrorActionPreference = "Stop"

Set-Location -LiteralPath $PSScriptRoot

if (-not (Test-Path -LiteralPath $Source)) {
  throw "Cannot find $Source."
}

$output = [System.IO.Path]::GetFileNameWithoutExtension($Source) + ".pdf"

Write-Host "Compiling $Source to $output..."

& typst compile $Source $output --font-path fonts

if ($LASTEXITCODE -ne 0) {
  throw "typst compile failed."
}
