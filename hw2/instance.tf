
resource "aws_instance" "web" {
  ami           = "ami-0873b46c45c11058d"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  key_name = "${aws_key_pair.bastion.key_name}"
  user_data     = "${file("userdata.sh")}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh_http_https.id}"]
  availability_zone = "us-west-2a"
  }