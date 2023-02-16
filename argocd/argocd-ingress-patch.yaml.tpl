apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: ${argocd_namespace}-server-ingress
  namespace: ${argocd_namespace}
  annotations:
    kubernetes.io/ingress.class: "nginx"
spec:
  rules:
    - host: ${argocd_namespace}.local
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: argocd-server
                port:
                  name: http