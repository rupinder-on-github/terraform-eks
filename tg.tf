resource "aws_lb_target_group" "alb_tg" {
    count = 1
    name = var.aws_lb_target_group_name
    port = 30080
    protocol = "TCP"
    vpc_id = var.vpc_id  
}

resource "aws_autoscaling_attachment" "asg_attachment" {
    autoscaling_group_name = aws_eks_node_group.node.resources[0].autoscaling_groups[0].name
    count = 1
    lb_target_group_arn = aws_lb_target_group.alb_tg[count.index].arn
}