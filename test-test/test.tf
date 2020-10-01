    resource "aws_instance" "web" {
        count = 2
        name = "terraform-${count.index}"
    }