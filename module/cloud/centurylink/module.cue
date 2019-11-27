package centurylink

clc_group :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_group: {

		// A description of the Server Group

		description?: string

		// Datacenter to create the group in. If location is not provided, the group gets created in the default datacenter associated with the account

		location?: string

		// The name of the Server Group

		name: string

		// The parent group of the server group. If parent is not provided, it creates the group at top level.

		parent?: string

		// Whether to create or delete the group

		state?: string

		// Whether to wait for the tasks to finish before returning.

		wait?: bool
	}
}

clc_server_snapshot :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_server_snapshot: {

		// The number of days to keep the server snapshot before it expires.

		expiration_days?: string

		// The list of CLC server Ids.

		server_ids: string

		// The state to insure that the provided resources are in.

		state?: string

		// Whether to wait for the provisioning tasks to finish before returning.

		wait?: bool
	}
}

clc_server :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_server: {

		// The description to set for the server.

		description?: string

		// A 1 to 6 character identifier to use for the server. This is required when state is 'present'

		name?: string

		// Secondary DNS used by the server.

		secondary_dns?: string

		// The password for the source server if a clone is specified.

		source_server_password?: string

		// Whether to wait for the provisioning tasks to finish before returning.

		wait?: bool

		// The list of additional disks for the server

		additional_disks?: string

		// Run in idempotent mode.  Will insure that this exact number of servers are running in the provided group, creating and deleting them to reach that count.  Requires count_group to be set.

		exact_count?: string

		// The Datacenter to create servers in.

		location?: string

		// The type of storage to attach to the server.

		storage_type?: string

		// The Server Group to create servers under.

		group?: string

		// Whether to create the server as 'Managed' or not.

		managed_os?: bool

		// The time to live for the server in seconds.  The server will be deleted when this time expires.

		ttl?: string

		// The account alias to provision the servers under.

		alias?: string

		// The anti-affinity policy to assign to the server. This is mutually exclusive with 'anti_affinity_policy_name'.

		anti_affinity_policy_id?: string

		// The anti-affinity policy to assign to the server. This is mutually exclusive with 'anti_affinity_policy_id'.

		anti_affinity_policy_name?: string

		// The list of custom fields to set on the server.

		custom_fields?: string

		// The protocol to use for the public ip if add_public_ip is set to True.

		public_ip_protocol?: string

		// The alert policy to assign to the server. This is mutually exclusive with 'alert_policy_name'.

		alert_policy_id?: string

		// Required when exact_count is specified.  The Server Group use to determine how many servers to deploy.

		count_group?: string

		// How many CPUs to provision on the server

		cpu?: string

		// Memory in GB.

		memory?: string

		// The template to use for server creation.  Will search for a template if a partial string is provided. This is required when state is 'present'

		template?: string

		// Required for started, stopped, and absent states. A list of server Ids to insure are started, stopped, or absent.

		server_ids?: string

		// The type of server to create.

		type?: string

		// The alert policy to assign to the server. This is mutually exclusive with 'alert_policy_id'.

		alert_policy_name?: string

		// The list of blue print packages to run on the server after its created.

		packages?: string

		// Password for the administrator / root user

		password?: string

		// Primary DNS used by the server.

		primary_dns?: string

		// Only required for bare metal servers. Specifies the OS to provision with the bare metal server.

		os_type?: string

		// A list of ports to allow on the firewall to the servers public ip, if add_public_ip is set to True.

		public_ip_ports?: string

		// Only required for bare metal servers. Specifies the identifier for the specific configuration type of bare metal server to deploy.

		configuration_id?: string

		// The autoscale policy to assign to the server.

		cpu_autoscale_policy_id?: string

		// The IP Address for the server. One is assigned if not provided.

		ip_address?: string

		// The network UUID on which to create servers.

		network_id?: string

		// Whether to add a public ip to the server

		add_public_ip?: bool

		// The number of servers to build (mutually exclusive with exact_count)

		count?: string

		// The state to insure that the provided resources are in.

		state?: string
	}
}

clc_aa_policy :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_aa_policy: {

		// Datacenter in which the policy lives/should live.

		location: string

		// The name of the Anti Affinity Policy.

		name: string

		// Whether to create or delete the policy.

		state?: string

		// Whether to wait for the tasks to finish before returning.

		wait?: bool
	}
}

clc_alert_policy :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_alert_policy: {

		// Whether to create or delete the policy.

		state?: string

		// The threshold that will trigger the alert when the metric equals or exceeds it. This is required for state 'present' This number represents a percentage and must be a value between 5.0 - 95.0 that is a multiple of 5.0

		threshold?: string

		// A list of recipient email ids to notify the alert. This is required for state 'present'

		alert_recipients?: string

		// The alias of your CLC Account

		alias: string

		// The length of time in minutes that the condition must exceed the threshold. This is required for state 'present'

		duration?: string

		// The alert policy id. This is mutually exclusive with name

		id?: string

		// The metric on which to measure the condition that will trigger the alert. This is required for state 'present'

		metric?: string

		// The name of the alert policy. This is mutually exclusive with id

		name?: string
	}
}

clc_blueprint_package :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_blueprint_package: {

		// The dictionary of arguments required to deploy the blue print.

		package_params?: string

		// A list of server Ids to deploy the blue print package.

		server_ids: string

		// Whether to install or uninstall the package. Currently it supports only "present" for install action.

		state?: string

		// Whether to wait for the tasks to finish before returning.

		wait?: bool

		// The package id of the blue print.

		package_id: string
	}
}

clc_firewall_policy :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_firewall_policy: {

		// The list of destination addresses for traffic on the terminating firewall. This is required when state is 'present'

		destination?: string

		// Whether the firewall policy is enabled or disabled

		enabled?: string

		// Target datacenter for the firewall policy

		location: string

		// The list of ports associated with the policy. TCP and UDP can take in single ports or port ranges.

		ports?: string

		// The list  of source addresses for traffic on the originating firewall. This is required when state is 'present'

		source?: string

		// Whether to wait for the provisioning tasks to finish before returning.

		wait?: bool

		// CLC alias for the destination account

		destination_account_alias?: string

		// Id of the firewall policy. This is required to update or delete an existing firewall policy

		firewall_policy_id?: string

		// CLC alias for the source account

		source_account_alias: string

		// Whether to create or delete the firewall policy

		state?: string
	}
}

clc_loadbalancer :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_loadbalancer: {

		// The alias of your CLC Account

		alias: string

		// The location of the datacenter where the load balancer resides in

		location: string

		// A list of nodes that needs to be added to the load balancer pool

		nodes?: string

		// Whether to create or delete the load balancer pool

		state?: string

		// A description for the loadbalancer

		description?: string

		// -The balancing method for the load balancer pool

		method?: string

		// The name of the loadbalancer

		name: string

		// The persistence method for the load balancer

		persistence?: string

		// Port to configure on the public-facing side of the load balancer pool

		port?: string

		// The status of the loadbalancer

		status?: string
	}
}

clc_modify_server :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_modify_server: {

		// The alert policy name to be associated to the server. This is mutually exclusive with 'alert_policy_id'

		alert_policy_name?: string

		// The anti affinity policy name to be set for a hyper scale server. This is mutually exclusive with 'anti_affinity_policy_id'

		anti_affinity_policy_name?: string

		// The state to insure that the provided resources are in.

		state?: string

		// A list of server Ids to modify.

		server_ids: string

		// Whether to wait for the provisioning tasks to finish before returning.

		wait?: bool

		// The alert policy id to be associated to the server. This is mutually exclusive with 'alert_policy_name'

		alert_policy_id?: string

		// The anti affinity policy id to be set for a hyper scale server. This is mutually exclusive with 'anti_affinity_policy_name'

		anti_affinity_policy_id?: string

		// How many CPUs to update on the server

		cpu?: string

		// Memory (in GB) to set to the server.

		memory?: string
	}
}

clc_publicip :: {
	notify?: string | [...string]
	vars?: {...}
	when?: string
	tags?: [...string]
	clc_publicip: {

		// The protocol that the public IP will listen for.

		protocol?: string

		// A list of servers to create public ips on.

		server_ids: string

		// Determine whether to create or delete public IPs. If present module will not create a second public ip if one already exists.

		state?: string

		// Whether to wait for the tasks to finish before returning.

		wait?: bool

		// A list of ports to expose. This is required when state is 'present'

		ports?: string
	}
}
