#!/bin/bash
export MINIKUBE_IN_STYLE=false

local_mount_dir=$HOME/.minikube/drones/data
cluster_mount_dir=/data
cluster_profile=drones

minikube start \
	--profile $cluster_profile \
	--nodes 2 \
	--cpus 2 \
	--container-runtime containerd \
	--cache-images \
	--mount-string=$local_mount_dir:$cluster_mount_dir \
	--mount=true

kubectl label nodes $cluster_profile has-mount-dir="yes"

#minikube mount $local_mount_dir:$cluster_mount_dir -p $cluster_profile
