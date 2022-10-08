# Tags
variable "project" {}
#variable "createdBy" {}

# General 
variable "aws_region" {}
variable "profile" {}
variable "environment" {}

# Backend
variable "backend_s3_bucket" {}
variable "backend_dynamodb_table" {}

# ECS
variable "create_ecs_cluster" {}
variable "ecs_cluster_name" {}
variable "container_insights" {}


variable "account_id" {
  type        = string
  description = "AWS Account ID number of the account."
}

#S3 and DynamoDB
variable "table_name" {
  description = "Dynamodb table name (space is not allowed)"
  default = "my-table"
}

variable "table_billing_mode" {
  description = "name of the table"
  default = "PAY_PER_REQUEST"
}


variable "region" {
     description = "Region of AWS VPC"
}
variable "bucket_name" {
  description = "(Required) Creates a unique bucket name"
  type        = string
}

variable "acl" {
  description = "acl of bucket"
  default = "private"
}

variable "createdBy" {
  description = "user who created or run the terraform deployment"
  default = "anil"
}
