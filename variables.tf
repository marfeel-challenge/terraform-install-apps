/* #ClusterName
variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
} */
#region
variable "region" {
  description = "The AWS region"
  type        = string
}


variable "clusters" {
  type = map(object({
    cluster_name = string
    entorno = string
    branch = string
    env = string
    appFrontName = string
    appFrontRepo = string
    appFrontNamespace = string
    appApiName = string
    appApiRepo = string
    appApiNamespace = string
    appFrontCDPath = string
    appApiCDPath = string
  }))
}
variable "environments" {
  type = list(string)
  default = ["dev", "tst"]
}

#argocd_namespace
variable "argocd_namespace" {
  description = "The ArgoCD namespace"
  type        = string
}
