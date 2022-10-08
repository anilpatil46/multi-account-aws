region      = "us-east-1"
environment = "prod"
account_id  = "720723393012"


# Common
project = "ecs_cluster"

# General 
aws_region  = "us-east-1"
profile     = "prod-gmail"

# Backend
backend_s3_bucket      = "prod-dyndb"
backend_dynamodb_table = "prod-dyn"
bucket_name = "prod-dyndb"

# ECS
create_ecs_cluster = true
ecs_cluster_name   = "ecs-cluster-dev"
container_insights = false