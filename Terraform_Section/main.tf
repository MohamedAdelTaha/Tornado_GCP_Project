module "infra_module" {
  source = "./modules/Infrastructure"
}

module "bastion_module" {
  source = "./modules/Bastion_VM"

}

module "gke_cluster_module" {
  source = "./modules/GKE_Cluster"

}

