# React + TypeScript

This template provides a minimal setup to get React and TypeScript working, scaffolded by Remix.

## Prerequisites

A combination of **Docker** and **Kubernetes** are used to replicate a *production-like* environment locally. This improves the developer experience, as the developer can be confident that the functionality being developed locally will seamlessly integrate into production environments.

### Docker / Docker Compose

Docker is utilized to ensure that deployed resources are ephemeral as development is being conducted. This ensures that current development will be independent and unaffected by previous development.

### Kubernetes (In Progress)

Kubernetes is used to best replicate a production-like environment locally, if the application is to be deployed into **K8s**. MicroK8s is utilized as a wrapper to kubectl for a much smoother development experience.

## Development Workflow

Rapid development within this template revolves around the provided scripts within the `scripts/` directory.

| Script                      | Description |
| -----------                 | ----------- |
| **scripts/deploy.sh**       | Installs dependencies and spins up new containers and a test database. |
| **scripts/teardown.sh**     | Tears down existing resources. |
| **scripts/purge.sh**        | Cleans up existing containers and start from a clean, pristine state. |
