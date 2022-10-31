# This Project Built With:

- [Google Cloud Services](https://cloud.google.com/) - Cloud services
- [Terraform](https://www.terraform.io/) - Infrastrcuture as code
- [Kubernetes](https://kubernetes.io) - Container Orchestration Service


## This Project has three main sections:

### 1- Application Section:
- `Tornado` is used as a Python web framework
- `Redis` is used as a cache database
- The python application was dockerized and then pushed to a private GCR repository to be used by the GKE cluster.

### 2- Terraform Section:
- This section contains three main modules:
    - Infrastrcuture Module:
        - In which i defined:
            - VPC Network
            - Subnets
            - Firewall Rules
            - NAT and Router
    
    - Bastion Server Module:
        - In which i defined:
            - Bastion VM
            - Service account for that bastion vm
    
    - Google Kubernetes Engine (GKE) Module:
        - In which i defined:
            - GKE cluster
            - Service account for that GKE cluster
            - Node Pool for kubernetes cluster

### 3- Kubernets Section:
- This section contains the definition files for:
    - Python App
    - Redis
- This definition files were used by the GKE cluster to deploy our python application.