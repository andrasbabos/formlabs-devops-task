terraform {
  backend "s3" {
    region = "eu-north-1"
    bucket = "andrasb-terraform"
    key    = "statefile/formlabs-devops-task-infra"
  }
}
