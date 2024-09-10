## ECS Cluster
data "aws_ssm_parameter" "ecs_cluster_name" {
  name = "/linuxtips-tf-final/ecs-cluster/cluster_1/name"
}

data "aws_ssm_parameter" "ecs_cluster_id" {
  name = "/linuxtips-tf-final/ecs-cluster/cluster_1/id"
}

data "aws_ssm_parameter" "ecs_log_group" {
  name = "/linuxtips-tf-final/ecs-log-group"
}

## VPC

data "aws_ssm_parameter" "vpc_id" {
  name = "/linuxtips-tf-final/vpc/vpc_id"
}

data "aws_ssm_parameter" "private_subnets_1a" {
  name = "/linuxtips-tf-final/vpc/subnet-private-us-east-1a"
}

data "aws_ssm_parameter" "private_subnets_1b" {
  name = "/linuxtips-tf-final/vpc/subnet-private-us-east-1b"
}

data "aws_ssm_parameter" "private_subnets_1c" {
  name = "/linuxtips-tf-final/vpc/subnet-private-us-east-1c"
}

## Service Discovery

data "aws_ssm_parameter" "namespace" {
  name = "/linuxtips-tf-final/namespace"
}