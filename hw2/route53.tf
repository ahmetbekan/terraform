resource "aws_route53_record" "www3" {
  zone_id = "Z04189633FOGOFC8O290D"
  name    = "www3.ahmetbekan.com"
  type    = "A"
  ttl     = "30"
  records = ["${aws_instance.web.public_ip}"]
}