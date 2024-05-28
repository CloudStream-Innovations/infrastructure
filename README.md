# Infrastructure as Code

This repo contains the Terraform IaC for this project.

## Description

The Terraform code will deploys the following Amazon MWAA with VPC

- Creates a new sample VPC, 2 Private Subnets and 2 Public Subnets
- Creates Internet gateway for Public Subnets and NAT Gateway for Private Subnets
- Creates Amazon MWAA Environment with S3 bucket, Security Group and IAM Role

Adapted from: https://github.com/aws-ia/terraform-aws-mwaa/tree/main/examples/basic

### 1) Amazon Managed Workflows for Apache Airflow

Image Source: https://docs.aws.amazon.com/mwaa/latest/migrationguide/mwaa-architecture.html

![mwaa-architecture](img/mwaa-architecture.png)


