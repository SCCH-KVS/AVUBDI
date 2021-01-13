#!/bin/bash

# NOTE: This file deploys the infrastructure services on the local system with an overlay network.
# Make sure to have Docker installed and running! For Windows download Docker Desktop and switch to Linux containers.
# If your are using Ubuntu or REHL distributions, you can use "docker-install-RHEL.sh" or "docker-install-Ubuntu.sh" 
scp -r ./cogniplant root@10.0.0.1:/home

ssh root@10.0.0.1 "docker-compose up /home/cogniplant/docker-compose.yml -d --build"