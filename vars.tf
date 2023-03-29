
variable "amis" {
  type = map
  default = {
    us-east-1 = "ami-007855ac798b5175e"
    us-east-2 = "ami-007855ac798b5175e"
  }
}

# referenciando o ip na permissão
variable "cdirs_acesso_remoto" {
    type = list
    default = ["181.221.221.9/32", "181.221.221.1/32"]
  
}

variable "key_name" {
  default = "key-ansible"
  
}
