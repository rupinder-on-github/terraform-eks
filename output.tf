output "policy-count" {
    value = length(aws_iam_policy.policy)
  
}
output "policy-arn" {
    value = length(aws_iam_policy.policy.*.arn)
  
}
output "eks_cluster_endpoint" {
    value = aws_eks_cluster.aws_eks.endpoint 
}
output "eks_cluster_certificate_authority" {
    value = aws_eks_cluster.aws_eks.certificate_authority  
}
output "eks_cluster_oidc_role_arn" {
    value = aws_iam_role.role  
}
