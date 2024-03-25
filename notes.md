# Add tkg-mgmt cluster context to tanzu cli
tanzu context create tkg-mgmt --kubeconfig ~/.kube-tkg/config --kubecontext tkg-mgmt-admin@tkg-mgmt


tanzu cluster kubeconfig get tkg-dev --admin