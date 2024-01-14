variable "access_key" {
  description = "Access key to AWS console"
  type = string
}

variable "secret_key" { #Todo: uncomment the default value and add your secert key.
  description = "Secret key to AWS console"
  type = string
}

variable "ami_key_pair_name" { #Todo: uncomment the default value and add your pem key pair name. Hint: don't write '.pem' exction just the key name
  default = "Daniel at Cosmic DNA"
}
variable "number_of_worker" {
  description = "number of worker instances to be join on cluster."
  default     = 1
}

variable "region" {
  description = "The region zone on AWS"
  type = string
}

variable "ami_id" {
  description = "The AMI to use"
  default     = "ami-0e5f882be1900e43b" #Ubuntu
}

variable "instance_type" {
  default = "t2.micro" #the best type to start k8s with it,
}
