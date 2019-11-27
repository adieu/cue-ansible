package huawei

hwc_vpc_route :: {

	// Specifies the destination IP address or CIDR block.

	destination: string

	// Specifies the next hop. The value is VPC peering connection ID.

	next_hop: string

	// Whether the given object should exist in Huawei Cloud.

	state?: string

	// Specifies the type of route.

	type?: string

	// Specifies the VPC ID to which route is added.

	vpc_id: string
}

hwc_vpc_security_group :: {

	// Specifies the resource ID of the VPC to which the security group belongs.

	vpc_id?: string

	// Specifies the enterprise project ID. When creating a security group, associate the enterprise project ID with the security group.s

	enterprise_project_id?: string

	// Specifies the security group name. The value is a string of 1 to 64 characters that can contain letters, digits, underscores C(_), hyphens (-), and periods (.).

	name: string

	// Whether the given object should exist in Huawei Cloud.

	state?: string
}

hwc_evs_disk :: {

	// Specifies the encryption ID. The length of it fixes at 36 bytes.

	encryption_id?: string

	// Specifies the disk name. The value can contain a maximum of 255 bytes.

	name: string

	// The timeouts for each operations.

	timeouts?: {...}

	// Specifies the ID of the backup that can be used to create a disk. This parameter is mandatory when you use a backup to create the disk.

	backup_id?: string

	// If this parameter is set to True, the disk device type will be SCSI, which allows ECS OSs to directly access underlying storage media. SCSI reservation command is supported. If this parameter is set to False, the disk device type will be VBD, which supports only simple SCSI read/write commands.
	// If parameter enable_share is set to True and this parameter is not specified, shared SCSI disks are created. SCSI EVS disks cannot be created from backups, which means that this parameter cannot be True if backup_id has been specified.

	enable_scsi?: bool

	// Specifies the image ID. If this parameter is specified, the disk is created from an image. BMS system disks cannot be created from BMS images.

	image_id?: string

	// Specifies the AZ where you want to create the disk.

	availability_zone: string

	// Specifies whether the disk is shareable. The default value is False.

	enable_share?: bool

	// Specifies the enterprise project ID. This ID is associated with the disk during the disk creation. If it is not specified, the disk is bound to the default enterprise project.

	enterprise_project_id?: string

	// Specifies the disk size, in GB. Its values are as follows, System disk 1 GB to 1024 GB, Data disk 10 GB to 32768 GB. This parameter is mandatory when you create an empty disk or use an image or a snapshot to create a disk. If you use an image or a snapshot to create a disk, the disk size must be greater than or equal to the image or snapshot size. This parameter is optional when you use a backup to create a disk. If this parameter is not specified, the disk size is equal to the backup size.

	size?: int

	// Specifies the disk type. Currently, the value can be SSD, SAS, or SATA.
	// SSD specifies the ultra-high I/O disk type.
	// SAS specifies the high I/O disk type.
	// SATA specifies the common I/O disk type.
	// If the specified disk type is not available in the AZ, the disk will fail to create. If the EVS disk is created from a snapshot, the volume_type field must be the same as that of the snapshot's source disk.

	volume_type: string

	// Specifies the disk description. The value can contain a maximum of 255 bytes.

	description?: string

	// If the disk is created from a snapshot and linked cloning needs to be used, set this parameter to True.

	enable_full_clone?: bool

	// Specifies the snapshot ID. If this parameter is specified, the disk is created from a snapshot.

	snapshot_id?: string

	// Whether the given object should exist in Huaweicloud Cloud.

	state?: string
}

hwc_smn_topic :: {

	// Topic display name, which is presented as the name of the email sender in an email message. The topic display name contains a maximum of 192 bytes.

	display_name?: string

	// Name of the topic to be created. The topic name is a string of 1 to 256 characters. It must contain upper- or lower-case letters, digits, hyphens (-), and underscores C(_), and must start with a letter or digit.

	name: string

	// Whether the given object should exist in Huaweicloud Cloud.

	state?: string
}

hwc_vpc_eip :: {

	// Whether the given object should exist in Huawei Cloud.

	state?: string

	// Specifies the EIP type.

	type: string

	// Specifies the obtained IPv4 EIP. The system automatically assigns an EIP if you do not specify it.

	ipv4_address?: string

	// Specifies the ID of shared bandwidth.

	shared_bandwidth_id?: string

	// The value can be 4 (IPv4 address) or 6 (IPv6 address). If this parameter is left blank, an IPv4 address will be assigned.

	ip_version?: int

	// Specifies the port ID. This parameter is returned only when a private IP address is bound with the EIP.

	port_id?: string

	// The timeouts for each operations.

	timeouts?: {...}

	// Specifies the dedicated bandwidth object.

	dedicated_bandwidth?: {...}

	// Specifies the enterprise project ID.

	enterprise_project_id?: string
}

hwc_vpc_peering_connect :: {

	// Specifies information about the peering VPC.

	peering_vpc: {...}

	// Whether the given object should exist in Huawei Cloud.

	state?: string

	// The timeouts for each operations.

	timeouts?: {...}

	// The description of vpc peering connection.

	description?: string

	// Specifies the ID of local VPC.

	local_vpc_id: string

	// Specifies the name of the VPC peering connection. The value can contain 1 to 64 characters.

	name: string
}

hwc_vpc_port :: {

	// Specifies the administrative state of the port.

	admin_state_up?: bool

	// Specifies the port IP address.

	ip_address?: string

	// Specifies the ID of the subnet to which the port belongs.

	subnet_id: string

	// The timeouts for each operations.

	timeouts?: {...}

	// Specifies a set of zero or more allowed address pairs.

	allowed_address_pairs?: [..._]

	// Specifies the extended option of DHCP.

	extra_dhcp_opts?: [..._]

	// Specifies the port name. The value can contain no more than 255 characters.

	name?: string

	// Specifies the ID of the security group.

	security_groups?: [..._]

	// Whether the given object should exist in Huawei Cloud.

	state?: string
}

hwc_vpc_private_ip :: {

	// Specifies the target IP address. The value can be an available IP address in the subnet. If it is not specified, the system automatically assigns an IP address. Cannot be changed after creating the private ip.

	ip_address?: string

	// Whether the given object should exist in Huawei Cloud.

	state?: string

	// Specifies the ID of the subnet from which IP addresses are assigned. Cannot be changed after creating the private ip.

	subnet_id: string
}

hwc_vpc_security_group_rule :: {

	// Specifies the end port number. The value ranges from 1 to 65535. If the protocol is not icmp, the value cannot be smaller than the port_range_min value. An empty value indicates all ports.

	port_range_max?: int

	// Specifies the start port number. The value ranges from 1 to 65535. The value cannot be greater than the port_range_max value. An empty value indicates all ports.

	port_range_min?: int

	// Whether the given object should exist in Huawei Cloud.

	state?: string

	// Specifies the direction of access control. The value can be egress or ingress.

	direction: string

	// Specifies the IP protocol version. The value can be IPv4 or IPv6. If you do not set this parameter, IPv4 is used by default.

	ethertype?: string

	// Specifies the protocol type. The value can be icmp, tcp, or udp. If the parameter is left blank, the security group supports all protocols.

	protocol?: string

	// Specifies the ID of the peer security group. The value is exclusive with parameter remote_ip_prefix.

	remote_group_id?: string

	// Specifies the remote IP address. If the access control direction is set to egress, the parameter specifies the source IP address. If the access control direction is set to ingress, the parameter specifies the destination IP address. The value can be in the CIDR format or IP addresses. The parameter is exclusive with parameter remote_group_id.

	remote_ip_prefix?: string

	// Specifies the security group rule ID, which uniquely identifies the security group rule.

	security_group_id: string

	// Provides supplementary information about the security group rule. The value is a string of no more than 255 characters that can contain letters and digits.

	description?: string
}

hwc_vpc_subnet :: {

	// Specifies the DNS server addresses for subnet. The address in the head will be used first.

	dns_address?: [..._]

	// The timeouts for each operations.

	timeouts?: {...}

	// Specifies the ID of the VPC to which the subnet belongs. Cannot be changed after creating the subnet.

	vpc_id: string

	// Specifies whether DHCP is enabled for the subnet. The value can be true (enabled) or false(disabled), and default value is true. If this parameter is set to false, newly created ECSs cannot obtain IP addresses, and usernames and passwords cannot be injected using Cloud-init.

	dhcp_enable?: bool

	// Specifies the subnet CIDR block. The value must be within the VPC CIDR block and be in CIDR format. The subnet mask cannot be greater than 28. Cannot be changed after creating the subnet.

	cidr: string

	// Specifies the gateway of the subnet. The value must be an IP address in the subnet. Cannot be changed after creating the subnet.

	gateway_ip: string

	// Specifies the subnet name. The value is a string of 1 to 64 characters that can contain letters, digits, underscores C(_), hyphens (-), and periods (.).

	name: string

	// Whether the given object should exist in Huawei Cloud.

	state?: string

	// Specifies the AZ to which the subnet belongs. Cannot be changed after creating the subnet.

	availability_zone?: string
}

hwc_ecs_instance :: {

	// Specifies the NIC information of the ECS. Constraints the network of the NIC must belong to the VPC specified by vpc_id. A maximum of 12 NICs can be attached to an ECS.

	nics: [..._]

	// Specifies the configuration of the ECS's system disks.

	root_volume: {...}

	// Specifies the name of the SSH key used for logging in to the ECS.

	ssh_key_name?: string

	// Specifies the user data to be injected during the ECS creation process. Text, text files, and gzip files can be injected. The content to be injected must be encoded with base64. The maximum size of the content to be injected (before encoding) is 32 KB. For Linux ECSs, this parameter does not take effect when adminPass is used.

	user_data?: string

	// Specifies the ID of the system image.

	image_id: string

	// Specifies the description of an ECS, which is a null string by default. Can contain a maximum of 85 characters. Cannot contain special characters, such as < and >.

	description?: string

	// Specifies the ID of the elastic IP address assigned to the ECS. Only elastic IP addresses in the DOWN state can be assigned.

	eip_id?: string

	// Specifies whether automatic recovery is enabled on the ECS.

	enable_auto_recovery?: bool

	// Specifies the security groups of the ECS. If this parameter is left blank, the default security group is bound to the ECS by default.

	security_groups?: [..._]

	// Specifies the tags of an ECS. When you create ECSs, one ECS supports up to 10 tags.

	server_tags?: {...}

	// Specifies the name of the AZ where the ECS is located.

	availability_zone: string

	// Specifies the data disks of ECS instance.

	data_volumes?: [..._]

	// Specifies the name of the system flavor.

	flavor_name: string

	// Specifies the metadata of ECS to be created.

	server_metadata?: {...}

	// Whether the given object should exist in Huawei Cloud.

	state?: string

	// Specifies the ID of the VPC to which the ECS belongs.

	vpc_id: string

	// Specifies the initial login password of the administrator account for logging in to an ECS using password authentication. The Linux administrator is root, and the Windows administrator is Administrator. Password complexity requirements, consists of 8 to 26 characters. The password must contain at least three of the following character types 'uppercase letters, lowercase letters, digits, and special characters (!@$%^-_=+[{}]:,./?)'. The password cannot contain the username or the username in reverse. The Windows ECS password cannot contain the username, the username in reverse, or more than two consecutive characters in the username.

	admin_pass?: string

	// Specifies the ECS name. Value requirements consists of 1 to 64 characters, including letters, digits, underscores C(_), hyphens (-), periods (.).

	name: string

	// The timeouts for each operations.

	timeouts?: {...}

	// Specifies the ID of the enterprise project to which the ECS belongs.

	enterprise_project_id?: string
}

hwc_network_vpc :: {

	// The name of vpc.

	name: string

	// Whether the given object should exist in vpc.

	state?: string

	// The timeouts for each operations.

	timeouts?: {...}

	// The range of available subnets in the vpc.

	cidr: string
}
