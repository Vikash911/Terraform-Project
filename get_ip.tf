resource "null_resource" "get_ip" {
	trigger= {
	mytest = timestamp()

}
	provisioner "local-exec"{
		command = "echo ${aws_instance.my_ec2.public_ip} > /home/ec2-user/myfile.txt"
	}

}
