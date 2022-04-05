# To make a deployment
kubectl create deployment fakhri --image faxri/myk8s:latest
kubectl describe deployment fakhri

# To update current deployment image trough container for example (update to nginx) in our case "myk8s" is a name of container
kubectl set image deployment/fakhri myk8s=nginx:latest
kubectl set image deployment/fakhri myk8s=tomcat:10.0.16
kubectl set image deployment/fakhri myk8s=faxri/myk8s:latest

# Or update with existing version number
kubectl set image deployment/fakhri myk8s=faxri/myk8s:version1

# How to rollout existing deployed image
kubectl rollout undo deployment/fakhri

# Or we can rollout to exact version of deployment but before run kubectl rollout history deployment/fakhri and specify the number of worked deployment version
kubectl rollout undo deployment/fakhri --to-revision=2

# Also you can run all time updated (latest) version of the deployment as
kubectl rollout restart deployment/fakhri

# To scale our pods
kubectl scale deploy fakhri --replicas 4

# To check replica-sets
kubectl get rs

# To autoscale deployment on nodes
kubectl autoscale deployment fakhri --min=4 --max=6 --cpu-percent=80
kubectl get hpa
kubectl delete hpa NAME-OF-HPA.

# to get history or status all kubectl deployment
kubectl rollout history deployment/fakhri
kubectl rollout status deployment/fakhri

# For run deployment manifest file use
kubectl apply -f .\deployments\webdep.yaml

