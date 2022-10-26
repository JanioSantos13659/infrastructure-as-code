resource "aws_db_instance" "banco" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "jose"
  password             = "jjdssantos1020"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name   = aws_db_subnet_group.rdssubnet.id

  tags = {
    Name = "database-1"
  }
 
 vpc_security_group_ids = ["${aws_security_group.SG_private_RDS.id}"] 

}

resource "aws_db_subnet_group" "rdssubnet" {
  name       = "db_subnet"
  subnet_ids = ["${aws_subnet.SN_Private2.id}","${aws_subnet.SN_Private1.id}"]

}