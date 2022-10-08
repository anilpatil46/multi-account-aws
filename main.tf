# terraform apply -var-file="dev-app.tfvars" -var="createdBy=e2esa"

locals {
  tags = {
    Project     = var.project
    CreatedBy   = var.createdBy
    CreatedOn   = timestamp()
    Environment = var.environment
    TFWorkspace = terraform.workspace
  }
}

#ECS Cluster creation using module 
module "ecs_cluster" {
  source               = "/tmp/terraform/multi-account-aws/modules/e2esa-module-aws-ecs-cluster"  
  create_ecs_cluster = var.create_ecs_cluster
  ecs_cluster_name   = var.ecs_cluster_name
  container_insights = var.container_insights
  tags               = local.tags
}
