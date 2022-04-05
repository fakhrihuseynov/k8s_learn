# Lets first set alias for kubectl
Set-Alias -Name k -Value kubectl

kubectl version
minikube version
kubectl get componentstatus
kubectl cluster-info # To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
kubectl get nodes # Get nodes
minikube stop
minikube delete
minikube start --cpus=2 --memory=3gb --disk-size=20gb --nodes=3
kubectl label nodes minikube-m02 mylabel=fakhri
kubectl get nodes --show-labels

# minikube start -p <name> (for exp: MYSUPERCLUSTER) to create a new cluster, or 'minikube delete' to delete dedicated cluster
minikube ssh
eksctl version
eksctl.exe create cluster --name fakhri-cluster --nodes 2 --node-type t3.medium --region eu-central-1
eksctl.exe delete cluster --name fakhri-cluster
eksctl.exe create cluster -f .\mycluster.yaml
eksctl.exe delete cluster -f .\mycluster.yaml


