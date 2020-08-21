resource "aws_instance" "vpc_task" {
  //count         = 2
  ami             = "ami-0b9b470f60ecf1e2e"
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.bastion.key_name}"   // interpolation
  vpc_security_group_ids = ["${aws_security_group.vpc_task.id}"] # interpolation 
  subnet_id       = "${aws_subnet.public1.id}"
  associate_public_ip_address = true
  source_dest_check = false
  user_data       = "${file("wordpress.sh")}"            // interpolation
}

resource "aws_instance" "vpc_task_db" {
  //count         = 2
  ami             = "ami-0b9b470f60ecf1e2e"
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.bastion.key_name}"   // interpolation
  vpc_security_group_ids = ["${aws_security_group.vpc_task_db.id}"] # interpolation 
  subnet_id       = "${aws_subnet.public2.id}"
  associate_public_ip_address = true
  source_dest_check = false
  #user_data       = "${file("wordpress.sh")}"            // interpolation
}