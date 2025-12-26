#!/usr/bin/env bash
set -euo pipefail

CLUSTER_NAME="${CLUSTER_NAME:-portfolio-eks}"
AWS_REGION="${AWS_REGION:-ap-southeast-1}"

echo "Updating kubeconfig for cluster: $CLUSTER_NAME (region: $AWS_REGION)"
aws eks update-kubeconfig --name "$CLUSTER_NAME" --region "$AWS_REGION"

echo "Verifying cluster connectivity..."
kubectl cluster-info
kubectl get nodes -o wide
