export KUBE_SOURCE_DIR=${KUBE_SOURCE_DIR:-$HOME}

curl -O https://storage.googleapis.com/kubernetes-release/release/v1.1.8/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl
cd $KUBE_SOURCE_DIR
git clone https://github.com/kubernetes/kubernetes.git
