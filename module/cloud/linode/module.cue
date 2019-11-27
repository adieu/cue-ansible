package linode

linode :: {

	// datacenter to create an instance in (Linode Datacenter)

	datacenter?: string

	// root password to apply to a new server (auto generated if missing)

	password?: string

	// Integer value for what day of the week to store weekly backups.

	backupweeklyday?: string

	// Name to give the instance (alphanumeric, dashes, underscore).
	// To keep sanity on the Linode Web Console, name is prepended with C(LinodeID-).

	name: string

	// Add private IPv4 address when Linode is created.

	private_ip?: bool

	// SSH public key applied to root user

	ssh_pub_key?: string

	// swap size in MB

	swap?: string

	// Set status of bandwidth quota alerts as percentage of network transfer quota.

	alert_bwquota_enabled?: bool

	// Set percentage threshold for receiving CPU usage alerts. Each CPU core adds 100% to total.

	alert_cpu_threshold?: string

	// distribution to use for the instance (Linode Distribution)

	distribution?: string

	// payment term to use for the instance (payment term in months)

	payment_term?: string

	// how long before wait gives up, in seconds

	wait_timeout?: string

	// Set threshold in MB of bandwidth in alerts.

	alert_bwin_threshold?: string

	// Set threshold for average IO ops/sec over 2 hour period.

	alert_diskio_threshold?: string

	// Set threshold in MB of bandwidth out alerts.

	alert_bwout_threshold?: string

	// Set status of receiving CPU usage alerts.

	alert_cpu_enabled?: bool

	// Set status of receiving disk IO alerts.

	alert_diskio_enabled?: bool

	// Add the instance to a Display Group in Linode Manager.

	displaygroup?: string

	// Set status of Lassie watchdog.

	watchdog?: bool

	// List of dictionaries for creating additional disks that are added to the Linode configuration settings.
	// Dictionary takes Size, Label, Type. Size is in MB.

	additional_disks?: string

	// Set status of bandwidth in alerts.

	alert_bwin_enabled?: bool

	// kernel to use for the instance (Linode Kernel)

	kernel_id?: string

	// Indicate desired state of the resource

	state?: string

	// Linode API key

	api_key?: string

	// plan to use for the instance (Linode plan)

	plan?: string

	// Set status of bandwidth out alerts.

	alert_bwout_enabled?: bool

	// wait for the instance to be in state C(running) before returning

	wait?: bool

	// Set threshold in MB of bandwidth quota alerts.

	alert_bwquota_threshold?: string

	// Unique ID of a linode server. This value is read-only in the sense that if you specify it on creation of a Linode it will not be used. The Linode API generates these IDs and we can those generated value here to reference a Linode more specifically. This is useful for idempotence.

	linode_id?: string
}

linode_v4 :: {

	// A list of SSH public key parts to deploy for the root user.

	authorized_keys?: [..._]

	// The image of the instance. This is a required parameter only when creating Linode instances. See U(https://developers.linode.com/api/v4#tag/Images).

	image?: string

	// The region of the instance. This is a required parameter only when creating Linode instances. See U(https://developers.linode.com/api/v4#tag/Regions).

	region?: string

	// The password for the root user. If not specified, one will be generated. This generated password will be available in the task success JSON.

	root_pass?: string

	// The type of the instance. This is a required parameter only when creating Linode instances. See U(https://developers.linode.com/api/v4#tag/Linode-Types).

	type?: string

	// The Linode API v4 access token. It may also be specified by exposing the C(LINODE_ACCESS_TOKEN) environment variable. See U(https://developers.linode.com/api/v4#section/Access-and-Authentication).

	access_token: string

	// The group that the instance should be marked under. Please note, that group labelling is deprecated but still supported. The encouraged method for marking instances is to use tags.

	group?: string

	// The instance label. This label is used as the main determiner for idempotence for the module and is therefore mandatory.

	label: string

	// The desired instance state.

	state: string

	// The tags that the instance should be marked under. See U(https://developers.linode.com/api/v4#tag/Tags).

	tags?: [..._]
}
