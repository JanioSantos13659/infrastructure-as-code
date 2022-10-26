resource "aws_network_acl" "ACL_PROjeto" {
  vpc_id = aws_vpc.vpc-Projeto.id

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
    ingress {
    protocol   = "tcp"
    rule_no    = 103
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 3306
    to_port    = 3306
  }
  ingress {
    protocol   = "tcp"
    rule_no    = 101
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
     ingress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block = "10.0.1.0/24"
    from_port  = 3306
    to_port    = 3306
  }
  egress { 
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "10.0.32.0/19"
    from_port  = 443
    to_port    = 443
  }
  egress { 
    protocol   = "tcp"
    rule_no    = 202
    action     = "allow"
    cidr_block = "10.0.1.0/24"
    from_port  = 3306
    to_port    = 3306
  }
   egress { 
    protocol   = "tcp"
    rule_no    = 101
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  tags = {
    Name = "ACL-VPC"
  }
}
