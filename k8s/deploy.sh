#!/bin/bash
#
# Deploy resources to Kubernetes.

# TODO: Convert these into manifests
APP="nginx"

# Create Deployment
microk8s kubectl create deployment $APP --image $APP

# Expose Deployment
microk8s kubectl expose deployment $APP --port 80 --target-port 80 --selector app=$APP --type ClusterIP --name $APP