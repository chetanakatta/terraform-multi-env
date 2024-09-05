#if dev t3.micro ---> prod t3.small


resource "aws_instance" "db" {

    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-035be4e538db0b944"] #resource-type and name
    instance_type = lookup(var.instance_type, terraform.workspace) #lookup(map,key)
    #lookup function to get particular key value from map
}
