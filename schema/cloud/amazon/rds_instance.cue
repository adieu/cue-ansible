package ansible

module: rds_instance: {
	module:            "rds_instance"
	version_added:     "2.7"
	short_description: "Manage RDS instances"
	description: [
		"Create, modify, and delete RDS instances.",
	]

	requirements: [
		"botocore",
		"boto3 >= 1.5.0",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	author: [
		"Sloane Hertel (@s-hertel)",
	]

	options: {
		// General module options
		state: {
			description: [
				"Whether the snapshot should exist or not. I(rebooted) is not idempotent and will leave the DB instance in a running state and start it prior to rebooting if it was stopped. I(present) will leave the DB instance in the current running/stopped state, (running if creating the DB instance).",
				"I(state=running) and I(state=started) are synonyms, as are I(state=rebooted) and I(state=restarted). Note - rebooting the instance is not idempotent.",
			]

			choices: ["present", "absent", "terminated", "running", "started", "stopped", "rebooted", "restarted"]
			default: "present"
			type:    "str"
		}
		creation_source: {
			description: "Which source to use if restoring from a template (an existing instance, S3 bucket, or snapshot)."
			choices: ["snapshot", "s3", "instance"]
			type: "str"
		}
		force_update_password: {
			description: [
				"Set to True to update your cluster password with I(master_user_password). Since comparing passwords to determine if it needs to be updated is not possible this is set to False by default to allow idempotence.",
			]

			type:    "bool"
			default: false
		}
		purge_cloudwatch_logs_exports: {
			description: "Set to False to retain any enabled cloudwatch logs that aren't specified in the task and are associated with the instance."
			type:        "bool"
			default:     true
		}
		purge_tags: {
			description: "Set to False to retain any tags that aren't specified in task and are associated with the instance."
			type:        "bool"
			default:     true
		}
		read_replica: {
			description: [
				"Set to False to promote a read replica cluster or true to create one. When creating a read replica C(creation_source) should be set to 'instance' or not provided. C(source_db_instance_identifier) must be provided with this option.",
			]

			type: "bool"
		}
		wait: {
			description: [
				"Whether to wait for the cluster to be available, stopped, or deleted. At a later time a wait_timeout option may be added. Following each API call to create/modify/delete the instance a waiter is used with a 60 second delay 30 times until the instance reaches the expected state (available/stopped/deleted). The total task time may also be influenced by AWSRetry which helps stabilize if the instance is in an invalid state to operate on to begin with (such as if you try to stop it when it is in the process of rebooting). If setting this to False task retries and delays may make your playbook execution better handle timeouts for major modifications.",
			]

			type:    "bool"
			default: true
		}

		// Options that have a corresponding boto3 parameter
		allocated_storage: {
			description: [
				"The amount of storage (in gibibytes) to allocate for the DB instance.",
			]
			type: "int"
		}
		allow_major_version_upgrade: {
			description: [
				"Whether to allow major version upgrades.",
			]
			type: "bool"
		}
		apply_immediately: {
			description: [
				"A value that specifies whether modifying a cluster with I(new_db_instance_identifier) and I(master_user_password) should be applied as soon as possible, regardless of the I(preferred_maintenance_window) setting. If false, changes are applied during the next maintenance window.",
			]

			type:    "bool"
			default: false
		}
		auto_minor_version_upgrade: {
			description: [
				"Whether minor version upgrades are applied automatically to the DB instance during the maintenance window.",
			]
			type: "bool"
		}
		availability_zone: {
			description: [
				"A list of EC2 Availability Zones that instances in the DB cluster can be created in. May be used when creating a cluster or when restoring from S3 or a snapshot. Mutually exclusive with I(multi_az).",
			]

			aliases: [
				"az",
				"zone",
			]
			type: "str"
		}
		backup_retention_period: {
			description: [
				"The number of days for which automated backups are retained (must be greater or equal to 1). May be used when creating a new cluster, when restoring from S3, or when modifying a cluster.",
			]

			type: "int"
		}
		ca_certificate_identifier: {
			description: [
				"The identifier of the CA certificate for the DB instance.",
			]
			type: "str"
		}
		character_set_name: {
			description: [
				"The character set to associate with the DB cluster.",
			]
			type: "str"
		}
		copy_tags_to_snapshot: {
			description: [
				"Whether or not to copy all tags from the DB instance to snapshots of the instance. When initially creating a DB instance the RDS API defaults this to false if unspecified.",
			]

			type: "bool"
		}
		db_cluster_identifier: {
			description: [
				"The DB cluster (lowercase) identifier to add the aurora DB instance to. The identifier must contain from 1 to 63 letters, numbers, or hyphens and the first character must be a letter and may not end in a hyphen or contain consecutive hyphens.",
			]

			aliases: [
				"cluster_id",
			]
			type: "str"
		}
		db_instance_class: {
			description: [
				"The compute and memory capacity of the DB instance, for example db.t2.micro.",
			]
			aliases: [
				"class",
				"instance_type",
			]
			type: "str"
		}
		db_instance_identifier: {
			description: [
				"The DB instance (lowercase) identifier. The identifier must contain from 1 to 63 letters, numbers, or hyphens and the first character must be a letter and may not end in a hyphen or contain consecutive hyphens.",
			]

			aliases: [
				"instance_id",
				"id",
			]
			required: true
			type:     "str"
		}
		db_name: {
			description: [
				"The name for your database. If a name is not provided Amazon RDS will not create a database.",
			]
			type: "str"
		}
		db_parameter_group_name: {
			description: [
				"The name of the DB parameter group to associate with this DB instance. When creating the DB instance if this argument is omitted the default DBParameterGroup for the specified engine is used.",
			]

			type: "str"
		}
		db_security_groups: {
			description: [
				"(EC2-Classic platform) A list of DB security groups to associate with this DB instance.",
			]
			type: "list"
		}
		db_snapshot_identifier: {
			description: [
				"The identifier for the DB snapshot to restore from if using I(creation_source=snapshot).",
			]
			type: "str"
		}
		db_subnet_group_name: {
			description: [
				"The DB subnet group name to use for the DB instance.",
			]
			aliases: [
				"subnet_group",
			]
			type: "str"
		}
		domain: {
			description: [
				"The Active Directory Domain to restore the instance in.",
			]
			type: "str"
		}
		domain_iam_role_name: {
			description: [
				"The name of the IAM role to be used when making API calls to the Directory Service.",
			]
			type: "str"
		}
		enable_cloudwatch_logs_exports: {
			description: [
				"A list of log types that need to be enabled for exporting to CloudWatch Logs.",
			]
			aliases: [
				"cloudwatch_log_exports",
			]
			type: "list"
		}
		enable_iam_database_authentication: {
			description: [
				"Enable mapping of AWS Identity and Access Management (IAM) accounts to database accounts. If this option is omitted when creating the cluster, Amazon RDS sets this to False.",
			]

			type: "bool"
		}
		enable_performance_insights: {
			description: [
				"Whether to enable Performance Insights for the DB instance.",
			]
			type: "bool"
		}
		engine: {
			description: [
				"The name of the database engine to be used for this DB instance. This is required to create an instance. Valid choices are aurora | aurora-mysql | aurora-postgresql | mariadb | mysql | oracle-ee | oracle-se | oracle-se1 | oracle-se2 | postgres | sqlserver-ee | sqlserver-ex | sqlserver-se | sqlserver-web",
			]

			type: "str"
		}
		engine_version: {
			description: [
				"The version number of the database engine to use. For Aurora MySQL that could be 5.6.10a , 5.7.12. Aurora PostgreSQL example, 9.6.3",
			]

			type: "str"
		}
		final_db_snapshot_identifier: {
			description: [
				"The DB instance snapshot identifier of the new DB instance snapshot created when I(skip_final_snapshot) is false.",
			]
			aliases: [
				"final_snapshot_identifier",
			]
			type: "str"
		}
		force_failover: {
			description: [
				"Set to true to conduct the reboot through a MultiAZ failover.",
			]
			type: "bool"
		}
		iops: {
			description: [
				"The Provisioned IOPS (I/O operations per second) value. Is only set when using I(storage_type) is set to io1.",
			]
			type: "int"
		}
		kms_key_id: {
			description: [
				"The ARN of the AWS KMS key identifier for an encrypted DB instance. If you are creating a DB instance with the same AWS account that owns the KMS encryption key used to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the KM encryption key.",
				"If I(storage_encrypted) is true and and this option is not provided, the default encryption key is used.",
			]
			type: "str"
		}
		license_model: {
			description: [
				"The license model for the DB instance.",
				"Several options are license-included, bring-your-own-license, and general-public-license.",
				"This option can also be omitted to default to an accepted value.",
			]
			type: "str"
		}
		master_user_password: {
			description: [
				"An 8-41 character password for the master database user. The password can contain any printable ASCII character except \"/\", \"\"\", or \"@\". To modify the password use I(force_password_update). Use I(apply immediately) to change the password immediately, otherwise it is updated during the next maintenance window.",
			]

			aliases: [
				"password",
			]
			type: "str"
		}
		master_username: {
			description: [
				"The name of the master user for the DB cluster. Must be 1-16 letters or numbers and begin with a letter.",
			]
			aliases: [
				"username",
			]
			type: "str"
		}
		max_allocated_storage: {
			description: [
				"The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.",
			]
			type:          "int"
			version_added: "2.9"
		}
		monitoring_interval: {
			description: [
				"The interval, in seconds, when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting metrics, specify 0. Amazon RDS defaults this to 0 if omitted when initially creating a DB instance.",
			]

			type: "int"
		}
		monitoring_role_arn: {
			description: [
				"The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs.",
			]
			type: "str"
		}
		multi_az: {
			description: [
				"Specifies if the DB instance is a Multi-AZ deployment. Mutually exclusive with I(availability_zone).",
			]
			type: "bool"
		}
		new_db_instance_identifier: {
			description: [
				"The new DB cluster (lowercase) identifier for the DB cluster when renaming a DB instance. The identifier must contain from 1 to 63 letters, numbers, or hyphens and the first character must be a letter and may not end in a hyphen or contain consecutive hyphens. Use I(apply_immediately) to rename immediately, otherwise it is updated during the next maintenance window.",
			]

			aliases: [
				"new_instance_id",
				"new_id",
			]
			type: "str"
		}
		option_group_name: {
			description: [
				"The option group to associate with the DB instance.",
			]
			type: "str"
		}
		performance_insights_kms_key_id: {
			description: [
				"The AWS KMS key identifier (ARN, name, or alias) for encryption of Performance Insights data.",
			]
			type: "str"
		}
		performance_insights_retention_period: {
			description: [
				"The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731.",
			]
			type: "int"
		}
		port: {
			description: [
				"The port number on which the instances accept connections.",
			]
			type: "int"
		}
		preferred_backup_window: {
			description: [
				"The daily time range (in UTC) of at least 30 minutes, during which automated backups are created if automated backups are enabled using I(backup_retention_period). The option must be in the format of \"hh24:mi-hh24:mi\" and not conflict with I(preferred_maintenance_window).",
			]

			aliases: [
				"backup_window",
			]
			type: "str"
		}
		preferred_maintenance_window: {
			description: [
				"The weekly time range (in UTC) of at least 30 minutes, during which system maintenance can occur. The option must be in the format \"ddd:hh24:mi-ddd:hh24:mi\" where ddd is one of Mon, Tue, Wed, Thu, Fri, Sat, Sun.",
			]

			aliases: [
				"maintenance_window",
			]
			type: "str"
		}
		processor_features: {
			description: [
				"A dictionary of Name, Value pairs to indicate the number of CPU cores and the number of threads per core for the DB instance class of the DB instance. Names are threadsPerCore and coreCount. Set this option to an empty dictionary to use the default processor features.",
			]

			suboptions: {
				threadsPerCore: description: "The number of threads per core"
				coreCount: description: "The number of CPU cores"
			}
			type: "dict"
		}
		promotion_tier: {
			description: [
				"An integer that specifies the order in which an Aurora Replica is promoted to the primary instance after a failure of the existing primary instance.",
			]

			type: "str"
		}
		publicly_accessible: {
			description: [
				"Specifies the accessibility options for the DB instance. A value of true specifies an Internet-facing instance with a publicly resolvable DNS name, which resolves to a public IP address. A value of false specifies an internal instance with a DNS name that resolves to a private IP address.",
			]

			type: "bool"
		}
		restore_time: {
			description: [
				"If using I(creation_source=instance) this indicates the UTC date and time to restore from the source instance. For example, \"2009-09-07T23:45:00Z\". May alternatively set C(use_latest_restore_time) to True.",
			]

			type: "str"
		}
		s3_bucket_name: {
			description: [
				"The name of the Amazon S3 bucket that contains the data used to create the Amazon DB instance.",
			]
			type: "str"
		}
		s3_ingestion_role_arn: {
			description: [
				"The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes Amazon RDS to access the Amazon S3 bucket on your behalf.",
			]

			type: "str"
		}
		s3_prefix: {
			description: [
				"The prefix for all of the file names that contain the data used to create the Amazon DB instance. If you do not specify a SourceS3Prefix value, then the Amazon DB instance is created by using all of the files in the Amazon S3 bucket.",
			]

			type: "str"
		}
		skip_final_snapshot: {
			description: [
				"Whether a final DB cluster snapshot is created before the DB cluster is deleted. If this is false I(final_db_snapshot_identifier) must be provided.",
			]

			type:    "bool"
			default: false
		}
		snapshot_identifier: {
			description: [
				"The ARN of the DB snapshot to restore from when using I(creation_source=snapshot).",
			]
			type: "str"
		}
		source_db_instance_identifier: {
			description: [
				"The identifier or ARN of the source DB instance from which to restore when creating a read replica or spinning up a point-in-time DB instance using I(creation_source=instance). If the source DB is not in the same region this should be an ARN.",
			]

			type: "str"
		}
		source_engine: {
			description: [
				"The identifier for the database engine that was backed up to create the files stored in the Amazon S3 bucket.",
			]
			choices: [
				"mysql",
			]
			type: "str"
		}
		source_engine_version: {
			description: [
				"The version of the database that the backup files were created from.",
			]
			type: "str"
		}
		source_region: {
			description: [
				"The region of the DB instance from which the replica is created.",
			]
			type: "str"
		}
		storage_encrypted: {
			description: [
				"Whether the DB instance is encrypted.",
			]
			type: "bool"
		}
		storage_type: {
			description: [
				"The storage type to be associated with the DB instance. I(storage_type) does not apply to Aurora DB instances.",
			]
			choices: [
				"standard",
				"gp2",
				"io1",
			]
			type: "str"
		}
		tags: {
			description: [
				"A dictionary of key value pairs to assign the DB cluster.",
			]
			type: "dict"
		}
		tde_credential_arn: {
			description: [
				"The ARN from the key store with which to associate the instance for Transparent Data Encryption. This is supported by Oracle or SQL Server DB instances and may be used in conjunction with C(storage_encrypted) though it might slightly affect the performance of your database.",
			]

			aliases: [
				"transparent_data_encryption_arn",
			]
			type: "str"
		}
		tde_credential_password: {
			description: [
				"The password for the given ARN from the key store in order to access the device.",
			]
			aliases: [
				"transparent_data_encryption_password",
			]
			type: "str"
		}
		timezone: {
			description: [
				"The time zone of the DB instance.",
			]
			type: "str"
		}
		use_latest_restorable_time: {
			description: [
				"Whether to restore the DB instance to the latest restorable backup time. Only one of I(use_latest_restorable_time) and I(restore_to_time) may be provided.",
			]

			type: "bool"
			aliases: [
				"restore_from_latest",
			]
		}
		vpc_security_group_ids: {
			description: [
				"A list of EC2 VPC security groups to associate with the DB cluster.",
			]
			type: "list"
		}
	}
}
