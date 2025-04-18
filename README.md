## Terraform Plan
### aws_instance

*Action*: create
*Name*: web
*Address*: module.ec2.aws_instance.web
*Change*: {"ami":"ami-084568db4383264d4","credit_specification":[],"get_password_data":false,"hibernation":null,"instance_type":"t2.micro","key_name":"test-keypair","launch_template":[],"source_dest_check":true,"tags":{"Name":"WebServer"},"tags_all":{"Name":"WebServer"},"timeouts":null,"user_data":"d2efe02f0972aa7d2ff59c3a37b948d9d087f61b","user_data_replace_on_change":false,"volume_tags":null}

### aws_security_group

*Action*: create
*Name*: ec2_sg
*Address*: module.ec2.aws_security_group.ec2_sg
*Change*: {"description":"Security group for EC2 instance","egress":[{"cidr_blocks":["0.0.0.0/0"],"description":"","from_port":0,"ipv6_cidr_blocks":[],"prefix_list_ids":[],"protocol":"-1","security_groups":[],"self":false,"to_port":0}],"ingress":[{"cidr_blocks":["0.0.0.0/0"],"description":"SSH access","from_port":22,"ipv6_cidr_blocks":[],"prefix_list_ids":[],"protocol":"tcp","security_groups":[],"self":false,"to_port":22}],"name":"ec2-sg","revoke_rules_on_delete":false,"tags":null,"timeouts":null}

### aws_db_instance

*Action*: create
*Name*: db
*Address*: module.rds.aws_db_instance.db
*Change*: {"allocated_storage":20,"allow_major_version_upgrade":null,"apply_immediately":false,"auto_minor_version_upgrade":true,"blue_green_update":[],"copy_tags_to_snapshot":false,"custom_iam_instance_profile":null,"customer_owned_ip_enabled":null,"db_subnet_group_name":"rds-subnet-group","dedicated_log_volume":false,"delete_automated_backups":true,"deletion_protection":null,"domain":null,"domain_auth_secret_arn":null,"domain_dns_ips":null,"domain_iam_role_name":null,"domain_ou":null,"enabled_cloudwatch_logs_exports":null,"engine":"mysql","engine_version":"8.0","final_snapshot_identifier":null,"iam_database_authentication_enabled":null,"instance_class":"db.t3.micro","manage_master_user_password":null,"max_allocated_storage":null,"monitoring_interval":0,"password":"MySecurePass123","password_wo":null,"password_wo_version":null,"performance_insights_enabled":false,"publicly_accessible":false,"replicate_source_db":null,"restore_to_point_in_time":[],"s3_import":[],"skip_final_snapshot":true,"storage_encrypted":null,"tags":null,"timeouts":null,"upgrade_storage_config":null,"username":"admin"}

### aws_db_subnet_group

*Action*: create
*Name*: rds_subnet
*Address*: module.rds.aws_db_subnet_group.rds_subnet
*Change*: {"description":"Managed by Terraform","name":"rds-subnet-group","tags":null}

### aws_security_group

*Action*: create
*Name*: rds_sg
*Address*: module.rds.aws_security_group.rds_sg
*Change*: {"description":"Allow access from EC2","egress":[{"cidr_blocks":["0.0.0.0/0"],"description":"","from_port":0,"ipv6_cidr_blocks":[],"prefix_list_ids":[],"protocol":"-1","security_groups":[],"self":false,"to_port":0}],"ingress":[{"cidr_blocks":["10.0.1.0/24"],"description":"","from_port":3306,"ipv6_cidr_blocks":[],"prefix_list_ids":[],"protocol":"tcp","security_groups":[],"self":false,"to_port":3306}],"name":"rds-sg","revoke_rules_on_delete":false,"tags":null,"timeouts":null}

### aws_internet_gateway

*Action*: create
*Name*: gw
*Address*: module.vpc.aws_internet_gateway.gw
*Change*: {"tags":null,"timeouts":null}

### aws_subnet

*Action*: create
*Name*: private
*Address*: module.vpc.aws_subnet.private[0]
*Change*: {"assign_ipv6_address_on_creation":false,"availability_zone":"us-east-1a","cidr_block":"10.0.2.0/24","customer_owned_ipv4_pool":null,"enable_dns64":false,"enable_lni_at_device_index":null,"enable_resource_name_dns_a_record_on_launch":false,"enable_resource_name_dns_aaaa_record_on_launch":false,"ipv6_cidr_block":null,"ipv6_native":false,"map_customer_owned_ip_on_launch":null,"map_public_ip_on_launch":false,"outpost_arn":null,"tags":{"Name":"private-subnet-1"},"tags_all":{"Name":"private-subnet-1"},"timeouts":null}

### aws_subnet

*Action*: create
*Name*: private
*Address*: module.vpc.aws_subnet.private[1]
*Change*: {"assign_ipv6_address_on_creation":false,"availability_zone":"us-east-1b","cidr_block":"10.0.3.0/24","customer_owned_ipv4_pool":null,"enable_dns64":false,"enable_lni_at_device_index":null,"enable_resource_name_dns_a_record_on_launch":false,"enable_resource_name_dns_aaaa_record_on_launch":false,"ipv6_cidr_block":null,"ipv6_native":false,"map_customer_owned_ip_on_launch":null,"map_public_ip_on_launch":false,"outpost_arn":null,"tags":{"Name":"private-subnet-2"},"tags_all":{"Name":"private-subnet-2"},"timeouts":null}

### aws_subnet

*Action*: create
*Name*: public
*Address*: module.vpc.aws_subnet.public
*Change*: {"assign_ipv6_address_on_creation":false,"availability_zone":"us-east-1a","cidr_block":"10.0.1.0/24","customer_owned_ipv4_pool":null,"enable_dns64":false,"enable_lni_at_device_index":null,"enable_resource_name_dns_a_record_on_launch":false,"enable_resource_name_dns_aaaa_record_on_launch":false,"ipv6_cidr_block":null,"ipv6_native":false,"map_customer_owned_ip_on_launch":null,"map_public_ip_on_launch":true,"outpost_arn":null,"tags":null,"timeouts":null}

### aws_vpc

*Action*: create
*Name*: main
*Address*: module.vpc.aws_vpc.main
*Change*: {"assign_generated_ipv6_cidr_block":null,"cidr_block":"10.0.0.0/16","enable_dns_support":true,"instance_tenancy":"default","ipv4_ipam_pool_id":null,"ipv4_netmask_length":null,"ipv6_ipam_pool_id":null,"ipv6_netmask_length":null,"tags":null}

