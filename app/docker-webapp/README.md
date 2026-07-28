# Docker Web App

## Overview

Simple static web application served from an Nginx container.

## Technologies

- Docker
- Nginx

## Features

- Containerized deployment
- Unprivileged Nginx runtime
- JSON health endpoint
- Read-only Compose runtime with dropped Linux capabilities
- Lightweight static web server
- GitHub Actions build and smoke-test validation

## Local Run

```powershell
docker compose up --build --wait
```

Open `http://localhost:8080`. Health information is available from
`http://localhost:8080/health`.

## Verification

```powershell
pwsh ./tests/smoke.ps1
```

The smoke test verifies the home page, health response, and non-root container
user, then removes the test environment.
