//variables.tf
variable "ami_id" {}
variable "ami_key_pair_name" {}
variable "instance_tags" {
  type = list
  default = ["DEV", "JENKINS-MASTER","JENKINS-SLAVE","ARTIFACTORY","PROD"]
}
variable "instance_count" {}