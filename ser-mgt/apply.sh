
kubectl create ns ser-mgt

cd db

kubectl apply -f soup-redis.yaml
kubectl apply -f soup-redis-svc.yaml

cd ../backend
kubectl apply -f soup-backend-config.yaml
kubectl apply -f soup-backend-secret.yaml

kubectl apply -f soup-admin-backend-svc.yaml
kubectl apply -f soup-admin-backend.yaml

kubectl apply -f soup-member-backend-svc.yaml
kubectl apply -f soup-member-backend.yaml

kubectl apply -f soup-search-backend-svc.yaml
kubectl apply -f soup-search-backend.yaml

cd ../frontend
kubectl apply -f soup-frontend-svc.yaml
kubectl apply -f soup-frontend.yaml

kubectl get pods -n ser-mgt

