provider "aws" {
	access_key = "???"
  	secret_key = "???"
	region = var.region
}

resource "aws_instance" "Udacity_T2" {
	ami = var.ami
	count = "4"
	instance_type = "t2.micro"
	tags = {
		Name = "Udacity T2"
	}
	subnet_id = var.subnet_id
}

resource "aws_instance" "Udacity_M4" {
	ami = var.ami
	count = "2"
	instance_type = "m4.large"
	tags = {
		Name = "Udacity M4"
	}
	subnet_id = var.subnet_id
}