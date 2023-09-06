#The following shell snippet will install all tools we always use:

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
sudo install kubectl /usr/local/bin
 
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
 
curl -Lo skaffold https://github.com/GoogleContainerTools/skaffold/releases/download/v1.26.1/skaffold-linux-amd64 && \
sudo install skaffold /usr/local/bin/
 
curl -Lo k9s.tgz https://github.com/derailed/k9s/releases/download/v0.24.10/k9s_v0.24.10_Linux_x86_64.tar.gz && \
tar -xf k9s.tgz  && sudo install k9s /usr/local/bin/
 
curl -Lo kubectx https://github.com/ahmetb/kubectx/releases/download/v0.9.3/kubectx && \
sudo install kubectx /usr/local/bin/

#skaffold dev makes extensive use of inotify in Linux. So it makes sense to increase the limit, and add the following lines to /etc/sysctl.conf:
fs.inotify.max_user_watches=1048576
fs.inotify.max_user_instances=1000000

#Then reload sysctl:
sudo sysctl --system
