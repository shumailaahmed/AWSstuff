
# AWSstuff

## List of Files

1. Dockerfile
2. app.py
3. aws lambda time api.pdf
4. bastionhost.tf
5. lambda_function.py

### Project Overview

This project provides two ways to expose the current date and time as an API:

1. A Flask-based API deployed in a Docker container.

2. An AWS Lambda function exposed via API Gateway.

Additionally, a Terraform configuration is provided to deploy a bastion host in AWS.

### File Descriptions

#### Dockerfile

The Dockerfile is used to containerize the Flask API. It:

1. Uses a Python base image.
2. Copies the application code into the container.
3. Installs dependencies.
4. Exposes port 5000.
5. Runs the Flask application.

#### app.py

The app.py file is a simple Flask application that:

Defines an endpoint (/datetime) that returns the current UTC date and time.

Runs on port 5000.

#### aws lambda time api.pdf

This file provides screenshot of lambda configuration with API gateway

#### bastionhost.tf

This Terraform file defines an AWS EC2 instance to be used as a bastion host. It:

1. Assumes an existing VPC and public subnet.

2. Creates an EC2 instance with a security group allowing SSH access.

3. Uses variables for instance configuration.

#### lambda_function.py

The lambda_function.py file contains an AWS Lambda function that:

1. Returns the current UTC date and time in JSON format.

2. Can be integrated with API Gateway to serve as a serverless API.
