#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath="rcdotnet/udap5microservice:project"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udap5microservice\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=projecttosend


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udap5microservice 8088:80

