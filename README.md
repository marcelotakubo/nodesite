# Ecosia - Assessment

Assessment made by Marcelo Takubo for Ecosia



## Requirements - Webserver

- Only accepts GET requests, on the URL "/tree"
- Returns a JSON response of the form: {"myFavouriteTree":<NAME>}, where <NAME> is the name of your favourite tree
- Has at least one software test

## Requirements - Deploying

This part of the assignment will consist of creating the necessary configuration files and build scripts which will allow you to build and deploy your web server into a Kubernetes cluster with a single command. This task has the following requirements:

- A running Kubernetes cluster in your local machine created using minikube - https://github.com/kubernetes/minikube
- A Dockerfile to build and package your application
- Kubernetes manifests to deploy your application into your minikube cluster using kubectl
- An Ingress manifest which will route to your web server only on the following URL: http://local.ecosia.org/tree
- A build script which, in a single command, takes care of building, packaging and deploying your application and configuring your minikube cluster. (You can assume minikube is already installed.)
- A README which includes all relevant information about the assignment

## How it was done

The webserver was made with node.js using express and supertest for the tests. All the files required are located on the app folder. The Dockerfile is based on a default node image.

The manifests for the deployment, service and ingress are located on the k8s folder.

## Deploy

In order to deploy the application on minikube, there is a simple shell script named `build-deploy.sh` on the root folder.

You can run the script simply by executing:

`sh build-deploy.sh`

Hope you like it. :)
