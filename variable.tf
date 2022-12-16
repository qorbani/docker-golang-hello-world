variable "region" {
  description = "Region"
  type = string
  default = "us-east-1"
}

variable "prop_tags" {
  description = "Tags"
  type = map(string)
  default = {
      Project = "Codebuild Terraform"
      IaC = "Terraform"
  }
}

variable "account_id" {
  description = "aws account"
  type = string
  default = "357505600859"
}

variable "codebuild_name" {
  description = "Codebuild project name"
  type = string
  default = "codebuild-demo-terraform"
}

variable "codebuild_params" {
  description = "Codebuild parameters"
  type = map(string)
}

variable "environment_variables" {
  description = "Environment variables"
  type = map(string)
}