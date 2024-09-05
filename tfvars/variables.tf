variable "instance_name" {
    type = map
    #default = {
    #    db = "t3.small"
    #    backend = "t3.micro"
    #   frontend = "t3.micro"
    #}
}
variable "environment" {
    #default = "dev"
}
variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "true"
    }
}
variable "domain_name" {
    default = "expense.fun"
}
variable "zone_id" {
    default = "Z020156726KEQOBA2RA7Q" 
}