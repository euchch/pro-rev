Push-Location $PSScriptRoot
try {
    docker kill $(docker ps -a)
    docker kill $(docker ps -q)
    ../../BE/dockerbuild.ps1
    ../../FE/dockerbuild.ps1
    docker-compose up -d fe be db
    docker image prune -af
} finally {
  Pop-Location
}
