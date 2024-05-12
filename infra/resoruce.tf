resource "mongodbatlas_cluster" "cluster" {
  project_id           = var.projectId
  name                 = var.clusterName

  provider_name = "TENANT"
  backing_provider_name = "AWS"
  provider_region_name = "US_EAST_1"
  provider_instance_size_name = "M0"

}

resource "mongodbatlas_database_user" "userDataBase" {
  username           = var.userPassword
  password           =  var.userPassword
  project_id         = var.projectId
  auth_database_name = "admin"

  roles {
    role_name     = "readWriteAnyDatabase"
    database_name = "admin"
  }
}

resource "mongodbatlas_project_ip_access_list" "enalbleAccessRemote" {
  project_id = var.projectId
  cidr_block = "0.0.0.0/0"
  comment    = "ip address for tf acc testing"
}
