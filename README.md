# I Love DevOps

This project demonstrates a simple DevOps pipeline using GitHub Actions, Docker, and Minikube. 



## Cloning the Repository

To clone this repository, run the following command in your terminal:

```bash
  https://github.com/Sandesh7502/devops-assignment.git

```
```bash
 cd i-love-devops

```
## Docker Containerization

Follow these steps to containerize the application using Docker:
Note: Make sure you have Docker installed on your system. If not, you can download and install Docker from [https://www.docker.com/get-started](https://www.docker.com/get-started).

Write a Dockerfile based on the Nginx image.
Build the Docker image:

```bash
  docker build -t sandesh2057/ilovedevops:v1  .

```

```bash
 docker run -d -p 8088:80 sandesh2057/ilovedevops:v1


```
Access the application at http://localhost:8088.

## Push Docker Image

After building the Docker image, it pushes the image to DockerHub.

```bash
  docker push sandesh2057/ilovedevops:v1
```


# Setting up Minikube and Kubernetes

This guide outlines the steps to set up Minikube and Kubernetes on your system.

## Step 1: Download Minikube Binary

Download the Minikube binary for your system from the official releases:
```bash
  curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb

```

## Step 2: Install Minikube

Install Minikube on your system using the downloaded Debian package:

```bash 
sudo dpkg -i minikube_latest_amd64.deb
```


## Step 3: Start Minikube

Start Minikube to initialize your local Kubernetes cluster:
```bash
minikube start
```

## Step 4: Verify Kubernetes Cluster

Check if the Kubernetes cluster is running by listing the pods:
```bash
kubectl get pods -A
```
# Kubernetes Deployment with Minikube

This guide outlines the steps to deploy and manage Kubernetes resources using Minikube.

## Step 1: Create Kubernetes Manifests

Create Kubernetes manifest files for deployment and service configuration:
```bash
mkdir k8s
cd k8s/
vim deploy.yaml
vim service.yaml
```

## Step 2: Apply Deployment Configuration

Apply the deployment configuration to create pods:
```bash
kubectl apply -f deploy.yaml
```

## Step 3: Verify Pods

Check the status of the pods:
```bash
kubectl get pods
```


## Step 5: Apply Service Configuration

Apply the service configuration to expose the deployment:
```bash
kubectl apply -f service.yaml
```

## Step 6: Verify Services

Check the status of the services:
```bash
kubectl get svc
```
## Step 7 :Edit Pods 
If needed, edit pods:
```bash
kubectl edit pods
kubectl edit svc

```

## Step 8: Access Service Endpoint

Access the service endpoint, typically via Minikube's IP and the NodePort:   curl -L minikube_ip:nodeport
```bash
curl -L 192.168.49.2:30007
```
## CI/CD Pipeline with GitHub Actions
The CI/CD pipeline is defined in the .github/workflows/main.yml file. It triggers on every push to the main branch.

