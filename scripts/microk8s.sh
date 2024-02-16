#!/bin/bash
#
# Start/Stop a MicroK8s cluster.
set -e

ACTION=${1}

# Start MicroK8s
if [ $ACTION == "start" ]; then
  echo "Starting MicroK8s..."
  microk8s start
  microk8s enable dashboard
  microk8s enable dns
  microk8s enable registry
  microk8s enable istio
fi

# Stop MicroK8s
if [ $ACTION == "stop" ]; then
  echo "Stopping MicroK8s..."
  microk8s stop
fi

# Access Kubernetes Dashboard
if [ $ACTION == "dashboard" ]; then
  echo "Launching Kubernetes Dashboard..."
  microk8s dashboard-proxy
fi

# Monitor Kubernetes Resources
if [ $ACTION == "watch" ]; then
  echo "Watching Resources..."
  watch microk8s kubectl get all
fi