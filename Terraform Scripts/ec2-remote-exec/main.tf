resource "aws_instance" "myec2" {

    ami = "ami"
    instance_type = "t2.micro"
    key_name = "my-keypair"

    connection {

      type ="ssh"
      user = "ec2-user"
      private_key = file("./my-keypair.pem")
      host = self.public_ip
    }
    
  provisioner "remote-exec" {

    inline = [
      "sudo yum install curl"
      
    ]
    
  }
  
}
