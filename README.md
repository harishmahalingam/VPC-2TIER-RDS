
Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create[0m

Terraform will perform the following actions:

[1m  # module.ec2.aws_instance.web[0m will be created
[0m  [32m+[0m[0m resource "aws_instance" "web" {
      [32m+[0m[0m ami                                  = "ami-084568db4383264d4"
      [32m+[0m[0m arn                                  = (known after apply)
      [32m+[0m[0m associate_public_ip_address          = (known after apply)
      [32m+[0m[0m availability_zone                    = (known after apply)
      [32m+[0m[0m cpu_core_count                       = (known after apply)
      [32m+[0m[0m cpu_threads_per_core                 = (known after apply)
      [32m+[0m[0m disable_api_stop                     = (known after apply)
      [32m+[0m[0m disable_api_termination              = (known after apply)
      [32m+[0m[0m ebs_optimized                        = (known after apply)
      [32m+[0m[0m enable_primary_ipv6                  = (known after apply)
      [32m+[0m[0m get_password_data                    = false
      [32m+[0m[0m host_id                              = (known after apply)
      [32m+[0m[0m host_resource_group_arn              = (known after apply)
      [32m+[0m[0m iam_instance_profile                 = (known after apply)
      [32m+[0m[0m id                                   = (known after apply)
      [32m+[0m[0m instance_initiated_shutdown_behavior = (known after apply)
      [32m+[0m[0m instance_lifecycle                   = (known after apply)
      [32m+[0m[0m instance_state                       = (known after apply)
      [32m+[0m[0m instance_type                        = "t2.micro"
      [32m+[0m[0m ipv6_address_count                   = (known after apply)
      [32m+[0m[0m ipv6_addresses                       = (known after apply)
      [32m+[0m[0m key_name                             = "test-keypair"
      [32m+[0m[0m monitoring                           = (known after apply)
      [32m+[0m[0m outpost_arn                          = (known after apply)
      [32m+[0m[0m password_data                        = (known after apply)
      [32m+[0m[0m placement_group                      = (known after apply)
      [32m+[0m[0m placement_partition_number           = (known after apply)
      [32m+[0m[0m primary_network_interface_id         = (known after apply)
      [32m+[0m[0m private_dns                          = (known after apply)
      [32m+[0m[0m private_ip                           = (known after apply)
      [32m+[0m[0m public_dns                           = (known after apply)
      [32m+[0m[0m public_ip                            = (known after apply)
      [32m+[0m[0m secondary_private_ips                = (known after apply)
      [32m+[0m[0m security_groups                      = (known after apply)
      [32m+[0m[0m source_dest_check                    = true
      [32m+[0m[0m spot_instance_request_id             = (known after apply)
      [32m+[0m[0m subnet_id                            = (known after apply)
      [32m+[0m[0m tags                                 = {
          [32m+[0m[0m "Name" = "WebServer"
        }
      [32m+[0m[0m tags_all                             = {
          [32m+[0m[0m "Name" = "WebServer"
        }
      [32m+[0m[0m tenancy                              = (known after apply)
      [32m+[0m[0m user_data                            = "d2efe02f0972aa7d2ff59c3a37b948d9d087f61b"
      [32m+[0m[0m user_data_base64                     = (known after apply)
      [32m+[0m[0m user_data_replace_on_change          = false
      [32m+[0m[0m vpc_security_group_ids               = (known after apply)
    }

[1m  # module.ec2.aws_security_group.ec2_sg[0m will be created
[0m  [32m+[0m[0m resource "aws_security_group" "ec2_sg" {
      [32m+[0m[0m arn                    = (known after apply)
      [32m+[0m[0m description            = "Security group for EC2 instance"
      [32m+[0m[0m egress                 = [
          [32m+[0m[0m {
              [32m+[0m[0m cidr_blocks      = [
                  [32m+[0m[0m "0.0.0.0/0",
                ]
              [32m+[0m[0m description      = ""
              [32m+[0m[0m from_port        = 0
              [32m+[0m[0m ipv6_cidr_blocks = []
              [32m+[0m[0m prefix_list_ids  = []
              [32m+[0m[0m protocol         = "-1"
              [32m+[0m[0m security_groups  = []
              [32m+[0m[0m self             = false
              [32m+[0m[0m to_port          = 0
            },
        ]
      [32m+[0m[0m id                     = (known after apply)
      [32m+[0m[0m ingress                = [
          [32m+[0m[0m {
              [32m+[0m[0m cidr_blocks      = [
                  [32m+[0m[0m "0.0.0.0/0",
                ]
              [32m+[0m[0m description      = "SSH access"
              [32m+[0m[0m from_port        = 22
              [32m+[0m[0m ipv6_cidr_blocks = []
              [32m+[0m[0m prefix_list_ids  = []
              [32m+[0m[0m protocol         = "tcp"
              [32m+[0m[0m security_groups  = []
              [32m+[0m[0m self             = false
              [32m+[0m[0m to_port          = 22
            },
        ]
      [32m+[0m[0m name                   = "ec2-sg"
      [32m+[0m[0m name_prefix            = (known after apply)
      [32m+[0m[0m owner_id               = (known after apply)
      [32m+[0m[0m revoke_rules_on_delete = false
      [32m+[0m[0m tags_all               = (known after apply)
      [32m+[0m[0m vpc_id                 = (known after apply)
    }

[1m  # module.rds.aws_db_instance.db[0m will be created
[0m  [32m+[0m[0m resource "aws_db_instance" "db" {
      [32m+[0m[0m address                               = (known after apply)
      [32m+[0m[0m allocated_storage                     = 20
      [32m+[0m[0m apply_immediately                     = false
      [32m+[0m[0m arn                                   = (known after apply)
      [32m+[0m[0m auto_minor_version_upgrade            = true
      [32m+[0m[0m availability_zone                     = (known after apply)
      [32m+[0m[0m backup_retention_period               = (known after apply)
      [32m+[0m[0m backup_target                         = (known after apply)
      [32m+[0m[0m backup_window                         = (known after apply)
      [32m+[0m[0m ca_cert_identifier                    = (known after apply)
      [32m+[0m[0m character_set_name                    = (known after apply)
      [32m+[0m[0m copy_tags_to_snapshot                 = false
      [32m+[0m[0m database_insights_mode                = (known after apply)
      [32m+[0m[0m db_name                               = (known after apply)
      [32m+[0m[0m db_subnet_group_name                  = "rds-subnet-group"
      [32m+[0m[0m dedicated_log_volume                  = false
      [32m+[0m[0m delete_automated_backups              = true
      [32m+[0m[0m domain_fqdn                           = (known after apply)
      [32m+[0m[0m endpoint                              = (known after apply)
      [32m+[0m[0m engine                                = "mysql"
      [32m+[0m[0m engine_lifecycle_support              = (known after apply)
      [32m+[0m[0m engine_version                        = "8.0"
      [32m+[0m[0m engine_version_actual                 = (known after apply)
      [32m+[0m[0m hosted_zone_id                        = (known after apply)
      [32m+[0m[0m id                                    = (known after apply)
      [32m+[0m[0m identifier                            = (known after apply)
      [32m+[0m[0m identifier_prefix                     = (known after apply)
      [32m+[0m[0m instance_class                        = "db.t3.micro"
      [32m+[0m[0m iops                                  = (known after apply)
      [32m+[0m[0m kms_key_id                            = (known after apply)
      [32m+[0m[0m latest_restorable_time                = (known after apply)
      [32m+[0m[0m license_model                         = (known after apply)
      [32m+[0m[0m listener_endpoint                     = (known after apply)
      [32m+[0m[0m maintenance_window                    = (known after apply)
      [32m+[0m[0m master_user_secret                    = (known after apply)
      [32m+[0m[0m master_user_secret_kms_key_id         = (known after apply)
      [32m+[0m[0m monitoring_interval                   = 0
      [32m+[0m[0m monitoring_role_arn                   = (known after apply)
      [32m+[0m[0m multi_az                              = (known after apply)
      [32m+[0m[0m nchar_character_set_name              = (known after apply)
      [32m+[0m[0m network_type                          = (known after apply)
      [32m+[0m[0m option_group_name                     = (known after apply)
      [32m+[0m[0m parameter_group_name                  = (known after apply)
      [32m+[0m[0m password                              = (sensitive value)
      [32m+[0m[0m performance_insights_enabled          = false
      [32m+[0m[0m performance_insights_kms_key_id       = (known after apply)
      [32m+[0m[0m performance_insights_retention_period = (known after apply)
      [32m+[0m[0m port                                  = (known after apply)
      [32m+[0m[0m publicly_accessible                   = false
      [32m+[0m[0m replica_mode                          = (known after apply)
      [32m+[0m[0m replicas                              = (known after apply)
      [32m+[0m[0m resource_id                           = (known after apply)
      [32m+[0m[0m skip_final_snapshot                   = true
      [32m+[0m[0m snapshot_identifier                   = (known after apply)
      [32m+[0m[0m status                                = (known after apply)
      [32m+[0m[0m storage_throughput                    = (known after apply)
      [32m+[0m[0m storage_type                          = (known after apply)
      [32m+[0m[0m tags_all                              = (known after apply)
      [32m+[0m[0m timezone                              = (known after apply)
      [32m+[0m[0m username                              = "admin"
      [32m+[0m[0m vpc_security_group_ids                = (known after apply)
    }

[1m  # module.rds.aws_db_subnet_group.rds_subnet[0m will be created
[0m  [32m+[0m[0m resource "aws_db_subnet_group" "rds_subnet" {
      [32m+[0m[0m arn                     = (known after apply)
      [32m+[0m[0m description             = "Managed by Terraform"
      [32m+[0m[0m id                      = (known after apply)
      [32m+[0m[0m name                    = "rds-subnet-group"
      [32m+[0m[0m name_prefix             = (known after apply)
      [32m+[0m[0m subnet_ids              = (known after apply)
      [32m+[0m[0m supported_network_types = (known after apply)
      [32m+[0m[0m tags_all                = (known after apply)
      [32m+[0m[0m vpc_id                  = (known after apply)
    }

[1m  # module.rds.aws_security_group.rds_sg[0m will be created
[0m  [32m+[0m[0m resource "aws_security_group" "rds_sg" {
      [32m+[0m[0m arn                    = (known after apply)
      [32m+[0m[0m description            = "Allow access from EC2"
      [32m+[0m[0m egress                 = [
          [32m+[0m[0m {
              [32m+[0m[0m cidr_blocks      = [
                  [32m+[0m[0m "0.0.0.0/0",
                ]
              [32m+[0m[0m description      = ""
              [32m+[0m[0m from_port        = 0
              [32m+[0m[0m ipv6_cidr_blocks = []
              [32m+[0m[0m prefix_list_ids  = []
              [32m+[0m[0m protocol         = "-1"
              [32m+[0m[0m security_groups  = []
              [32m+[0m[0m self             = false
              [32m+[0m[0m to_port          = 0
            },
        ]
      [32m+[0m[0m id                     = (known after apply)
      [32m+[0m[0m ingress                = [
          [32m+[0m[0m {
              [32m+[0m[0m cidr_blocks      = [
                  [32m+[0m[0m "10.0.1.0/24",
                ]
              [32m+[0m[0m description      = ""
              [32m+[0m[0m from_port        = 3306
              [32m+[0m[0m ipv6_cidr_blocks = []
              [32m+[0m[0m prefix_list_ids  = []
              [32m+[0m[0m protocol         = "tcp"
              [32m+[0m[0m security_groups  = []
              [32m+[0m[0m self             = false
              [32m+[0m[0m to_port          = 3306
            },
        ]
      [32m+[0m[0m name                   = "rds-sg"
      [32m+[0m[0m name_prefix            = (known after apply)
      [32m+[0m[0m owner_id               = (known after apply)
      [32m+[0m[0m revoke_rules_on_delete = false
      [32m+[0m[0m tags_all               = (known after apply)
      [32m+[0m[0m vpc_id                 = (known after apply)
    }

[1m  # module.vpc.aws_internet_gateway.gw[0m will be created
[0m  [32m+[0m[0m resource "aws_internet_gateway" "gw" {
      [32m+[0m[0m arn      = (known after apply)
      [32m+[0m[0m id       = (known after apply)
      [32m+[0m[0m owner_id = (known after apply)
      [32m+[0m[0m tags_all = (known after apply)
      [32m+[0m[0m vpc_id   = (known after apply)
    }

[1m  # module.vpc.aws_subnet.private[0][0m will be created
[0m  [32m+[0m[0m resource "aws_subnet" "private" {
      [32m+[0m[0m arn                                            = (known after apply)
      [32m+[0m[0m assign_ipv6_address_on_creation                = false
      [32m+[0m[0m availability_zone                              = "us-east-1a"
      [32m+[0m[0m availability_zone_id                           = (known after apply)
      [32m+[0m[0m cidr_block                                     = "10.0.2.0/24"
      [32m+[0m[0m enable_dns64                                   = false
      [32m+[0m[0m enable_resource_name_dns_a_record_on_launch    = false
      [32m+[0m[0m enable_resource_name_dns_aaaa_record_on_launch = false
      [32m+[0m[0m id                                             = (known after apply)
      [32m+[0m[0m ipv6_cidr_block_association_id                 = (known after apply)
      [32m+[0m[0m ipv6_native                                    = false
      [32m+[0m[0m map_public_ip_on_launch                        = false
      [32m+[0m[0m owner_id                                       = (known after apply)
      [32m+[0m[0m private_dns_hostname_type_on_launch            = (known after apply)
      [32m+[0m[0m tags                                           = {
          [32m+[0m[0m "Name" = "private-subnet-1"
        }
      [32m+[0m[0m tags_all                                       = {
          [32m+[0m[0m "Name" = "private-subnet-1"
        }
      [32m+[0m[0m vpc_id                                         = (known after apply)
    }

[1m  # module.vpc.aws_subnet.private[1][0m will be created
[0m  [32m+[0m[0m resource "aws_subnet" "private" {
      [32m+[0m[0m arn                                            = (known after apply)
      [32m+[0m[0m assign_ipv6_address_on_creation                = false
      [32m+[0m[0m availability_zone                              = "us-east-1b"
      [32m+[0m[0m availability_zone_id                           = (known after apply)
      [32m+[0m[0m cidr_block                                     = "10.0.3.0/24"
      [32m+[0m[0m enable_dns64                                   = false
      [32m+[0m[0m enable_resource_name_dns_a_record_on_launch    = false
      [32m+[0m[0m enable_resource_name_dns_aaaa_record_on_launch = false
      [32m+[0m[0m id                                             = (known after apply)
      [32m+[0m[0m ipv6_cidr_block_association_id                 = (known after apply)
      [32m+[0m[0m ipv6_native                                    = false
      [32m+[0m[0m map_public_ip_on_launch                        = false
      [32m+[0m[0m owner_id                                       = (known after apply)
      [32m+[0m[0m private_dns_hostname_type_on_launch            = (known after apply)
      [32m+[0m[0m tags                                           = {
          [32m+[0m[0m "Name" = "private-subnet-2"
        }
      [32m+[0m[0m tags_all                                       = {
          [32m+[0m[0m "Name" = "private-subnet-2"
        }
      [32m+[0m[0m vpc_id                                         = (known after apply)
    }

[1m  # module.vpc.aws_subnet.public[0m will be created
[0m  [32m+[0m[0m resource "aws_subnet" "public" {
      [32m+[0m[0m arn                                            = (known after apply)
      [32m+[0m[0m assign_ipv6_address_on_creation                = false
      [32m+[0m[0m availability_zone                              = "us-east-1a"
      [32m+[0m[0m availability_zone_id                           = (known after apply)
      [32m+[0m[0m cidr_block                                     = "10.0.1.0/24"
      [32m+[0m[0m enable_dns64                                   = false
      [32m+[0m[0m enable_resource_name_dns_a_record_on_launch    = false
      [32m+[0m[0m enable_resource_name_dns_aaaa_record_on_launch = false
      [32m+[0m[0m id                                             = (known after apply)
      [32m+[0m[0m ipv6_cidr_block_association_id                 = (known after apply)
      [32m+[0m[0m ipv6_native                                    = false
      [32m+[0m[0m map_public_ip_on_launch                        = true
      [32m+[0m[0m owner_id                                       = (known after apply)
      [32m+[0m[0m private_dns_hostname_type_on_launch            = (known after apply)
      [32m+[0m[0m tags_all                                       = (known after apply)
      [32m+[0m[0m vpc_id                                         = (known after apply)
    }

[1m  # module.vpc.aws_vpc.main[0m will be created
[0m  [32m+[0m[0m resource "aws_vpc" "main" {
      [32m+[0m[0m arn                                  = (known after apply)
      [32m+[0m[0m cidr_block                           = "10.0.0.0/16"
      [32m+[0m[0m default_network_acl_id               = (known after apply)
      [32m+[0m[0m default_route_table_id               = (known after apply)
      [32m+[0m[0m default_security_group_id            = (known after apply)
      [32m+[0m[0m dhcp_options_id                      = (known after apply)
      [32m+[0m[0m enable_dns_hostnames                 = (known after apply)
      [32m+[0m[0m enable_dns_support                   = true
      [32m+[0m[0m enable_network_address_usage_metrics = (known after apply)
      [32m+[0m[0m id                                   = (known after apply)
      [32m+[0m[0m instance_tenancy                     = "default"
      [32m+[0m[0m ipv6_association_id                  = (known after apply)
      [32m+[0m[0m ipv6_cidr_block                      = (known after apply)
      [32m+[0m[0m ipv6_cidr_block_network_border_group = (known after apply)
      [32m+[0m[0m main_route_table_id                  = (known after apply)
      [32m+[0m[0m owner_id                             = (known after apply)
      [32m+[0m[0m tags_all                             = (known after apply)
    }

[1mPlan:[0m 10 to add, 0 to change, 0 to destroy.
[0m