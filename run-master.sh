export KUBE_SOURCE_DIR=${KUBE_SOURCE_DIR:-"~"}
cd $KUBE_SOURCE_DIR/kubernetes
KUBERNETES_PROVIDER=ubuntu ./cluster/kube-up.sh
./cluster/ubuntu/deployAddons.sh

