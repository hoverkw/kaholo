# kaholo
### How to use
Execute commands in following order

1. `docker pull 0hover/nodeapp:v3` - Node.js application changed in order to work accordingly to task requirements
2. `docker pull 0hover/app-nginx:v3` - nginx working as LoadBalancer setup accordingly to task requirements
3. `docker pull mongo` - pulls MongoDB image
4. `git clone https://github.com/hoverkw/kaholo.git` - pulls this repository
5. Execute `helm install <folder with chart> --generate-name` against folder where repo from step 4 has been cloned

---
Or you can simply execute just steps 4 and 5. Deployment spec is set to use `imagePullPolicy: IfNotPresent` therefore even lack of Docker images in local repository should not prevent successfull deployment.

### How to scale
1. Node app should be easy to scale just by increasing number of replicas (or creating more than needed initially) 
2. To scale MongoDB I would most probably investigate possiblities offered by Bitnami chart - https://github.com/bitnami/charts/tree/master/bitnami/mongodb. It offers option to install it with ReplicaSet architecture - https://docs.bitnami.com/kubernetes/infrastructure/mongodb/get-started/understand-architecture/
