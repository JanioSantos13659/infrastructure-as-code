terraform {  
  required_providers {  
    aws = {       

      source  = "hashicorp/aws"   
      version = "~> 3.27" 
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {    
  profile = "default"  
  region  = var.region_aws 
  access_key = var.Acess_key_aws 
  secret_key = var.Secret_key_aws
}

resource "aws_instance" "app_server3" {  
  count = 1
  ami           =  var.Ami_intancia_Ec2
  instance_type = var.instance_type_aws 
  subnet_id = aws_subnet.SN_Public1.id

  key_name = var.Chave_acesso_maquina_ec2 
  tags = {
    Name = "Maquina ${count.index}" 
  }
  vpc_security_group_ids = ["${aws_security_group.SG_public_EC2.id}"] 
}





