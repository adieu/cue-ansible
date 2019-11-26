package ansible

module: redshift: {
	author: [
		"Jens Carl (@j-carl), Hothead Games Inc.",
		"Rafael Driutti (@rafaeldriutti)",
	]
	module:            "redshift"
	version_added:     "2.2"
	short_description: "create, delete, or modify an Amazon Redshift instance"
	description: [
		"Creates, deletes, or modifies Amazon Redshift cluster instances.",
	]
	options: {
		command: {
			description: [
				"Specifies the action to take.",
			]
			required: true
			choices: ["create", "facts", "delete", "modify"]
			type: "str"
		}
		identifier: {
			description: [
				"Redshift cluster identifier.",
			]
			required: true
			type:     "str"
		}
		node_type: {
			description: [
				"The node type of the cluster.",
				"Require when I(command=create).",
			]
			choices: [
				"ds1.xlarge",
				"ds1.8xlarge",
				"ds2.xlarge",
				"ds2.8xlarge",
				"dc1.large",
				"dc2.large",
				"dc1.8xlarge",
				"dw1.xlarge",
				"dw1.8xlarge",
				"dw2.large",
				"dw2.8xlarge",
			]
			type: "str"
		}
		username: {
			description: [
				"Master database username.",
				"Used only when I(command=create).",
			]
			type: "str"
		}
		password: {
			description: [
				"Master database password.",
				"Used only when I(command=create).",
			]
			type: "str"
		}
		cluster_type: {
			description: [
				"The type of cluster.",
			]
			choices: ["multi-node", "single-node"]
			default: "single-node"
			type:    "str"
		}
		db_name: {
			description: [
				"Name of the database.",
			]
			type: "str"
		}
		availability_zone: {
			description: [
				"Availability zone in which to launch cluster.",
			]
			aliases: ["zone", "aws_zone"]
			type: "str"
		}
		number_of_nodes: {
			description: [
				"Number of nodes.",
				"Only used when I(cluster_type=multi-node).",
			]
			type: "int"
		}
		cluster_subnet_group_name: {
			description: [
				"Which subnet to place the cluster.",
			]
			aliases: ["subnet"]
			type: "str"
		}
		cluster_security_groups: {
			description: [
				"In which security group the cluster belongs.",
			]
			type:     "list"
			elements: "str"
			aliases: ["security_groups"]
		}
		vpc_security_group_ids: {
			description: [
				"VPC security group",
			]
			aliases: ["vpc_security_groups"]
			type:     "list"
			elements: "str"
		}
		skip_final_cluster_snapshot: {
			description: [
				"Skip a final snapshot before deleting the cluster.",
				"Used only when I(command=delete).",
			]
			aliases: ["skip_final_snapshot"]
			default:       false
			version_added: "2.4"
			type:          "bool"
		}
		final_cluster_snapshot_identifier: {
			description: [
				"Identifier of the final snapshot to be created before deleting the cluster.",
				"If this parameter is provided, I(skip_final_cluster_snapshot) must be C(false).",
				"Used only when I(command=delete).",
			]
			aliases: ["final_snapshot_id"]
			version_added: "2.4"
			type:          "str"
		}
		preferred_maintenance_window: {
			description: [
				"Maintenance window in format of C(ddd:hh24:mi-ddd:hh24:mi).  (Example: C(Mon:22:00-Mon:23:15))",
				"Times are specified in UTC.",
				"If not specified then a random 30 minute maintenance window is assigned.",
			]
			aliases: ["maintance_window", "maint_window"]
			type: "str"
		}
		cluster_parameter_group_name: {
			description: [
				"Name of the cluster parameter group.",
			]
			aliases: ["param_group_name"]
			type: "str"
		}
		automated_snapshot_retention_period: {
			description: [
				"The number of days that automated snapshots are retained.",
			]
			aliases: ["retention_period"]
			type: "int"
		}
		port: {
			description: [
				"Which port the cluster is listening on.",
			]
			type: "int"
		}
		cluster_version: {
			description: [
				"Which version the cluster should have.",
			]
			aliases: ["version"]
			choices: ["1.0"]
			type: "str"
		}
		allow_version_upgrade: {
			description: [
				"When I(allow_version_upgrade=true) the cluster may be automatically upgraded during the maintenance window.",
			]

			aliases: ["version_upgrade"]
			default: true
			type:    "bool"
		}
		publicly_accessible: {
			description: [
				"If the cluster is accessible publicly or not.",
			]
			default: false
			type:    "bool"
		}
		encrypted: {
			description: [
				"If the cluster is encrypted or not.",
			]
			default: false
			type:    "bool"
		}
		elastic_ip: {
			description: [
				"An Elastic IP to use for the cluster.",
			]
			type: "str"
		}
		new_cluster_identifier: {
			description: [
				"Only used when command=modify.",
			]
			aliases: ["new_identifier"]
			type: "str"
		}
		wait: {
			description: [
				"When I(command=create), I(command=modify) or I(command=restore) then wait for the database to enter the 'available' state.",
				"When I(command=delete) wait for the database to be terminated.",
			]
			type:    "bool"
			default: false
		}
		wait_timeout: {
			description: [
				"When I(wait=true) defines how long in seconds before giving up.",
			]
			default: 300
			type:    "int"
		}
		enhanced_vpc_routing: {
			description: [
				"Whether the cluster should have enhanced VPC routing enabled.",
			]
			default: false
			type:    "bool"
		}
	}
	requirements: ["boto3"]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
