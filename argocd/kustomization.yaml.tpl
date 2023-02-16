apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
#utilice env to namespace
namespace: ${argocd_namespace}

resources:
- https://raw.githubusercontent.com/argoproj/argo-cd/${argocd_version}/manifests/ha/install.yaml

# patches:
#   - path: /tmp/argocd/argocd-ingress-patch.yaml
#     target:
#       group: networking.k8s.io
#       version: v1
#       kind: Ingress
#       name: argocd-server

