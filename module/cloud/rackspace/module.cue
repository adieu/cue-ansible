package rackspace

rax_cbs_attachments :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_cbs_attachments: {

		// wait for the volume to be in 'in-use'/'available' state before returning

		wait?: bool

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// The device path to attach the volume to, e.g. /dev/xvde.
		// Before 2.4 this was a required field. Now it can be left to null to auto assign the device name.

		device?: string

		// Name or id of the server to attach/detach

		server: string

		// Indicate desired state of the resource

		state: string

		// Name or id of the volume to attach/detach

		volume: string
	}
}

rax_cdb :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_cdb: {

		// Volume size of the database 1-150GB

		volume?: string

		// wait for the instance to be in state 'running' before returning

		wait?: bool

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// type of instance (i.e. MySQL, MariaDB, Percona)

		cdb_type?: string

		// version of database (MySQL supports 5.1 and 5.6, MariaDB supports 10, Percona supports 5.6)

		cdb_version?: string

		// flavor to use for the instance 1 to 6 (i.e. 512MB to 16GB)

		flavor?: string

		// Name of the databases server instance

		name?: string

		// Indicate desired state of the resource

		state?: string
	}
}

rax_files_objects :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_files_objects: {

		// The destination of a "get" operation; i.e. a local directory, "/home/user/myfolder". Used to specify the destination of an operation on a remote object; i.e. a file name, "file1", or a comma-separated list of remote objects, "file1,file2,file17"

		dest?: string

		// A hash of items to set as metadata values on an uploaded file or folder

		meta?: string

		// Type of object to do work on
		// Metadata object or a file object

		type?: string

		// Optionally clear existing metadata when applying metadata to existing objects. Selecting this option is only appropriate when setting type=meta

		clear_meta?: bool

		// The container to use for file object operations.

		container: string

		// Source from which to upload files.  Used to specify a remote object as a source for an operation, i.e. a file name, "file1", or a comma-separated list of remote objects, "file1,file2,file17".  src and dest are mutually exclusive on remote-only object operations

		src?: string

		// Indicate desired state of the resource

		state?: string

		// Used to specify whether to maintain nested directory structure when downloading objects from Cloud Files.  Setting to false downloads the contents of a container to a single, flat directory

		structure?: bool

		// Used to set an expiration on a file or folder uploaded to Cloud Files. Requires an integer, specifying expiration in seconds

		expires?: string

		// The method of operation to be performed.  For example, put to upload files to Cloud Files, get to download files from Cloud Files or delete to delete remote objects in Cloud Files

		method?: string
	}
}

rax_network :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_network: {

		// cidr of the network being created

		cidr?: string

		// Label (name) to give the network

		label?: string

		// Indicate desired state of the resource

		state?: string
	}
}

rax_scaling_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_scaling_policy: {

		// Name to give the policy

		name: string

		// Indicate desired state of the resource

		state?: string

		// The change, either as a number of servers or as a percentage, to make in the scaling group. If this is a percentage, you must set I(is_percent) to C(true) also.

		change?: string

		// The desired server capacity of the scaling the group; that is, how many servers should be in the scaling group.

		desired_capacity?: string

		// Whether the value in I(change) is a percent value

		is_percent?: bool

		// The type of policy that will be executed for the current release.

		policy_type: string

		// Name of the scaling group that this policy will be added to

		scaling_group: string

		// The UTC time when this policy will be executed. The time must be formatted according to C(yyyy-MM-dd'T'HH:mm:ss.SSS) such as C(2013-05-19T08:07:08Z)

		at?: string

		// The period of time, in seconds, that must pass before any scaling can occur after the previous scaling. Must be an integer between 0 and 86400 (24 hrs).

		cooldown?: string

		// The time when the policy will be executed, as a cron entry. For example, if this is parameter is set to C(1 0 * * *)

		cron?: string
	}
}

rax_cbs :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_cbs: {

		// Description to give the volume being created

		description?: string

		// Size of the volume to create in Gigabytes

		size: string

		// Indicate desired state of the resource

		state: string

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// image to use for bootable volumes. Can be an C(id), C(human_id) or C(name). This option requires C(pyrax>=1.9.3)

		image?: string

		// A hash of metadata to associate with the volume

		meta?: string

		// Name to give the volume being created

		name: string

		// The id of the snapshot to create the volume from

		snapshot_id?: string

		// Type of the volume being created

		volume_type: string

		// wait for the volume to be in state 'available' before returning

		wait?: bool
	}
}

rax_cdb_database :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_cdb_database: {

		// Name to give to the database

		name?: string

		// Indicate desired state of the resource

		state?: string

		// The databases server UUID

		cdb_id?: string

		// Set of symbols and encodings

		character_set?: string

		// Set of rules for comparing characters in a character set

		collate?: string
	}
}

rax_keypair :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_keypair: {

		// Name of keypair

		name: string

		// Public Key string to upload. Can be a file path or string

		public_key?: string

		// Indicate desired state of the resource

		state?: string
	}
}

rax_queue :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_queue: {

		// Indicate desired state of the resource

		state?: string

		// Name to give the queue

		name?: string
	}
}

rax :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax: {

		// Whether or not to increment a single number with the name of the created servers. Only applicable when used with the I(group) attribute or meta key.

		auto_increment?: bool

		// Whether or not to boot the instance from a Cloud Block Storage volume. If C(yes) and I(image) is specified a new volume will be created at boot time. I(boot_volume_size) is required with I(image) to create a new volume at boot time.

		boot_from_volume?: bool

		// host group to assign to server, is also used for idempotent operations to ensure a specific number of instances

		group?: string

		// list of instance ids, currently only used when state='absent' to remove instances

		instance_ids?: string

		// A hash of metadata to associate with the instance

		meta?: string

		// Name to give the instance

		name?: string

		// Size of the volume to create in Gigabytes. This is only required with I(image) and I(boot_from_volume).

		boot_volume_size?: string

		// Whether the I(boot_volume) or newly created volume from I(image) will be terminated when the server is terminated

		boot_volume_terminate?: bool

		// A hash of key/value pairs to be used when creating the cloudservers client. This is considered an advanced option, use it wisely and with caution.

		extra_client_args?: string

		// A hash of key/value pairs to be used when creating a new server. This is considered an advanced option, use it wisely and with caution.

		extra_create_args?: string

		// flavor to use for the instance

		flavor?: string

		// Indicate desired state of the resource

		state?: string

		// key pair to use on the instance

		key_name?: string

		// wait for the instance to be in state 'running' before returning

		wait?: bool

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// Cloud Block Storage ID or Name to use as the boot volume of the instance

		boot_volume?: string

		// Attach read-only configuration drive to server as label config-2

		config_drive?: bool

		// number of instances to launch

		count?: string

		// number count to start at

		count_offset?: string

		// Explicitly ensure an exact count of instances, used with state=active/present. If specified as C(yes) and I(count) is less than the servers matched, servers will be deleted to match the count. If the number of matched servers is fewer than specified in I(count) additional servers will be added.

		exact_count?: bool

		// Disk partitioning strategy

		disk_config?: string

		// Files to insert into the instance. remotefilename:localcontent

		files?: string

		// image to use for the instance. Can be an C(id), C(human_id) or C(name). With I(boot_from_volume), a Cloud Block Storage volume will be created with this image

		image?: string

		// The network to attach to the instances. If specified, you must include ALL networks including the public and private interfaces. Can be C(id) or C(label).

		networks?: string

		// Data to be uploaded to the servers config drive. This option implies I(config_drive). Can be a file path or a string

		user_data?: string
	}
}

rax_clb_ssl :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_clb_ssl: {

		// Wait for the balancer to be in state "running" before turning.

		wait?: bool

		// If set to "false", temporarily disable SSL termination without discarding
		// existing credentials.

		enabled?: bool

		// One or more intermediate certificate authorities as a string in PEM
		// format, concatenated into a single string.

		intermediate_certificate?: string

		// The private SSL key as a string in PEM format.

		private_key?: string

		// The port to listen for secure traffic.

		secure_port?: string

		// If set to "present", SSL termination will be added to this load balancer.
		// If "absent", SSL termination will be removed instead.

		state?: string

		// How long before "wait" gives up, in seconds.

		wait_timeout?: string

		// The public SSL certificates as a string in PEM format.

		certificate?: string

		// If "true", the load balancer will redirect HTTP traffic to HTTPS.
		// Requires "secure_traffic_only" to be true. Incurs an implicit wait if SSL
		// termination is also applied or removed.

		https_redirect?: bool

		// Name or ID of the load balancer on which to manage SSL termination.

		loadbalancer: string

		// If "true", the load balancer will *only* accept secure traffic.

		secure_traffic_only?: bool
	}
}

rax_dns :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_dns: {

		// Brief description of the domain. Maximum length of 160 characters

		comment?: string

		// Email address of the domain administrator

		email?: string

		// Domain name to create

		name?: string

		// Indicate desired state of the resource

		state?: string

		// Time to live of domain in seconds

		ttl?: string
	}
}

rax_dns_record :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_dns_record: {

		// Domain name to create the record in. This is an invalid option when type=PTR

		domain?: string

		// Load Balancer ID to create a PTR record for. Only used with type=PTR

		loadbalancer?: string

		// Add new records if data doesn't match, instead of updating existing record with matching name. If there are already multiple records with matching name and overwrite=true, this module will fail.

		overwrite?: bool

		// DNS record type

		type: string

		// Brief description of the domain. Maximum length of 160 characters

		comment?: string

		// FQDN record name to create

		name: string

		// Required for MX and SRV records, but forbidden for other record types. If specified, must be an integer from 0 to 65535.

		priority?: string

		// Server ID to create a PTR record for. Only used with type=PTR

		server?: string

		// Indicate desired state of the resource

		state?: string

		// Time to live of record in seconds

		ttl?: string

		// IP address for A/AAAA record, FQDN for CNAME/MX/NS, or text data for SRV/TXT

		data: string
	}
}

rax_facts :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_facts: {

		// Server name to retrieve facts for

		name?: string

		// Server IP address to retrieve facts for, will match any IP assigned to the server

		address?: string

		// Server ID to retrieve facts for

		id?: string
	}
}

rax_files :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_files: {

		// Sets an object to be presented as the HTTP error page when accessed by the CDN URL

		web_error?: string

		// Optionally clear existing metadata when applying metadata to existing containers. Selecting this option is only appropriate when setting type=meta

		clear_meta?: bool

		// The container to use for container or metadata operations.

		container: string

		// A hash of items to set as metadata values on a container

		meta?: string

		// Used to set a container as private, removing it from the CDN.  B(Warning!) Private containers, if previously made public, can have live objects available until the TTL on cached objects expires

		private?: bool

		// Used to set a container as public, available via the Cloud Files CDN

		public?: bool

		// In seconds, set a container-wide TTL for all objects cached on CDN edge nodes. Setting a TTL is only appropriate for containers that are public

		ttl?: string

		// Type of object to do work on, i.e. metadata object or a container object

		type?: string

		// Sets an object to be presented as the HTTP index page when accessed by the CDN URL

		web_index?: string

		// Region to create an instance in

		region?: string

		// Indicate desired state of the resource

		state?: string
	}
}

rax_mon_notification :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_mon_notification: {

		// Ensure that the notification with this C(label) exists or does not exist.

		state?: string

		// Dictionary of key-value pairs used to initialize the notification. Required keys and meanings vary with notification type. See http://docs.rackspace.com/cm/api/v1.0/cm-devguide/content/ service-notification-types-crud.html for details.

		details: string

		// Defines a friendly name for this notification. String between 1 and 255 characters long.

		label: string

		// A supported notification type.

		notification_type: string
	}
}

rax_mon_notification_plan :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_mon_notification_plan: {

		// Notification list to use when the alarm state is CRITICAL. Must be an array of valid rax_mon_notification ids.

		critical_state?: string

		// Defines a friendly name for this notification plan. String between 1 and 255 characters long.

		label: string

		// Notification list to use when the alarm state is OK. Must be an array of valid rax_mon_notification ids.

		ok_state?: string

		// Ensure that the notification plan with this C(label) exists or does not exist.

		state?: string

		// Notification list to use when the alarm state is WARNING. Must be an array of valid rax_mon_notification ids.

		warning_state?: string
	}
}

rax_cdb_user :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_cdb_user: {

		// Name of the database user

		db_username?: string

		// Specifies the host from which a user is allowed to connect to the database. Possible values are a string containing an IPv4 address or "%" to allow connecting from any host

		host?: string

		// Indicate desired state of the resource

		state?: string

		// The databases server UUID

		cdb_id?: string

		// Name of the databases that the user can access

		databases?: string

		// Database user password

		db_password?: string
	}
}

rax_clb_nodes :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_clb_nodes: {

		// Load balancer id

		load_balancer_id: string

		// Port number of the load balanced service on the node

		port?: string

		// Type of node

		type?: string

		// Weight of node

		weight?: string

		// IP address or domain name of the node

		address?: string

		// Condition for the node, which determines its role within the load balancer

		condition?: string

		// Node id

		node_id?: string

		// Indicate desired state of the node

		state?: string

		// Wait for the load balancer to become active before returning

		wait?: bool

		// How long to wait before giving up and returning an error

		wait_timeout?: string
	}
}

rax_identity :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_identity: {

		state?: string

		// Indicate desired state of the resource
	}
}

rax_meta :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_meta: {

		// Server IP address to modify metadata for, will match any IP assigned to the server

		address?: string

		// Server ID to modify metadata for

		id?: string

		// A hash of metadata to associate with the instance

		meta?: string

		// Server name to modify metadata for

		name?: string
	}
}

rax_mon_alarm :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_mon_alarm: {

		// ID of the entity this alarm is attached to. May be acquired by registering the value of a rax_mon_entity task.

		entity_id: string

		// Friendly name for this alarm, used to achieve idempotence. Must be a String between 1 and 255 characters long.

		label: string

		// Arbitrary key/value pairs to accompany the alarm. Must be a hash of String keys and values between 1 and 255 characters long.

		metadata?: string

		// ID of the notification plan to trigger if this alarm fires. May be acquired by registering the value of a rax_mon_notification_plan task.

		notification_plan_id: string

		// Ensure that the alarm with this C(label) exists or does not exist.

		state?: string

		// ID of the check that should be alerted on. May be acquired by registering the value of a rax_mon_check task.

		check_id: string

		// Alarm DSL that describes alerting conditions and their output states. Must be between 1 and 16384 characters long. See http://docs.rackspace.com/cm/api/v1.0/cm-devguide/content/alerts-language.html for a reference on the alerting language.

		criteria?: string

		// If yes, create this alarm, but leave it in an inactive state. Defaults to no.

		disabled?: bool
	}
}

rax_mon_check :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_mon_check: {

		// If "yes", ensure the check is created, but don't actually use it yet.

		disabled?: bool

		// ID of the rax_mon_entity to target with this check.

		entity_id: string

		// Comma-separated list of the names of the monitoring zones the check should run from. Available monitoring zones include mzdfw, mzhkg, mziad, mzlon, mzord and mzsyd. Required for remote.* checks; prohibited for agent.* checks.

		monitoring_zones_poll?: string

		// Ensure that a check with this C(label) exists or does not exist.

		state?: string

		// One of `target_alias` and `target_hostname` is required for remote.* checks, but prohibited for agent.* checks. Use the corresponding key in the entity's `ip_addresses` hash to resolve an IP address to target.

		target_alias?: string

		// The number of seconds this check will wait when attempting to collect results. Must be less than the period.

		timeout?: string

		// The type of check to create. C(remote.) checks may be created on any rax_mon_entity. C(agent.) checks may only be created on rax_mon_entities that have a non-null C(agent_id).

		check_type: string

		// Additional details specific to the check type. Must be a hash of strings between 1 and 255 characters long, or an array or object containing 0 to 256 items.

		details?: string

		// Defines a label for this check, between 1 and 64 characters long.

		label: string

		// Hash of arbitrary key-value pairs to accompany this check if it fires. Keys and values must be strings between 1 and 255 characters long.

		metadata?: string

		// The number of seconds between each time the check is performed. Must be greater than the minimum period set on your account.

		period?: string

		// One of `target_hostname` and `target_alias` is required for remote.* checks, but prohibited for agent.* checks. The hostname this check should target. Must be a valid IPv4, IPv6, or FQDN.

		target_hostname?: string
	}
}

rax_mon_entity :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_mon_entity: {

		// Rackspace monitoring agent on the target device to which this entity is bound. Necessary to collect C(agent.) rax_mon_checks against this entity.

		agent_id?: string

		// Defines a name for this entity. Must be a non-empty string between 1 and 255 characters long.

		label: string

		// Hash of arbitrary C(name), C(value) pairs that are passed to associated rax_mon_alarms. Names and values must all be between 1 and 255 characters long.

		metadata?: string

		// Hash of IP addresses that may be referenced by name by rax_mon_checks added to this entity. Must be a dictionary of with keys that are names between 1 and 64 characters long, and values that are valid IPv4 or IPv6 addresses.

		named_ip_addresses?: string

		// Ensure that an entity with this C(name) exists or does not exist.

		state?: string
	}
}

rax_scaling_group :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_scaling_group: {

		// Name to give the scaling group

		name: string

		// The network to attach to the instances. If specified, you must include ALL networks including the public and private interfaces. Can be C(id) or C(label).

		networks?: string

		// wait for the scaling group to finish provisioning the minimum amount of servers

		wait?: bool

		// how long before wait gives up, in seconds

		wait_timeout?: string

		// flavor to use for the instance

		flavor: string

		// image to use for the instance. Can be an C(id), C(human_id) or C(name)

		image: string

		// The maximum number of entities that are allowed in the scaling group. Must be an integer between 0 and 1000.

		max_entities: string

		// Data to be uploaded to the servers config drive. This option implies I(config_drive). Can be a file path or a string

		user_data?: string

		// Attach read-only configuration drive to server as label config-2

		config_drive?: bool

		// Disk partitioning strategy

		disk_config?: string

		// key pair to use on the instance

		key_name?: string

		// The base name for servers created by Autoscale

		server_name: string

		// The period of time, in seconds, that must pass before any scaling can occur after the previous scaling. Must be an integer between 0 and 86400 (24 hrs).

		cooldown?: string

		// Files to insert into the instance. Hash of C(remotepath: localpath)

		files?: string

		// A hash of metadata to associate with the instance

		meta?: string

		// List of load balancer C(id) and C(port) hashes

		loadbalancers?: string

		// The minimum number of entities that are allowed in the scaling group. Must be an integer between 0 and 1000.

		min_entities: string

		// Indicate desired state of the resource

		state?: string
	}
}

rax_clb :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	rax_clb: {

		// algorithm for the balancer being created

		algorithm?: string

		// Port for the balancer being created

		port?: string

		// Indicate desired state of the resource

		state?: string

		// timeout for communication between the balancer and the node

		timeout?: string

		// wait for the balancer to be in state 'running' before returning

		wait?: bool

		// A hash of metadata to associate with the instance

		meta?: string

		// Name to give the load balancer

		name?: string

		// Protocol for the balancer being created

		protocol?: string

		// type of interface for the balancer being created

		type?: string

		// Virtual IP ID to use when creating the load balancer for purposes of sharing an IP with another load balancer of another protocol

		vip_id?: string

		// how long before wait gives up, in seconds

		wait_timeout?: string
	}
}
