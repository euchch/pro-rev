Push-Location $PSScriptRoot
docker build -f ./DOCKERFILE -t pro_rev_be .
Pop-Location