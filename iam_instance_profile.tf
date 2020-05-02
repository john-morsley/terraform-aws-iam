resource "aws_iam_instance_profile" "this" {

  name = "${var.name}-instance-profile"
  
  role = aws_iam_role.this.name

  lifecycle {
    create_before_destroy = true
  }

}