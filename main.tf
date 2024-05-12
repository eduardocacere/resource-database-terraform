module "prod" {
  source = "./infra"

  clusterName = "fiap"

  userName = "fiap"
  userPassword = "fastfood"

  privateKey = ""
  projectId  = ""
  publicKey  = ""
}