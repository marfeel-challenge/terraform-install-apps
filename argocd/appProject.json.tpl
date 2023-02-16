{
  "apiVersion": "argoproj.io/v1alpha1",
  "kind": "AppProject",
  "metadata": {
    "name": "${appNamespace}-${env}",
    "namespace": "${argocd_namespace}"
  },
  "spec": {
    "clusterResourceWhitelist": [
      {
        "group": "*",
        "kind": "*"
      }
    ],
    "description": "${appNamespace}-${env} Project",
    "destinations": [
      {
        "namespace": "*",
        "server": "*"
      }
    ],
    "sourceRepos": [
      "*"
    ]
  }
}