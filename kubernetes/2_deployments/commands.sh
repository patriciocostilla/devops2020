# Crate namespace contino
kubectl create namespace contino
# Create NGINX Deployment
kubectl run nginx-deployment -n contino --image=nginx --port 80
# Get deployment info
kubectl get deployment nginx-deployment -n contino -o yaml
# Delete NGINX Deployment (which actually appears as POD)
kubectl delete pod nginx-deployment
# Create actual deployment
kubectl apply -f dep-mainfest.yaml
# Scale the deployment
kubectl scale deployment nginx-deployment --replicas=10 -n contino
# Or you can update the deployment YAML and replace
kubectl replace -f dep-manifest.yaml