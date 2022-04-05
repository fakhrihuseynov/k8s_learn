kubectl apply -f https://projectcontour.io/quickstart/contour.yaml
kubectl create deploy main --image=faxri/myk8s:latest
kubectl create deploy web1 --image=faxri/myk8s:version1
kubectl create deploy web2 --image=faxri/myk8s:version2
kubectl scale deploy main --replicas 2
kubectl scale deploy web1 --replicas 2
kubectl scale deploy web2 --replicas 2

kubectl expose deploy main --port=80
kubectl expose deploy web1 --port=80
kubectl expose deploy web2 --port=80



kubectl get pods --all-namespaces --output=jsonpath='{..image}'

# ingress namespace is projectcontour