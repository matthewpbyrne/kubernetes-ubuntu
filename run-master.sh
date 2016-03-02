export KUBE_SOURCE_DIR=${KUBE_SOURCE_DIR:-"~"}

KUBERNETES_PROVIDER=ubuntu ./cluster/kube-up.sh
cd $KUBE_SOURCE_DIR
./cluster/ubuntu/deployAddons.sh

