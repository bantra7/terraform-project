variable "instance_name" {
  type = string
  description = "Nom de l'instance"
}
variable
variable "instance_image" {
  type        = string
  default     = "ubuntu 18.04"
  description = "OS utilisé"
}
variable "ip_list" {
  type = list(string)
  description = "Liste des IPs utilisées"
}
variable "port_list" {
  type = list(string)
  description = "Liste des ports utilisés"
}
