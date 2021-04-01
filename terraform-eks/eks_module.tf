data "aws_eks_cluster" "cluster" {
  name = module.my-cluster.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.my-cluster.cluster_id
}
#
provider "kubernetes" {
  host = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token = data.aws_eks_cluster_auth.cluster.token
  load_config_file = false
  version = "~> 1.9"
}

module "my-cluster" {
  source = "terraform-aws-modules/eks/aws"
   version = "12.0.0"
  cluster_name = "my-cluster"
  cluster_version = "1.18"
  subnets = ["subnet-090852f756c59a482", "subnet-05eb41cc6adfc063e", "subnet-0ba729664ce6133cf"]
  vpc_id = "vpc-04fb7542e94567f34"
  worker_groups = [{
    instance_type = "t2.medium"
    asg_max_size = 2
    asg_min_size = 1
    }
  ]
}
