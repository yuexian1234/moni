kubectl create ns monitoring
 kubectl -n monitoring create configmap prometheus-core --from-file=prometheus.yaml=./prometheus-config.yaml
 ## 创建rule config
  kubectl port-forward -n monitoring prometheus-core-0  --address 0.0.0.0 --address :: 9090:9090
