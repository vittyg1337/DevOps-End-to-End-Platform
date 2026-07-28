$ErrorActionPreference = "Stop"

$composeProject = "devops-portfolio-test"

try {
    docker compose --project-name $composeProject up --build --detach --wait
    if ($LASTEXITCODE -ne 0) {
        throw "Docker Compose failed to start a healthy service."
    }

    $homeResponse = Invoke-WebRequest -Uri "http://127.0.0.1:8080/" -UseBasicParsing
    if ($homeResponse.StatusCode -ne 200 -or $homeResponse.Content -notmatch "DevOps End-to-End Platform") {
        throw "The application home page did not return the expected response."
    }

    $health = Invoke-RestMethod -Uri "http://127.0.0.1:8080/health"
    if ($health.status -ne "healthy" -or $health.service -ne "docker-webapp") {
        throw "The health endpoint returned an unexpected payload."
    }

    $containerId = docker compose --project-name $composeProject ps --quiet web
    $runtimeUid = docker exec $containerId id -u
    if ($runtimeUid -eq "0") {
        throw "The container is running as root."
    }

    Write-Host "Smoke tests passed: page, health endpoint, and non-root runtime."
}
finally {
    docker compose --project-name $composeProject down --volumes --remove-orphans
}
