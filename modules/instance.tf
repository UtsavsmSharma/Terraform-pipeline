provider "aws" {

    region = "us-east-1"

  
}

resource "aws_instance" "code_pip_instance" {
  ami           = "ami-0d758c1134823146a"
  instance_type = "t2.micro"
  
  key_name = "key_pair_name"
  tags = {
    Name = "pipeline"
  }
}