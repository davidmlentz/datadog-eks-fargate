#!/bin/bash

kubectl apply -f "https://raw.githubusercontent.com/DataDog/datadog-agent/master/Dockerfiles/manifests/rbac/clusterrole.yaml"
kubectl apply -f "https://raw.githubusercontent.com/DataDog/datadog-agent/master/Dockerfiles/manifests/rbac/serviceaccount.yaml"
kubectl apply -f "https://raw.githubusercontent.com/DataDog/datadog-agent/master/Dockerfiles/manifests/rbac/clusterrolebinding.yaml"
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.3.7/components.yaml
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/kube-state-metrics/master/examples/standard/cluster-role-binding.yaml"
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/kube-state-metrics/master/examples/standard/cluster-role.yaml"
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/kube-state-metrics/master/examples/standard/deployment.yaml"
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/kube-state-metrics/master/examples/standard/service-account.yaml"
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/kube-state-metrics/master/examples/standard/service.yaml"
#kubectl apply -f rbac.yaml
kubectl apply -f agent.yaml
