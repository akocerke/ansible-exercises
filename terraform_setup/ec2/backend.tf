terraform {
  backend "s3" {
    bucket = "s3-dev-line"
    key    = "ansible-exercise/ec2.tfstate"
    region = "eu-central-1"
  }
}
