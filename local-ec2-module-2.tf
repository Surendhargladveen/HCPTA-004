module "ec2-module" {
  source = "./ec2-module"
  instance_type = "t2.xlarge"
}

resource "aws_eip" "static_ip" {
    instance = module.ec2-module.instance_id
}

# module.<module_name>.<output_name>