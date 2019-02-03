resource "aws_launch_configuration" "launch-config" {
  name                  = "student-config"
  image_id              = "${var.AMI_ID}"
  instance_type         = "${var.INSTANCE_TYPE}"
  iam_instance_profile  = "${aws_iam_instance_profile.ec2-profile.name}"
  key_name              = "devops"
  user_data = <<-EOF
              #!/bin/bash
              sudo yum install ansible git python2-pip -y
              sudo pip install awscli
              EOF
  security_groups       = ["aws"]
}




