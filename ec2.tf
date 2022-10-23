# Create an AWS Key Pair. Amazon EC2 stores the public key on the instance and I store the private key
# The private key allows me to obtain the admin password to login to the EC2 instance via RDP

resource "tls_private_key" "ppro_private_key" {
    algorithm = "RSA"
    rsa_bits  = 4096
}

resource "local_file" "ppro_private_key_file" {
    filename          = "ppro_key.pem"
    sensitive_content = tls_private_key.ppro_private_key.private_key_pem
    file_permission   = "0400"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair

resource "aws_key_pair" "ppro_key_pair" {
    key_name   = "ppro-key-pair"
    public_key = tls_private_key.ppro_private_key.public_key_openssh
}
