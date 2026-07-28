# Kubernetes Minikube Deployment

These manifests make the documented Minikube deployment reproducible. They run
two copies of the portfolio Nginx application, expose it with a NodePort
service, and define health probes and resource limits.

```powershell
minikube start
minikube image build -t docker-webapp:latest ./app/docker-webapp
kubectl apply -f kubernetes/
kubectl rollout status deployment/docker-webapp
kubectl get pods,services
minikube service docker-webapp
```

The local image workflow is intended for Minikube. A remote cluster should use
an image published to a container registry and an immutable version tag.
