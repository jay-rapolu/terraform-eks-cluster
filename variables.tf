variable "sg_ids"{
    type = list(string)
    default = ["sg-0051e99dd673c085e"]
}

variable "instance_type"{
    type = string
    default = "t3.small"
}