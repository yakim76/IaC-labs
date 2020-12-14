// For security reasons there is no real backend config in public repo.
//You can configure it by uncommenting the next terraform statement
//terraform {
//  backend "s3" {
//    bucket = "Specify your bucket here"
//    key    = "Specify your key here"
//    region = "Specify your region here"
//    profile = "your aws profile"
//    dynamodb_table = "terraform-locktable"
//  }
//}

provider "aws" {
  profile = "tf"
  region  = "eu-west-1"
}

resource "aws_instance" "example" {
  ami                    = "ami-0ce1e3f77cd41957e"
  instance_type          = "t2.micro"
}
