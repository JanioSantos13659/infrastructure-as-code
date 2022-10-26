resource "aws_security_group" "SG_public_EC2" { 
  vpc_id = aws_vpc.vpc-Projeto.id
  description = "SG_public_Ec2"
 
  ingress {
   
    from_port        = 22 
    to_port          = 22 
    protocol         = "tcp"  
    cidr_blocks      = ["0.0.0.0/0"]   
  }   

   ingress {
   
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"  
    cidr_blocks      = ["0.0.0.0/0"] 
     
  } 
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "all"
    cidr_blocks      = ["0.0.0.0/0"]
  }  
  tags = {
    Name = "Security_group_EC2"
  }
}

resource "aws_security_group" "SG_private_RDS" { 
  vpc_id = aws_vpc.vpc-Projeto.id
  description = "SG_private_RDS"
 
  ingress {
   
    from_port        = 3306 
    to_port          = 3306 
    protocol         = "tcp"  
    cidr_blocks      = ["10.0.1.0/24"] 

  }     
  ingress {
   
    from_port        = 3306 
    to_port          = 3306 
    protocol         = "tcp"  
    cidr_blocks      = ["0.0.0.0/0"] 

  }   
  tags = {
    Name = "Security_group_RDS"
  }
}

