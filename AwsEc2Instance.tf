
provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "name" {
    ami = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    subnet_id = "subnet-12345678"
    key_name = "terraform-key"

    tags = {
      name="MyEc2Instance"
    }
}


