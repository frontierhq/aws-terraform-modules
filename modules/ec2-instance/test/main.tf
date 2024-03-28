provider "aws" {
  region = "eu-west-2"
}

module "ec2_instance" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"
  zone        = "bat"

  ami           = "foobar"
  subnet_id     = "barfoo"
  instance_type = "foo.small"

  tags = {
    Foo = "Bar"
  }
}
