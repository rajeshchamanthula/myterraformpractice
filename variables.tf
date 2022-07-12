variable "location" {
     default = "southeastasia"

}
   

variable "wow" {
    type=list(string)
    default = [ "compute","network","storage","backup"]

}

variable "client" {
    type = string
    default = "wow"
}
    

