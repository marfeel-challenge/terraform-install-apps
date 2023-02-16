###############################################
# create argo application and appproject      #
###############################################
module "create_argocd_dev" {
  source = "./argocd"
  cluster_name = "${var.clusters.dev.cluster_name}"
  argocd_namespace = "${var.argocd_namespace}"

  branch = "${var.clusters.dev.branch}"
  env = "${var.clusters.dev.env}"
  appFrontName = "${var.clusters.dev.appFrontName}"
  appFrontRepo = "${var.clusters.dev.appFrontRepo}"
  appFrontNamespace = "${var.clusters.dev.appFrontNamespace}"
  appApiName = "${var.clusters.dev.appApiName}"
  appApiRepo = "${var.clusters.dev.appApiRepo}"
  appApiNamespace = "${var.clusters.dev.appApiNamespace}"
}

###
module "create_argocd_tst" {
  source = "./argocd"
  cluster_name = "${var.clusters.tst.cluster_name}"
  argocd_namespace = "${var.argocd_namespace}"

  branch = "${var.clusters.tst.branch}"
  env = "${var.clusters.tst.env}"
  appFrontName = "${var.clusters.tst.appFrontName}"
  appFrontRepo = "${var.clusters.tst.appFrontRepo}"
  appFrontNamespace = "${var.clusters.tst.appFrontNamespace}"
  appApiName = "${var.clusters.tst.appApiName}"
  appApiRepo = "${var.clusters.tst.appApiRepo}"
  appApiNamespace = "${var.clusters.tst.appApiNamespace}"
}

###
module "create_argocd_prd" {
  source = "./argocd"
  cluster_name = "${var.clusters.prd.cluster_name}"
  argocd_namespace = "${var.argocd_namespace}"  

  branch = "${var.clusters.prd.branch}"
  env = "${var.clusters.prd.env}"
  appFrontName = "${var.clusters.prd.appFrontName}"
  appFrontRepo = "${var.clusters.prd.appFrontRepo}"
  appFrontNamespace = "${var.clusters.prd.appFrontNamespace}"
  appApiName = "${var.clusters.prd.appApiName}"
  appApiRepo = "${var.clusters.prd.appApiRepo}"
  appApiNamespace = "${var.clusters.prd.appApiNamespace}"
}