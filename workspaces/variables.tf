variable "instance_type" {
    default = {
        dev = "t3.micro"  #dev,prod should be same as workspace names
        prod = "t3.micro"
    }
}