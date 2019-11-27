package cloudscale

cloudscale_floating_ip :: {

	// Floating IP address to change.
	// Required to assign the IP to a different server or if I(state) is absent.

	ip?: string

	// IP protocol version of the floating IP.

	ip_version?: int

	// Only valid if I(ip_version) is 6.
	// Prefix length for the IPv6 network. Currently only a prefix of /56 can be requested. If no I(prefix_length) is present, a single address is created.

	prefix_length?: int

	// Reverse PTR entry for this address.
	// You cannot set a reverse PTR entry for IPv6 floating networks. Reverse PTR entries are only allowed for single addresses.

	reverse_ptr?: string

	// UUID of the server assigned to this floating IP.
	// Required unless I(state) is absent.

	server?: string

	// State of the floating IP.

	state?: string
}

cloudscale_server :: {

	// Enable IPv6 on the public network interface.

	use_ipv6?: bool

	// Attach a private network interface to the server.

	use_private_network?: bool

	// Flavor of the server.

	flavor?: string

	// Tags assosiated with the servers. Set this to C({}) to clear any tags.

	tags?: {...}

	// Name of the Server.
	// Either I(name) or I(uuid) are required.

	name?: string

	// List of UUID or names of server groups.
	// Mutually exclusive with I(anti_affinity_with).

	server_groups?: [..._]

	// List of SSH public keys.
	// Use the full content of your .pub file here.

	ssh_keys?: [..._]

	// State of the server.

	state?: string

	// Cloud-init configuration (cloud-config) data to use for the server.

	user_data?: string

	// UUID of another server to create an anti-affinity group with.
	// Mutually exclusive with I(server_groups).
	// Deprecated, removed in version 2.11.

	anti_affinity_with?: string

	// Size of the bulk storage volume in GB.
	// No bulk storage volume if not set.

	bulk_volume_size_gb?: int

	// Password for the server.

	password?: string

	// Attach a public network interface to the server.

	use_public_network?: bool
	api_timeout?:        string

	// Allow to stop the running server for updating if necessary.

	force?: bool

	// Size of the root volume in GB.

	volume_size_gb?: int

	// Image used to create the server.

	image?: string

	// UUID of the server.
	// Either I(name) or I(uuid) are required.

	uuid?: string
}

cloudscale_server_group :: {

	// Type of the server group.

	type?: string

	// UUID of the server group.
	// Either I(name) or I(uuid) is required. These options are mutually exclusive.

	uuid?: string

	// Name of the server group.
	// Either I(name) or I(uuid) is required. These options are mutually exclusive.

	name?: string

	// State of the server group.

	state?: string

	// Tags assosiated with the server groups. Set this to C({}) to clear any tags.

	tags?: {...}
}

cloudscale_volume :: {

	// Type of the volume. Cannot be changed after creating the volume. Defaults to C(ssd) on volume creation.

	type?: string

	// UUID of the volume. Either name or UUID must be present to change an existing volume.

	uuid?: string

	// Name of the volume. Either name or UUID must be present to change an existing volume.

	name?: string

	// UUIDs of the servers this volume is attached to. Set this to C([]) to detach the volume. Currently a volume can only be attached to a single server.

	server_uuids?: [..._]

	// Size of the volume in GB.

	size_gb?: int

	// State of the volume.

	state?: string

	// Tags associated with the volume. Set this to C({}) to clear any tags.

	tags?: {...}
}
