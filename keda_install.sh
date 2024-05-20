# #!/bin/bash

# set -e
# exec &>/dev/null


echo "enter the namespace on which you need to install keda"
read ns


# # installation of keda creds into namespaces.
helm repo add kedacore https://kedacore.github.io/charts
helm repo update
helm install keda kedacore/keda --version=2.14 --namespace=$ns
kubectl get pods -n $ns
kubectl get crd | grep keda
helm list -n $ns