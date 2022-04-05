# Lets first set alias for kubectl
Set-Alias -Name k -Value kubectl

kubectl get nodes
kubectl get pods
kubectl delete pods hello-faxri
kubectl run hello-faxri --image=faxri/myk8s:latest --port=80
kubectl describe pods hello-faxri
kubectl exec hello-faxri -- date
# kubectl exec hello-faxri -- cat /var/www/html/index.php
kubectl exec -it hello-faxri -- sh # Use it on default powershell instead of integrated powershell
kubectl logs hello-faxri
kubectl port-forward hello-faxri 9090:80

# to run manifest file
kubectl apply -f .\pods\myweb-v1.yaml

