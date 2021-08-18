#backend
bucket               = "uz-app-infra-eu"
key                  = "tf-state.json"
region               = "eu-central-1"
workspace_key_prefix = "environment"

#eks
admin_users                              = ["sibin"]
developer_users                          = ["laura"]
spot_termination_handler_chart_name      = "aws-node-termination-handler"
spot_termination_handler_chart_repo      = "https://aws.github.io/eks-charts"
spot_termination_handler_chart_version   = "0.9.1"
spot_termination_handler_chart_namespace = "kube-system"
cluster_version = "1.18"

#ingress
ingress_gateway_chart_name    = "nginx-ingress"
ingress_gateway_chart_repo    = "https://helm.nginx.com/stable"
ingress_gateway_chart_version = "0.5.2"
ingress_gateway_annotations = {
  "controller.service.httpPort.targetPort"                                                                    = "http",
  "controller.service.httpsPort.targetPort"                                                                   = "http",
  "controller.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-backend-protocol"        = "http",
  "controller.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-ssl-ports"               = "https",
  "controller.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-connection-idle-timeout" = "60",
  "controller.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-type"                    = "elb"
}

#network
name_prefix             = "uz-app"
main_network_block      = "10.0.0.0/16"
subnet_prefix_extension = 4
zone_offset             = 8