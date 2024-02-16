#!/bin/bash
#
# Tear down Kubernets resources.

# TODO: Convert these into manifests
APP="nginx"

# Delete Deployment(s)
microk8s kubectl delete deployment $APP

# Delete Service(s)
microk8s kubectl delete service $APP
