package ansible

module: rds: {
	module:            "rds"
	version_added:     "1.3"
	short_description: "create, delete, or modify Amazon rds instances, rds snapshots, and related facts"
	description: [
		"Creates, deletes, or modifies rds resources.",
		"When creating an instance it can be either a new instance or a read-only replica of an existing instance.",
		"This module has a dependency on python-boto >= 2.5 and will soon be deprecated.",
		"The 'promote' command requires boto >= 2.18.0. Certain features such as tags rely on boto.rds2 (boto >= 2.26.0).",
		"Please use boto3 based M(rds_instance) instead.",
	]
	options: {
		command: {
			description: [
				"Specifies the action to take. The 'reboot' option is available starting at version 2.0.",
			]
			required: true
			choices: ["create", "replicate", "delete", "facts", "modify", "promote", "snapshot", "reboot", "restore"]
			type: "str"
		}
		instance_name: {
			description: [
				"Database instance identifier.",
				"Required except when using I(command=facts) or I(command=delete) on just a snapshot.",
			]
			type: "str"
		}
		source_instance: {
			description: [
				"Name of the database to replicate.",
				"Used only when I(command=replicate).",
			]
			type: "str"
		}
		db_engine: {
			description: [
				"The type of database.",
				"Used only when I(command=create).",
				"mariadb was added in version 2.2.",
			]
			choices: [
				"mariadb",
				"MySQL",
				"oracle-se1",
				"oracle-se2",
				"oracle-se",
				"oracle-ee",
				"sqlserver-ee",
				"sqlserver-se",
				"sqlserver-ex",
				"sqlserver-web",
				"postgres",
				"aurora",
			]
			type: "str"
		}
		size: {
			description: [
				"Size in gigabytes of the initial storage for the DB instance.",
				"Used only when I(command=create) or I(command=modify).",
			]
			type: "str"
		}
		instance_type: {
			description: [
				"The instance type of the database.",
				"If not specified then the replica inherits the same instance type as the source instance.",
				"Required when I(command=create).",
				"Optional when I(command=replicate), I(command=modify) or I(command=restore).",
			]
			aliases: ["type"]
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
				"Password for the master database username.",
				"Used only when I(command=create) or I(command=modify).",
			]
			type: "str"
		}
		db_name: {
			description: [
				"Name of a database to create within the instance.",
				"If not specified then no database is created.",
				"Used only when I(command=create).",
			]
			type: "str"
		}
		engine_version: {
			description: [
				"Version number of the database engine to use.",
				"If not specified then the current Amazon RDS default engine version is used",
				"Used only when I(command=create).",
			]
			type: "str"
		}
		parameter_group: {
			description: [
				"Name of the DB parameter group to associate with this instance.",
				"If omitted then the RDS default DBParameterGroup will be used.",
				"Used only when I(command=create) or I(command=modify).",
			]
			type: "str"
		}
		license_model: {
			description: [
				"The license model for this DB instance.",
				"Used only when I(command=create) or I(command=restore).",
			]
			choices: ["license-included", "bring-your-own-license", "general-public-license", "postgresql-license"]
			type: "str"
		}
		multi_zone: {
			description: [
				"Specifies if this is a Multi-availability-zone deployment.",
				"Can not be used in conjunction with I(zone) parameter.",
				"Used only when I(command=create) or I(command=modify).",
			]
			type: "bool"
		}
		iops: {
			description: [
				"Specifies the number of IOPS for the instance.",
				"Used only when I(command=create) or I(command=modify).",
				"Must be an integer greater than 1000.",
			]
			type: "str"
		}
		security_groups: {
			description: [
				"Comma separated list of one or more security groups.",
				"Used only when I(command=create) or I(command=modify).",
			]
			type: "str"
		}
		vpc_security_groups: {
			description: [
				"Comma separated list of one or more vpc security group ids.",
				"Also requires I(subnet) to be specified.",
				"Used only when I(command=create) or I(command=modify).",
			]
			type:     "list"
			elements: "str"
		}
		port: {
			description: [
				"Port number that the DB instance uses for connections.",
				"Used only when I(command=create) or I(command=replicate).",
				"Defaults to the standard ports for each I(db_engine): C(3306) for MySQL and MariaDB, C(1521) for Oracle C(1433) for SQL Server, C(5432) for PostgreSQL.",
			]

			type: "int"
		}
		upgrade: {
			description: [
				"Indicates that minor version upgrades should be applied automatically.",
				"Used only when I(command=create) or I(command=modify) or I(command=restore) or I(command=replicate).",
			]
			type:    "bool"
			default: false
		}
		option_group: {
			description: [
				"The name of the option group to use.",
				"If not specified then the default option group is used.",
				"Used only when I(command=create).",
			]
			type: "str"
		}
		maint_window: {
			description: [
				"Maintenance window in format of C(ddd:hh24:mi-ddd:hh24:mi).  (Example: C(Mon:22:00-Mon:23:15))",
				"Times are specified in UTC.",
				"If not specified then a random maintenance window is assigned.",
				"Used only when I(command=create) or I(command=modify).",
			]
			type: "str"
		}
		backup_window: {
			description: [
				"Backup window in format of C(hh24:mi-hh24:mi). (Example: C(18:00-20:30))",
				"Times are specified in UTC.",
				"If not specified then a random backup window is assigned.",
				"Used only when command=create or command=modify.",
			]
			type: "str"
		}
		backup_retention: {
			description: [
				"Number of days backups are retained.",
				"Set to 0 to disable backups.",
				"Default is 1 day.",
				"Valid range: 0-35.",
				"Used only when I(command=create) or I(command=modify).",
			]
			type: "str"
		}
		zone: {
			description: [
				"availability zone in which to launch the instance.",
				"Used only when I(command=create), I(command=replicate) or I(command=restore).",
				"Can not be used in conjunction with I(multi_zone) parameter.",
			]
			aliases: ["aws_zone", "ec2_zone"]
			type: "str"
		}
		subnet: {
			description: [
				"VPC subnet group.",
				"If specified then a VPC instance is created.",
				"Used only when I(command=create).",
			]
			type: "str"
		}
		snapshot: {
			description: [
				"Name of snapshot to take.",
				"When I(command=delete), if no I(snapshot) name is provided then no snapshot is taken.",
				"When I(command=delete), if no I(instance_name) is provided the snapshot is deleted.",
				"Used with I(command=facts), I(command=delete) or I(command=snapshot).",
			]
			type: "str"
		}
		wait: {
			description: [
				"When I(command=create), replicate, modify or restore then wait for the database to enter the 'available' state.",
				"When I(command=delete), wait for the database to be terminated.",
			]
			type:    "bool"
			default: false
		}
		wait_timeout: {
			description: [
				"How long before wait gives up, in seconds.",
				"Used when I(wait=true).",
			]
			default: 300
			type:    "int"
		}
		apply_immediately: {
			description: [
				"When I(apply_immediately=trye), the modifications will be applied as soon as possible rather than waiting for the next preferred maintenance window.",
				"Used only when I(command=modify).",
			]
			type:    "bool"
			default: false
		}
		force_failover: {
			description: [
				"If enabled, the reboot is done using a MultiAZ failover.",
				"Used only when I(command=reboot).",
			]
			type:          "bool"
			default:       false
			version_added: "2.0"
		}
		new_instance_name: {
			description: [
				"Name to rename an instance to.",
				"Used only when I(command=modify).",
			]
			type:          "str"
			version_added: "1.5"
		}
		character_set_name: {
			description: [
				"Associate the DB instance with a specified character set.",
				"Used with I(command=create).",
			]
			version_added: "1.9"
			type:          "str"
		}
		publicly_accessible: {
			description: [
				"Explicitly set whether the resource should be publicly accessible or not.",
				"Used with I(command=create), I(command=replicate).",
				"Requires boto >= 2.26.0",
			]
			type:          "str"
			version_added: "1.9"
		}
		tags: {
			description: [
				"tags dict to apply to a resource.",
				"Used with I(command=create), I(command=replicate), I(command=restore).",
				"Requires boto >= 2.26.0",
			]
			type:          "dict"
			version_added: "1.9"
		}
	}
	requirements: [
		"python >= 2.6",
		"boto",
	]
	author: [
		"Bruce Pennypacker (@bpennypacker)",
		"Will Thames (@willthames)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
