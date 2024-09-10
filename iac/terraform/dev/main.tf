locals {
  region = "us-east-1"
  tags = {
    Project     = "inuxtips-descomplicando-terraform-ecs-app"
    Environment = "dev"
  }
  app = {
    name = "node_test"
  }
}
module "ecr" {
  source         = "git@github.com:jhtoigo/terraform-aws-ecr.git"
  ecr_repository = local.app.name
}