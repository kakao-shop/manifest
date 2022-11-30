
kubectl delete ns redis
kubectl delete -f redis-config.yaml
kubectl delete -f redis-statefulset.yaml
kubectl delete -f redis-svc.yaml
kubectl delete pvc --all
