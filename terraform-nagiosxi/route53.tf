# resource "aws_route53_record" "jenkins" {
#   zone_id = "Z04189633FOGOFC8O290D"
#   name    = "jenkins.ahmetbekan.com"
#   type    = "A"
#   ttl     = "30"
#   records = ["${aws_instance.web.public_ip}"]
# }