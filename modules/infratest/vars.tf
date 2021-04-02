variable "ram" {
  type        = string
  default     = "2"
  description = "RAM disponible"
}
variable "cpu" {
  type        = string
  default     = "1 vCPU"
  description = "CPU disponible"
}
variable "stockage" {
  type        = string
  default     = "10"
  description = "Stockage disponible"
}
variable "image_os" {
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
