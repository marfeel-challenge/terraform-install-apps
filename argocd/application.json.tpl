{
  "apiVersion": "argoproj.io/v1alpha1",
  "kind": "Application",
  "metadata": {
    "name": "${appName}",
    "namespace": "${argocd_namespace}"
  },
  "spec": {
    "destination": {
      "namespace": "${appNamespace}-${env}",
      "server": "https://kubernetes.default.svc"
    },
    "ignoreDifferences": [
      {
        "jsonPointers": [
          "/imagePullSecrets",
          "/secrets"
        ],
        "kind": "ServiceAccount"
      }
    ],
    "project": "${appNamespace}",
    "source": {
      "helm": {
        "valueFiles": [
          "values.yaml"
        ]
      },
      "path": "deploy/${env}/",
      "repoURL": "${appRepo}",
      "targetRevision": "${branch}"
    },
    "syncPolicy": {
      "automated": {
        "prune": true,
        "selfHeal": true
      },
      "syncOptions": [
        "replace=false",
        "pruneLast=true"
      ]
    }
  }
}