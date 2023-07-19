resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/18"
  availability_zone = "us-east-1a"

  tags = {
    "Name"                   = "private-us-east-1a"
    "kubernetes.io/role/elb" = "1"
  }

}
resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.64.0/18"
  availability_zone = "us-east-1b"

  tags = {
    "Name"                   = "private-us-east-1b"
    "kubernetes.io/role/elb" = "1"
  }

}

resource "aws_subnet" "public-us-east-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.128.0/18"
  availability_zone = "us-east-1a"

  tags = {
    "Name"                   = "public-us-east-1a"
    "kubernetes.io/role/elb" = "1"
  }

}

resource "aws_subnet" "public-us-east-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.192.0/18"
  availability_zone = "us-east-1b"

  tags = {
    "Name"                   = "public-us-east-1b"
    "kubernetes.io/role/elb" = "1"
  }

}