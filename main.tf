terraform{
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~3.0"
    }
  }
}
provider "aws"
{
  region ="ap-south-1"
}

resource "aws_instance" "Terraform machine" 
{
  ami = "ami-07eaf27c7c4a884cf"
  availability zone = "ap-south-1a"
  instance_type = "t2.micro"
  key_name="jenkins"
  vpc_security_group_id= "sg-00440d520681d8116"
  subnet_id = "subnet-0d19a0d1000c7607d"
}
