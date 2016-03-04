export KUBE_SOURCE_DIR=${KUBE_SOURCE_DIR:-$HOME}
cd $KUBE_SOURCE_DIR/kubernetes/cluster
KUBERNETES_PROVIDER=ubuntu ./kube-up.sh
cd ubuntu
KUBERNETES_PROVIDER=ubuntu ./deployAddons.sh
