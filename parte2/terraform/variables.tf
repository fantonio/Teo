variable "region" {
    description = "AWS Region"
    default = "sa_east_1"
}

variable "key_path" {
    description = "Public key path"
    default = "/home/fabio/.ssh/id_rsa.pub"
}

variable "ami" {
    description = "ami"
    default = "ami-0cf31b6ee5b64a726"  // Ubuntu 19.04 amd64
}

variable "instance_type" {
    description = "EC2 instance_type"
    description = "t2.micro"
}