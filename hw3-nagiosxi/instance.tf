resource "aws_instance" "web" {
  ami                    = "${data.aws_ami.centos.id}"              #"${data.aws_ami.ubuntu.id}" 
  instance_type          = "t2.large"
  # volume_size            = "50"
  key_name               = "${aws_key_pair.class.key_name}"
  vpc_security_group_ids = ["${aws_security_group.provisioner.id}"]
  #availability_zone = "us-east-1a"
}
