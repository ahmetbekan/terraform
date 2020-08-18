output "IP" {
  value       = "${aws_instance.web.public_ip}"
}

output "ID" {
  value       = "${aws_instance.web.id}"
}

output "DNS" {
  value       = "${aws_instance.web.public_dns}"
}

output "KEY" {
  value       = "${aws_instance.web.key_name}"
}


output "ARN" {
  value       = "${aws_instance.web.arn}"
}

output "message" {
  value       = "login to wordpress and setup it"
}