# First lets create a new deployment on image faxri/myk8s with 3 replicas
kubectl create deployment fakhri32 --image=nginx:latest
kubectl scale deploy fakhri32 --replicas 3

# Lets create (EXPOSE) first service which will use cluster_ip
kubectl expose deploy fakhri32 --type=ClusterIP --port 80
# To check the services run:
kubectl get services # or
kubectl get svc

# Redirect to specific Node port adding nodeport service
kubectl expose deploy fakhri32 --type=NodePort --port 80

# to get node ip's 
kubectl describe nodes | Select-String ExternalIP

# Create load balancer for the cluster
kubectl expose deploy fakhri32 --type=LoadBalancer --port 80
