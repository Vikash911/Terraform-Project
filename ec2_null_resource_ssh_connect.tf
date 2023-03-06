resource "null_resource" "connect-ec2" {
  count = 1
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("E:/ARTH2.0/Terraform TRaining/Window-server.pem")

    host = element(aws_instance.my_ec2.*.public_ip, count.index)
  }
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl enable httpd --now"
    ]
  }
  depends_on = [aws_instance.my_ec2, aws_ebs_volume.volume1, aws_volume_attachment.ebs_attach]
}
