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
        - In which I defined:
            - VPC Network
            - Subnets
            - Firewall Rules
            - NAT and Router
    
    - Bastion Server Module:
        - In which I defined:
            - Bastion VM
            - Service account for that bastion VM
    
    - Google Kubernetes Engine (GKE) Module:
        - In which I defined:
            - GKE cluster
            - Service account for that GKE cluster
            - Node Pool for Kubernetes cluster

### 3- Kubernetes Section:
- This section contains the definition files for:
    - Python App
    - Redis
- The definition files are:
    - `app-deployment.yml` that uses the python application's image to be deployed into the GKE cluster.
    - `app-service.yml` a loadbalancer service that exposes our app.
    - `redis-deployment.yml` that uses the redis image to be deployed into the GKE cluster as a cache database.
    - `redis-service.yml` an internal service used to communicate with the redis deployment's pods.