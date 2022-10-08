region      = "us-east-1"
environment = "dev"
account_id  = "410965199776"


# Common
project = "ecs_cluster"

# General 
aws_region  = "us-east-1"
profile     = "AwsYahoocouk"

# Backend
backend_s3_bucket      = "dev-dyndb"
backend_dynamodb_table = "dev-dyn"
bucket_name = "dev-dyndb"

# ECS
create_ecs_cluster = true
ecs_cluster_name   = "ecs-cluster-dev"
container_insights = false