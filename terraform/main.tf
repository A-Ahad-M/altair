provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "angular_vm" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "key-pair"
  security_groups = ["allow_http"]

  tags = {
    Name = "AngularAppVM"
  }
}
