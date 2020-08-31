data "terraform_remote_state" "main" {
	backend = "s3"
	config = {
	     bucket = "test-bucket2-ahmet"
        key = "path/to/my/key"
        region = "us-east-1"
	}
}
output "full_list" {
	value = "${data.terraform_remote_state.main.outputs.*}"
}