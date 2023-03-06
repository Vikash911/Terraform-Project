resource "null_resource" "get_ip"{
	triggers = {
			mytest = timestamp()
		}
	

	provisioner "local-exec" {
		command = "sudo sh -c ' echo ${aws_instance.my_ec2[0].public_ip} > /home/ec2-user/myfile.txt'"
		}

depends_on = [aws_vpc.my-vpc, aws_internet_gateway.MyGateway9, aws_subnet.subnets, aws_route_table.RTable, aws_route_table_association.route_asso, aws_security_group.allow_ssh1,aws_instance.my_ec2]
}
