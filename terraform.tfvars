region = "eu-west-1"


argocd_namespace = "argocd"

clusters = {
  dev = {
    cluster_name = "eks-cluster-dev"
    entorno = "dev"
    branch = "develop"
    env = "dev"
    appFrontName = "app-front"
    appFrontRepo = "https://github.com/marfeel-challenge/static_application.git"
    appFrontCDPath = "deploy"
    appFrontNamespace = "app-front"
    appApiName = "app-api"
    appApiRepo = "https://github.com/marfeel-challenge/api_application.git"
    appApiCDPath = "deploy"
    appApiNamespace = "app-api"
  }
  tst = {
    cluster_name = "eks-cluster-tst"
    entorno = "tst"
    branch = "release"
    env = "tst"
    appFrontName = "app-front"
    appFrontRepo = "https://github.com/marfeel-challenge/static_application.git"
    appFrontCDPath = "deploy"
    appFrontNamespace = "app-front"
    appApiName = "app-api"
    appApiRepo = "https://github.com/marfeel-challenge/api_application.git"
    appApiCDPath = "deploy"
    appApiNamespace = "app-api"
  }
  prd = {
    cluster_name = "eks-cluster-prd"
    entorno = "prd"
    branch = "main"
    env = "prd"
    appFrontName = "app-front"
    appFrontRepo = "https://github.com/marfeel-challenge/static_application.git"
    appFrontCDPath = "deploy"
    appFrontNamespace = "app-front"
    appApiName = "app-api"
    appApiRepo = "https://github.com/marfeel-challenge/api_application.git"
    appApiCDPath = "deploy"
    appApiNamespace = "app-api"
  }
}
