# Nginx ingress (specialized for kind)
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

# Dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.1.0/aio/deploy/recommended.yaml

# Get admin token
kubectl -n kubernetes-dashboard get secret $(kubectl -n 
kubernetes-dashboard get sa/admin-user -o 
jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | 
base64decode}}"


