# Create VPC resource
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "ppro_vpc" {
    cidr_block           = "10.10.10.0/24"
    instance_tenancy     = "default"
    enable_dns_hostnames = true
    tags                 = {
        Name = "PPRO-VPC"
    }
}

# Create public subnet within the VPC
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet

resource "aws_subnet" "ppro_public_subnet" {
    vpc_id                  = aws_vpc.ppro_vpc.id
    cidr_block              = "10.10.10.0/26"
    availability_zone       = "eu-west-3a"
    map_public_ip_on_launch = true
    tags                    = {
        Name = "PPRO-Public-Subnet"
    }
}

# Create internet gateway and attach it to the VPC
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway

resource "aws_internet_gateway" "ppro_igw" {
    vpc_id = aws_vpc.ppro_vpc.id
    tags   = {
        Name = "PPRO-Internet-Gateway"
    }
}

# Create a custom route table (CRT) so that the public subnet can reach the internet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

resource "aws_route_table" "ppro_crt_internet" {
    vpc_id = aws_vpc.ppro_vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ppro_igw.id
    }

    tags = {
        Name = "PPRO-CRT-Internet"
    }
}

# Associate the custom route table (CRT) to the public subnet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

resource "aws_route_table_association" "ppro_crt_to_ppro_public_subnet" {
    subnet_id      = aws_subnet.ppro_public_subnet.id
    route_table_id = aws_route_table.ppro_crt_internet.id
}

# Create a security group for the Web Server (EC2) to allow https (443) traffic. In this example, the source will be any,
# however, this is NOT recommended for production
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group

resource "aws_security_group" "allow_tls_rdp_in" {
    name        = "allow-tls-in"
    description = "Allow TLS inbound traffic on port 443"
    vpc_id      = aws_vpc.ppro_vpc.id

    ingress {
        description = "Allow TLS inbound"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    ingress {
        description = "Allow HTTP inbound"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "Allow RDP inbound"
        from_port   = 3389
        to_port     = 3389
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "SG-Allow-TLS-RDP"
    }
}
