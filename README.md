# CI Pipeline

This repository contains a CI pipeline for building, pushing, and deploying a Docker image to a Kubernetes cluster using Minikube.

## Workflow

The CI pipeline is defined in the `.github/workflows/ci.yml` file and consists of two jobs:

1. **build**: This job builds the Docker image and pushes it to Docker Hub.
2. **deploy**: This job deploys the Docker image to a Kubernetes cluster using Minikube.

## Setup

To use this pipeline, you need to set up the following secrets in your GitHub repository:

- `DOCKER_USERNAME`: Your Docker Hub username.
- `DOCKER_PASSWORD`: Your Docker Hub password.

## Running the Pipeline

The pipeline is triggered on every push to the `main` branch. It performs the following steps:

1. **Checkout the source code**: Uses the `actions/checkout@v4` action to checkout the source code.
2. **Build the Docker image**: Builds the Docker image and tags it with the commit SHA.
3. **Login to Docker Hub**: Logs in to Docker Hub using the provided credentials.
4. **Push the Docker image**: Pushes the Docker image to Docker Hub.
5. **Deploy to Kubernetes**: Deploys the Docker image to a Kubernetes cluster using Minikube.
6. **Wait for the pod to start**: Waits for the pod to be created and reach the `Running` state.
7. **Verify the deployment**: Verifies that the pod is running and the service is available.
8. **Clean up resources**: Cleans up the Kubernetes resources after the deployment.

## Notes

- The `deploy` job uses Minikube to create a local Kubernetes cluster.
- The `deploy` job installs `kubectl` to manage the Kubernetes cluster.
- The `deploy` job waits for the pod to be in the `Running` state before verifying the deployment.
- The `deploy` job cleans up the Kubernetes resources after the deployment.