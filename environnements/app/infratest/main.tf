module "infratest"{
  source = "../../../modules/infratest/"
  instance_name = "dev-app"
  instance_machine_type = "n1-standard-1"
  instance_image = "ubuntu-1804-bionic-v20190429"
  ip_list = ""
  port_list =""
}
