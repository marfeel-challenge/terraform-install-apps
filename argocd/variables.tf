variable "argocd_namespace" {
  description = "The namespace to deploy ArgoCD to"
  type        = string
}
variable "cluster_name" {
  description = "The name of the EKS cluster to deploy ArgoCD to"
  type        = string
}
/* variable "cluster_certificate_authority_data" {
  description = "The certificate authority data for the EKS cluster"
  type        = string
}
variable "cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  type        = string
} */
variable "branch" {
  description = "The branch to deploy"
  type        = string
}
variable "appFrontName" {
  description = "The name of the app to deploy"
  type        = string
}
variable "appFrontRepo" {
  description = "The repo to deploy"
  type        = string
}
variable "appFrontNamespace" {
  description = "The namespace to deploy"
  type        = string
}

variable "appApiName" {
  description = "The name of the app to deploy"
  type        = string
}
variable "appApiRepo" {
  description = "The repo to deploy"
  type        = string
}
variable "appApiNamespace" {
  description = "The namespace to deploy"
  type        = string
}
variable "env" {
  description = "The environment to deploy"
  type        = string
}

