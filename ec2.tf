# Create the EC2 instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "ppro_web_server" {
    ami                         = "ami-0a20b6d46b59a5cd5"
    instance_type               = "t2.micro"
    subnet_id                   = aws_subnet.ppro_public_subnet_1.id
    vpc_security_group_ids      = aws_security_group.allow_tls_rdp_in.id
    associate_public_ip_address = true
    key_name                    = aws_key_pair.ppro_key_pair.id
    user_data                   = data.template_file.install-iis.rendered
    #user_data                  = "${file("install_apache.sh")}"
}

data "template_file" "install-iis" {
    template = <<EOF
    <powershell>
    Install-WindowsFeature -Name Web-Server -IncludeManagementTools;
    Set-Service -Name W3SVC -StartupType Automatic;
    </powershell>
    EOF
}
