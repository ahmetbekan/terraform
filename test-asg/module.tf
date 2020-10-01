module "app1" {
  source           = "/home/ec2-user/terraform/terraform-asg"
  region           = "us-east-1"
  key_name         = "asg-key-pair"                    #It will be created
  image_owner      = "137112412989"                    #137112412989
  desired_capacity = 1
  max_size         = 1
  min_size         = 1
}

# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "2.48.0"
#   # insert the 14 required variables here
# }

