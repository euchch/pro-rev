Push-Location $PSScriptRoot
docker build -f ./DOCKERFILE -t pro_rev_fe --network=host .
Pop-Location