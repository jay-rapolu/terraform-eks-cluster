variable "ami_id"{
    type = string
    default = data.rhel.id
}

variable "sg_ids"{
    type = string
    default = "sg-0051e99dd673c085e"
}

variable "instance_type"{
    type = string
    default = "t3.small"
}