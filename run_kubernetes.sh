#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=chaitra2090/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment api --image=$dockerpath:latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Sleep for 60s while pods spin up
sleep 60s

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/api 8080:80

