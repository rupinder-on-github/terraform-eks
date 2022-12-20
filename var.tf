variable "iam_role_name_for_eks_cluster" {
    type = string
    description = "IAM Role name of the EKS Cluster"  
}
variable "eks_cluster_name" {
    type = string
    description = "Name of the EKS Cluster"  
}
variable "subnet_ids" {
    type = list(string)
    description = "List of Subnet ids"  
}
variable "template_name" {
    type = string  
}
variable "ami_id" {
    type = string
  
}
variable "eks_sa_namespace" {
    type = string
  
}
variable "additional-sg" {
    type = string
    default = "additional-sg"  
}
variable "tag_name_for_cluster" {
    type = string  
}
variable "iam_role_name_for_eks_nodes" {
    type = string  
}
variable "eks_node_group_name" {
    type = string  
}
variable "instance_type" {
    type = string  
}
variable "ec2_ssh_key" {
    type = string
  
}
variable "desired_size" {
    type = number  
}
variable "max_size" {
    type = number  
}
variable "min_size" {
    type = number  
}
variable "max_unavailable" {
    type = number  
}
variable "region" {
    type = string  
}
variable "oidc_role_name" {
    type = string  
}
variable "EKS_ClusterAutoscalarPolicyARN" {
    type = string
    default = "-1"  
}
variable "eks_sa_name" {
     type = string  
}
variable "secret_key" {
    type = string  
}
variable "access_key" {
    type = string
  
}
variable "security_groups" {
    default = [
        {
            description = "test"
            egress_rules = [
                {
                    from = 0
                    to = 0 
                    protocol = "-1" 
                    cidr = ["0.0.0.0/0"]
                } ]
            ingress_rules = [{
                from = 30443
                to = 30443
                protocol = "tcp"
                cidr = ["10.0.0.0/8"]                
            },
            {
                from = 30080
                to = 30080
                protocol = "tcp"
                cidr = ["10.0.0.0/8"]  
            }           
             ]
        }
    ]  
}

variable "policy-name" {
    type = string  
}

variable "policy-count" {
    type = string
    default = "-1" 
}
variable "ports" {
    default = [[30080,8443,30443,443,22]] 
}
variable "cidr" {
    default = [["10.0.0.0/8"]]
  
}
variable "aws_lb_target_group_name" {
}
variable "instances_name" {
    default = "eks_dev_cluster"  
}
variable "vpc_id" {
  type = string
}