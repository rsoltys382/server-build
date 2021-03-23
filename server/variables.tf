variable subnet_id {}
variable vpc_security_group_ids {
  type = list
}
variable identity {}
variable key_name {}
variable private_key {}

variable server_os {
    type = string
    description = "Server Operating System"
    default = "windows"
}

variable "num_web" {
  type = number
  default = "2"
}

variable "servers" {
  description = "Map of server types to configuration"
  type        = map(any)
  default = {
    server-iis = {
      ami                    = "ami-056db1277deef2218"
      instance_type          = "t2.micro",
      environment            = "dev"
      subnet_id              = "subnet-088eec4b0d226c972"
      vpc_security_group_ids = ["sg-055ae0bd4eabf5e0b"]
    },
    server-apache = {
      ami                    = "ami-056db1277deef2218"
      instance_type          = "t2.nano",
      environment            = "test"
      subnet_id              = "subnet-088eec4b0d226c972" 
      vpc_security_group_ids = ["sg-055ae0bd4eabf5e0b"]
    }
  }
}