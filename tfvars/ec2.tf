
resource "aws_instance" "expense" {
    for_each =var.instance_name                                    
    ami = data.aws_ami.ami_info.id  
    vpc_security_group_ids =["sg-035be4e538db0b944"]               
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.value
            Environment = var.environment
        }
    )
}
