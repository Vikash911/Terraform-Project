resource "null_resource" "get_ip" {
	triggers= {
	mytest = timestamp()

}
	provisioner "local-exec"{
		command = "echo ${aws_instance.my_ec2.public_ip} > /home/ec2-user/myfile.txt"
	}

	depends_on =[aws_volume_attachment.ebs_attach"]

}
