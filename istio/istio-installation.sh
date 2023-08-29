helm repo add istio https://istio-release.storage.googleapis.com/charts
helm repo update
helm install istio-base istio/base --namespace istio-system --create-namespace
helm install istiod istio/istiod -n istio-system --wait