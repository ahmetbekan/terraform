module "db" {
    source = "/home/ec2-user/terraform/terraform-rds/cluster"
    region = "us-east-2"
    subnet_ids = [
    "subnet-090852f756c59a482", 
    "subnet-0ba729664ce6133cf", 
    "subnet-05eb41cc6adfc063e"
    ]
    security_group_name = "db"
    allowed_hosts = [
    "0.0.0.0/0"
    ]
    db_name = "dbname"
    engine = "aurora"
    engine_version = "5.6.10a"
    instance_class = "db.t2.micro"
    username = "foo"
    password = "foobarbaz"
    publicly_accessible = true
}




output "region" {
value = "${module.db.region}"
}
output "subnet_list" {
value = "${module.db.subnet_list}"
}
output "allows_hosts" {
value = "${module.db.allowed_hosts}"
}
output "DB_NAME" {
value = "${module.db.DB_NAME}"
}