variable "users" {
    type = list(string)
    default = ["shikhar","sagar","santosh"]
}

variable "cust_tags" {
    type = map(string)
    default = {}
}