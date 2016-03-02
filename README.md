# Kubernetes on Ubuntu

A series of bash scripts to get prepare and run Kubernetes on Ubuntu.

## Usage Instructions

### ALL nodes

Run this on each node to install docker on that node.

1. Ensure git is installed:
```
sudo apt-get install git
```

2. Clone this repository
```
git clone https://github.com/matthewpbyrne/kubernetes-ubuntu
```

3.  Make the node preparation script executable and run it:
```
cd kubernetes-ubuntu
chmod +x prepare-ubuntu-1404-node.sh
./prepare-ubuntu-1404-node.sh
```

### Master node ONLY

1. This step prepares the master, by downloading kubernetes and setting up kubectl - the kubernetes control tool. First make the scripts executable, and then run:
```
chmod +x prepare-master.sh
./prepare-master.sh
```

2. Then set up environment variables as appropriate:

```
export nodes="ubuntu@52.49.241.209"
export role="ai"
export NUM_MINIONS=1
export SERVICE_CLUSTER_IP_RANGE=192.168.3.0/24
export FLANNEL_NET=172.16.0.0/16
```
To override different versions:
```
export KUBE_VERSION=1.0.5
export FLANNEL_VERSION=0.5.0
export ETCD_VERSION=2.2.0
```

3. Run kubernetes. Again, make the script executable and then run:
```
chmod +x run-master.sh
./run-master.sh
```

## Problems
TODO
