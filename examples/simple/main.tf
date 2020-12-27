#      ______    _____   ___    _____       _
#     |  ____|  / ____| |__ \  |  __ \     | |
#     | |__    | |         ) | | |__) |___ | | ___
#     |  __|   | |        / /  |  _  // _ \| |/ _ \
#     | |____  | |____   / /_  | | \ \ (_) | |  __/
#     |______|  \_____| |____| |_|  \_\___/|_|\___|

module "ec2-role" {

  source = "./../../../terraform-aws-iam-role-module"
  #source = "john-morsley/iam-role/aws"

  name = var.iam_role_name

  assume_role_policy = file("${path.module}/iam/ec2-role.json")

  role_policy = file("${path.module}/iam/policy.json")

}