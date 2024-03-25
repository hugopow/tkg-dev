#!/bin/bash
set -euo pipefail
cluster_name=${1:-}
if [ -z ${cluster_name} ]; then
  echo "Must pass in cluster name with script as a parameter"
  exit 1
fi
manifest_file=${cluster_name}-values.yaml
if [ ! -f ${manifest_file} ]; then
  echo "Manifest file ${manifest_file} does not exist"
  exit 1
fi
kubectl apply -f ns.yml
#helm install  ako/ako  --generate-name --version 1.11.3 -f ${manifest_file}  --set ControllerSettings.controllerHost=tkg-avi.vmwire.com --set avicredentials.username=admin --set avicredentials.password='Vmware1!' --namespace=avi-system

helm install --generate-name oci://projects.registry.vmware.com/ako/helm-charts/ako --version 1.11.3 -f ${manifest_file}  --set ControllerSettings.controllerHost=tkg-avi.vmwire.com --set avicredentials.username=admin --set avicredentials.password='Vmware1!' --set AKOSettings.primaryInstance=true --namespace=avi-system