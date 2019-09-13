# AWS Pet Project Template

This repository contain tooling for lighting fast creation of new AWS Pet Projects.

I'm using this to kick-start new ideas on AWS Public Cloud.

## How to use it

In order to create a new pet project on AWS, lets fork this repository and customize it for your needs.

- type `make` to get started

### Order (for Terraform)

1. `make artifacts`
2. `make tf-package`
3. `make tf-plan`
4. `make tf-deploy`

*nb: Terraform is using remote state on S3.*

## IaC

I'm using either Terraform or CloudFormation for IaC.