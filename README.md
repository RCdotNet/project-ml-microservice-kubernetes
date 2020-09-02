# Udacity project for operationalizing microservice

[![CircleCI](https://circleci.com/gh/RCdotNet/project-ml-microservice-kubernetes.svg?style=svg)](https://www.udacity.com)
## Project Overview

In this project, I applied the skills I have acquired in this course to operationalize a Machine Learning Microservice API. 

I got a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project demonstrates my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project's goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project i did:
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy my containerized application using Docker and made a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and created a Kubernetes cluster
* Deploy a container using Kubernetes and made a prediction
* Upload a complete Github repo with CircleCI to indicated that my code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project showcase's my abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv by using `make setup`
* activate the virtual environment by using `source ~/.devops/bin/actiavate` 
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh` (docker environment have to be installed and running)
3. Upload the docker image to docker hub: `./upload_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh` (check the setup steps for kubernetes bellow)



### Kubernetes Steps

* Setup and Configure Kubernetes locally
* Deploy microservice via `./run_kubernetes.sh`
* When the container deployed and you see the port 8088 forwarded to container's pot 80 run `./make_prediction.sh` to make a prediction.

### Files explantion

* .circleci directory contains CircleCi configuration
* model_data directory contains data for the pre trained ML
* output_txt_files contains the files required by the rubric
* app.py --> the python application
* Dockerfile --> the file for building docker image
* make_prediction.sh --> As the name suugests, make a prediction eighter using container or kubernetes
* Makfile --> set up environment, linting etc.
* README.md --> this file you read right now
* dependencies.txt --> contains dependencies for this project
* run_docker.sh --> generate and run this project in a docker container
* run_kubernetes.sh --> install the project from docker hub and run in kubernetes cluster
* upload_docker.sh --> upload the validated container to github for further using in kubernetes
   