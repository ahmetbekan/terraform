resource "null_resource"  "commands" {
    depends_on = ["aws_instance.web"]
    triggers = {
        always_run = "${timestamp()}"
    }
    # Push files  to remote server
    # provisioner "file" {
    #     connection {
    #     host = "${aws_instance.web.public_ip}"
    #     type = "ssh"
    #     user = "centos"
    #     private_key = "${file("~/.ssh/id_rsa")}"
    #     }
    #     source      = "r1soft.repo"
    #     destination = "/tmp/r1soft.repo"
    # }
    # Execute linux commands on remote machine
    provisioner "remote-exec" {
        connection {
        host = "${aws_instance.web.public_ip}"
        type = "ssh"
        user = "centos"
        private_key = "${file("~/.ssh/id_rsa")}"
    }
    inline = [
        "sudo yum install -y epel-release -y",
        # "sudo yum install wget -y",
        "sudo yum install java-1.8.0-openjdk -y",
        "curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
        "sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key",
        "sudo yum install jenkins -y",
        "sudo systemctl start jenkins",
        "sudo systemctl enable jenkins",
        # "sudo rpm -iv jenkins-2.150.2-1.1.noarch.rpm "
        #"sudo rmp  https://jenkins-ci.org/redhat/jenkins-ci.org.key -y",
        ]
    }
}