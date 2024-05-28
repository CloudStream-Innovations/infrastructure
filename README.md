# Infrastructure as Code

This repository contains the Terraform Infrastructure as Code (IaC) for the ETL Data Pipeline Proof of Concept project.

## Table of Contents

- [Description](#description)
- [Deployment](#deployment)
- [Testing](#testing)

## Description

The Terraform code in this repository will deploy the following infrastructure using Amazon MWAA (Managed Workflows for Apache Airflow) within a VPC:

- Creation of a new VPC with 2 private subnets and 2 public subnets.
- Setup of an Internet Gateway for the public subnets and a NAT Gateway for the private subnets.
- Deployment of an Amazon MWAA environment including an S3 bucket, Security Group, and IAM Role.

The setup is adapted from: [AWS IaC Terraform MWAA Example](https://github.com/aws-ia/terraform-aws-mwaa/tree/main/examples/basic).

### Amazon Managed Workflows for Apache Airflow

For more information on the architecture, refer to the [Amazon MWAA Architecture Documentation](https://docs.aws.amazon.com/mwaa/latest/migrationguide/mwaa-architecture.html).

![mwaa-architecture](img/mwaa-architecture.png)

## Deployment

This repository will become a submodule of the main solution. Therefore, limited deployment instructions are provided here. For comprehensive deployment instructions, refer to the main solutions repository: [CloudStream-Innovations/main-solution](https://github.com/CloudStream-Innovations/main-solution).

### Terraform Deployment

For detailed instructions on deploying a Terraform solution like this one, you can refer to tutorials such as: [Beginner Terraform Tutorial: Launching EC2 in AWS using Terraform](https://medium.com/@rizkiprass/beginner-terraform-tutorial-launching-ec2-in-aws-using-terraform-73f6d99e6233).

#### Basic Commands

To deploy the infrastructure, run the following Terraform commands:

```bash
terraform init
terraform plan
terraform apply
```

## Testing

- TO DO: Put in place a Github Action for this repo that tests the IaC against Local Stack
- TO DO: See if it is possible to update the sub module on the main-solution if the test passes
