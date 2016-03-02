export KUBE_SOURCE_DIR=${KUBE_SOURCE_DIR:-"/home/ubuntu"}
cd $KUBE_SOURCE_DIR/kubernetes/cluster
KUBERNETES_PROVIDER=ubuntu ./kube-up.sh
cd ubuntu
./deployAddons.sh