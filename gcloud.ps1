gcloud init
gcloud services enable container.googleapis.com
gcloud container clusters create fakhri-1 --region europe-west1 --no-enable-ip-alias --num-nodes=1
gcloud container clusters delete fakhri-1 --region europe-west1
gcloud container clusters get-credentials fakhri-1 --region europe-west1
kubectl cluster-info
kubectl get componentstatus
kubectl get nodes

# europe-west3-a (Frankfurt - Germany)

gcloud container clusters delete fakhri-1 --quiet