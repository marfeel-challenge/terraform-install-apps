provider "kubernetes" {
  config_path = "~/.kube/config-${var.cluster_name}"
}

############################################
#     Apply app front end to argocd        #
############################################
resource "kubernetes_namespace" "appfront_ns" {
  metadata {
    name = "${var.appFrontNamespace}-${var.env}"
  }
}

resource "kubernetes_manifest" "appProjectFront" {
  manifest = jsondecode(templatefile("${path.module}/appProject.json.tpl", {
    appNamespace = "${var.appFrontNamespace}",
    env ="${var.env}",
    argocd_namespace = "${var.argocd_namespace}"
  }))
}
resource "kubernetes_manifest" "applicationFront" {
  manifest = jsondecode(templatefile("${path.module}/application.json.tpl", {
    appNamespace = "${var.appFrontNamespace}",
    appName = "${var.appFrontName}",
    env = "${var.env}",
    argocd_namespace = "${var.argocd_namespace}",
    appRepo = "${var.appFrontRepo}",
    branch = "${var.branch}",
  }))
}


############################################
#     Apply app front end to argocd        #
############################################
resource "kubernetes_namespace" "appApi_ns" {
  metadata {
    name = "${var.appApiNamespace}-${var.env}"
  }
}

resource "kubernetes_manifest" "appProjectApi" {
  manifest = jsondecode(templatefile("${path.module}/appProject.json.tpl", {
    appNamespace = "${var.appApiNamespace}",
    env = "${var.env}",
    argocd_namespace = "${var.argocd_namespace}"
  }))
}
resource "kubernetes_manifest" "applicationApi" {
  manifest = jsondecode(templatefile("${path.module}/application.json.tpl", {
    appNamespace = "${var.appApiNamespace}",
    appName = "${var.appApiName}",
    env = "${var.env}",
    argocd_namespace = "${var.argocd_namespace}",
    appRepo = "${var.appApiRepo}",
    branch = "${var.branch}",
  }))
}



