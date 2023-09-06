snap install microk8s
# now enable some essential stuff
microk8s.enable dns storage rbac
 
# install some stuff that might be more optional
microk8s.enable ingress registry
 
# make sure you have ufw disabled or your pods won't have network!
ufw disable
 
# now get the config
mkdir -p ~/.kube
microk8s.config >> ~/.kube/config
