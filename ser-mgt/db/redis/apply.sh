
kubectl create ns redis
kubectl apply -f redis-config.yaml
kubectl apply -f redis-statefulset.yaml
kubectl apply -f redis-svc.yaml