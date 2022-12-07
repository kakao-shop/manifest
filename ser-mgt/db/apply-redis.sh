kubectl create ns ser-mgt
kubectl apply -f soup-redis-config.yaml
kubectl apply -f soup-redis-svc.yaml
kubectl apply -f soup-redis.yaml