# Create the EC2 instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "ppro_web_server" {
    ami                         = "ami-0493936afbe820b28"
    instance_type               = "t2.micro"
    subnet_id                   = aws_subnet.ppro_public_subnet_1.id
    vpc_security_group_ids      = aws_security_group.allow_tls_rdp_in.id
    associate_public_ip_address = true
    #key_name                    = aws_key_pair.ppro_key_pair.id
    user_data                   = data.template_file.hello-world.rendered
    #user_data                  = "${file("install_apache.sh")}"
}

# Simple bash script that writes "Hello, World" into index.html and runs a tool called busybox (installed by default on Ubuntu)
# to spin up a web server on port 8080

data "template_file" "hello-world" {
    template = <<-EOF
    #!/bin/bash
    echo "Hello, World" > index.html
    nohup busybox httpd -f -p 80 &
    EOF
}
