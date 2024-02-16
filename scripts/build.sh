#!/bin/bash
#
# Build Docker containers after code changes.

# Install Dependencies
npm install

# Build Containers
docker compose build