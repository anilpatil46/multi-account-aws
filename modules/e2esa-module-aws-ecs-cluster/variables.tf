# -------------------------------------------
# Common Variables
# -------------------------------------------

variable "aws_region" {
  description = "AWS infrastructure region"
  type        = string
  default     = null
}


variable "tags" {
  description = "Tag map for the resource"
  type        = map(string)
  default     = {}
}


# -------------------------------------------
# AWS ECS
# -------------------------------------------

# ECS
variable "create_ecs_cluster" {
  description = "Decision to create ecs cluster"
  type        = bool
  default     = true
}

variable "ecs_cluster_name" {
  description = "ECS Cluster name"
  type        = string
  default     = null
}

variable "container_insights" {
  description = "Enable container insights"
  type        = bool
  default     = false
}
