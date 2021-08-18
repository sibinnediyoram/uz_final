#eks
asg_instance_types                       = ["t3.small", "t2.small"]
autoscaling_minimum_size_by_az           = 1
autoscaling_maximum_size_by_az           = 5
autoscaling_average_cpu                  = 30

#ingress
dns_base_domain               = "eks.sibin.com"

#network 
cluster_name            = "uz-app-eks"
iac_environment_tag     = "development"

