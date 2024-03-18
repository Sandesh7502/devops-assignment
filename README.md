

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

Write a Dockerfile based on the Nginx image.
Build the Docker image:

```bash
  docker build -t ilovedevops .

```

```bash
 docker run -d -p 8088:80 ilovedevops


```
Access the application at http://localhost:8080.


## Minikube Deployment

To deploy the application to Minikube:
Start Minikube:

```bash
  minikube start


