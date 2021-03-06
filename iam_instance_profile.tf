#      _____              __  __ 
#     |_   _|     /\     |  \/  |
#       | |      /  \    | \  / |
#       | |     / /\ \   | |\/| |
#      _| |_   / ____ \  | |  | |
#     |_____| /_/    \_\ |_|  |_|
#           _____           _                       
#          |_   _|         | |                      
#            | |  _ __  ___| |_ __ _ _ __   ___ ___ 
#            | | | '_ \/ __| __/ _` | '_ \ / __/ _ \
#           _| |_| | | \__ \ || (_| | | | | (_|  __/
#          |_____|_| |_|___/\__\__,_|_| |_|\___\___|
#                _____            __ _ _      
#               |  __ \          / _(_) |     
#               | |__) | __ ___ | |_ _| | ___ 
#               |  ___/ '__/ _ \|  _| | |/ _ \
#               | |   | | | (_) | | | | |  __/
#               |_|   |_|  \___/|_| |_|_|\___|

resource "aws_iam_instance_profile" "this" {

  name = "${var.name}-instance-profile"

  role = aws_iam_role.this.name

  lifecycle {
    create_before_destroy = true
  }

}