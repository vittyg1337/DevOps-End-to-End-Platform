# Prometheus and Grafana Monitoring

The monitoring lab uses the community `kube-prometheus-stack` Helm chart to
install Prometheus, Grafana, and Kubernetes monitoring components into a
dedicated namespace.

```powershell
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm upgrade --install monitoring prometheus-community/kube-prometheus-stack `
  --namespace monitoring `
  --create-namespace `
  --values monitoring/values.yaml

kubectl get pods -n monitoring
kubectl port-forward -n monitoring service/monitoring-grafana 3000:80
```

Open `http://localhost:3000`. Retrieve the generated Grafana administrator
password from the Kubernetes secret at runtime; never commit it.
