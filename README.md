# terraform-reference

### Commands
Initialize terraform repository:
```bash
terraform init 
```
Show what tf files will do:
```bash
terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.myvpc will be created
  + resource "aws_vpc" "myvpc" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "10.0.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = (known after apply)
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly
these actions if you run "terraform apply" now.
```
Apply plan with:
```bash
terraform apply
```
It asks for confirmation - in build scripts we have to auto apply.

In order to destroy:
```bash
terraform destroy
```

### State
Cloudformation maintains a state of your stack on AWS. Terraform uses state file to maintain the state.

### Drift
If two people execute terraform apply at the same time this can lead to drift. 
State drift can make terraform break. In order to fix the drift - we import the AWS configuration to the state.

### Linting
```bash

➜  first-resource git:(main) tflint
Failed to load configurations; main.tf:12,18-25: Invalid type specification; The keyword "stringy" is not a valid type specification.:

Error: Invalid type specification

  on main.tf line 12, in variable "mylist":
  12:   type    = list(stringy)

The keyword "stringy" is not a valid type specification.
```

### Documentation
- terraform works by folder
- terraform can also use modules

https://developer.hashicorp.com/terraform/docs

#### Modules
https://registry.terraform.io/browse/modules


### Future project
https://aws.amazon.com/blogs/containers/build-and-deploy-a-spring-boot-application-to-aws-app-runner-with-a-ci-cd-pipeline-using-terraform/

### Lessons

#### Lesson 1
1. What is terraform
2. create, init, plan, apply
3. variables

#### Lesson 2
1. Outputs
2. Tuples and Objects
3. Homework challenge: Create a VPC using terraform, print the vpc id by using outputs
4. Create EC2, how to check what are the required attributes using the terraform documentation.
5. Create Elastic IP and associating with ec2 instance

#### Lesson 3 (next lesson)
Terraform aws modules:
https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest

