output "vpc-network" {
  value = google_compute_network.vpc_network
}

output "bastion-subnet" {
  value = google_compute_subnetwork.management-subnet
}

output "gke-subnet" {
  value = google_compute_subnetwork.restricted-subnet
}

