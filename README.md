# Node Hello World

Simple node.js app that servers "hello world"

Great for testing simple deployments to the cloud

## Run It

`npm start`

Overview
This repository contains the source code and configuration files for a project that includes Docker, Git workflows, Helm charts, ArgoCD setup, and integration with Google Kubernetes Engine (GKE). The project involves creating a Dockerized application, setting up continuous integration (CI) with GitHub Actions, pushing images to DockerHub, deploying to GKE using Helm, and automating synchronization with ArgoCD through webhooks.

Project Components
•	Docker
•	Dockerfile: Multi-stage Dockerfile to build and package the application.
•	docker-compose.yaml (if applicable): Configuration for local development environment.
•	Continuous Integration (CI)
•	GitHub Actions Workflow: Configured to build and push Docker images to DockerHub on each push to main branch.
•	Helm Charts
•	helm/: Directory containing Helm charts for deploying the application.
•	Chart.yaml: Helm chart metadata.
•	templates/: Kubernetes manifest templates.
•	values.yaml: Default configuration values for Helm chart.
•	ArgoCD Setup
•	argocd-application.yaml: YAML file defining the ArgoCD application configuration.
•	argocd-project.yaml: YAML file defining the ArgoCD project configuration.
•	Google Kubernetes Engine (GKE)
               Setting up a GKE cluster for deploying applications with ArgoCD involves provisioning the                        
               cluster, installing ArgoCD, and configuring applications declaratively.
•	Webhook Integration
      Webhook Configuration: Instructions on setting up webhooks to automatically sync applications in 
Setup Instructions
Prerequisites
•	Docker installed locally.
•	GitHub repository forked and cloned.
•	Access to DockerHub for image registry.
•	Google Cloud Platform (GCP) trial account or project with billing enabled.
•	Access to GCP Console and gcloud CLI tool.
•	Access to ArgoCD server.

Step-by-Step Setup
Docker Setup:

Build the Docker image using the provided Dockerfile:
docker build -t <image_name> .
Continuous Integration (CI):

Configure GitHub Actions to build and push Docker images on each push to the master branch.
Helm Charts:
Customize Helm charts in the helm/ directory as per application requirements.
Package and install Helm chart on local or GKE cluster:
helm install <release_name> ./helm or refer https://argo-cd.readthedocs.io/en/stable/getting_started/

ArgoCD Setup:
Deploy ArgoCD to your GKE cluster using Helm or https://argo-cd.readthedocs.io/en/stable/getting_started/

Configure ArgoCD application and project using YAML files provided.

Google Kubernetes Engine (GKE):
creating it manually through the Google Cloud Platform (GCP) Console or using a configuration YAML file
Webhook Integration:

Configure webhooks in GitHub repository settings to trigger automatic synchronization of applications in ArgoCD.

Results-
https://35.184.170.173/applications/argocd/
Argocd Login Credentials-
Username-admin
Password-SB@16022001


Additional Notes
Security: 
•	Ensure sensitive information such as API keys, passwords, and private keys are stored securely and not committed to the repository.
•	Please do not share the provided password/credentials with anyone.
