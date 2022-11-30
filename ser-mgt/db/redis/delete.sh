
kubectl delete -f redis.yaml
kubectl delete -f redis-config.yaml
kubectl delete -n redis -f redis-statefulset.yaml
kubectl delete -n redis -f redis-svc.yaml
kubectl delete ns redis