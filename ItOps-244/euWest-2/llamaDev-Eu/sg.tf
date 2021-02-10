resource "aws_security_group" "MasterInternal_EMEA" {
  provider= aws.euWest
  name        = "Master Internal"
  description = "Traffic to all except DMZ"
  vpc_id      = aws_vpc.LLamaDevVPC_EMEA.id

  ingress {
    description = "ARB Supernet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/14"]
  }

  ingress {
    description = "APAC Supernet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.64.0.0/13"]
  }
  
  ingress {
    description = "St. Louis Supernet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.138.0.0/16"]
  }
  
  ingress {
    description = "BHX Supernet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.140.0.0/16"]
  }
  
  ingress {
    description = "CDG Supernet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.142.0.0/16"]
  }
  
  ingress {
    description = "ORD Supernet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.160.0.0/16"]
  }
  
  ingress {
    description = "NOC Supernet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.224.0.0/16"]
  }
  
  ingress {
    description = "244 - ITOps AWS Supernet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.248.0.0/16"]
  }  
  
  ingress {
    description = "Azure Supernet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.252.0.0/14"]
  }
  
  ingress {
    description = "US Master AWS Secondary Private"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.64.0/26"]
  }
  
  ingress {
    description = "US Master AWS Secondary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.64.128/26"]
  }
  
  ingress {
    description = "US Network AWS Primary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.65.0/26"]
  }
  
  ingress {
    description = "US Network AWS Secondary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.65.128/26"]
  }
  
  ingress {
    description = "US Hosting AWS Primary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.68.0/24"]
  }
  
  ingress {
    description = "US Hosting AWS Secondary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.70.0/24"]
  }
  
  ingress {
    description = "US ITOps AWS Primary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.84.0/24"]
  }
  
  ingress {
    description = "US ITOps AWS Secondary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.86.0/24"]
  }
  
  ingress {
    description = "EMEA Master AWS Primary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.96.0/26"]
  }
  
  ingress {
    description = "EMEA Master AWS Secondary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.96.128/26"]
  }
  
  ingress {
    description = "EMEA Network AWS Primary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.97.0/26"]
  }
  
  ingress {
    description = "EMEA Network AWS Secondary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.97.128/26"]
  }
  
  ingress {
    description = "EMEA Hosting AWS Primary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.100.0/24"]
  }  
  
  ingress {
    description = "EMEA Hosting AWS Secondary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.102.0/24"]
  }  
  
  ingress {
    description = "EMEA ITOps AWS Primary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.108.0/24"]
  }  
  
  ingress {
    description = "EMEA ITOps AWS Secondary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.110.0/24"]
  }  
  
  ingress {
    description = "EMEA Hosting AWS Primary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.116.0/24"]
  }  
  
  ingress {
    description = "EMEA Hosting AWS Secondary Private "
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.238.118.0/24"]
  }
    ingress {
    description = "LLamaDev-244"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.225.0.0/20"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Master Internal"
  }
}

resource "aws_security_group" "VeeamProxy_EMEA" {
  provider= aws.euWest
  name        = "Veeam Proxy SG"
  description = "Allows Ports required for the Veeam Proxy to work"
  vpc_id      = aws_vpc.LLamaDevVPC_EMEA.id

  ingress {
    description = "ARB publics SSH inbound"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["50.224.85.0/24"]
  }

    ingress {
    description = "ARB publics HTTPS inbound"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["50.224.85.0/24"]
  }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Veeam Proxy SG"
  }
}
