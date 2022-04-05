# To generate chart-auto full example
helm create Chart-Auto

# List all deployed via helm
helm list

# To deploy a helm chart
helm install app .\chart-faxri
# To set a specific values for exisint values.yaml use:
helm install app1 .\chart-faxri --set container.image=faxri/myk8s:version1
helm install app2 .\chart-faxri --set container.image=faxri/myk8s:version2 --set replicaCount=3

# To update existing deployed chart use: (for example downgrade replica from 3 to 2)
helm upgrade app2 .\chart-faxri --set container.image=faxri/myk8s:version2 --set replicaCount=2

# If you want to specify exact prod values (separated)
helm install app3 .\chart-faxri -f .\prod_values.yaml

# To PACK! your ready helm-chart use
helm package .\chart-faxri

# To install helm from packed file use
helm install app4 .\App-HelmChart-0.1.0.tgz

# Search globally helm-chart repos
helm search repo
helm search hub apache # This is known hub repository provides many charms from internet

# we can use bitnami repo for example (adding repo bitnami)
helm repo add bitnami https://charts.bitnami.com/bitnami

# The we need to select exact chart from bitnami repo
helm install web-apache bitnami/apache

# To redirect default configs to existing helm-chart using apache's default values (forexample redirect to github repo)
# FIND PARAMETERS FOR APACHE FROM: https://github.com/bitnami/charts/tree/master/bitnami/apache
# Create yaml file with parameters ()
# cloneHtdocsFromGit:
        # enabled   : true
        # repository: https://github.com/<your_github_coount>/<your_repo_path>  
        # branch    : main
# After all you need to deploy it using:
helm install custom-apache bitnami/apache -f .\webapp_apache.yaml


# To delete helm use
helm delete app
helm uninstall app1