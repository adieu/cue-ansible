package vultr

vultr_dns_domain_facts :: {
}

vultr_network :: {

	// The CIDR IPv4 network block to be used when attaching servers to this network. Required if I(state=present).

	cidr?: string

	// Name of the network.

	name: string

	// Region the network is deployed into. Required if I(state=present).

	region?: string

	// State of the network.

	state?: string
}

vultr_server :: {

	// The hostname to assign to this server.

	hostname?: string

	// Whether to enable IPv6 or not.

	ipv6_enabled?: bool

	// The operating system name or ID.
	// Required if the server does not yet exist and is not restoring from a snapshot.

	os?: string

	// Plan name or ID to use for the server.
	// Required if the server does not yet exist.

	plan?: string

	// Whether to enable private networking or not.

	private_network_enabled?: bool

	// State of the server.

	state?: string

	// The firewall group description or ID to assign this server to.

	firewall_group?: string

	// Force stop/start the server if required to apply changes
	// Otherwise a running server will not be changed.

	force?: bool

	// Name of the server.

	name: string

	// Whether to send an activation email when the server is ready or not.
	// Only considered on creation.

	notify_activate?: bool

	// Tag for the server.

	tag?: string

	// Region name or ID the server is deployed into.
	// Required if the server does not yet exist.

	region?: string

	// IP address of the floating IP to use as the main IP of this server.
	// Only considered on creation.

	reserved_ip_v4?: string

	// List of SSH key names or IDs passed to the server on creation.

	ssh_keys?: [..._]

	// Whether to enable automatic backups or not.

	auto_backup_enabled?: bool

	// Name or ID of the snapshot to restore the server from.

	snapshot?: string

	// Name or ID of the startup script to execute on boot.
	// Only considered while creating the server.

	startup_script?: string

	// User data to be passed to the server.

	user_data?: string
}

vultr_block_storage :: {

	// Region the block storage volume is deployed into.

	region: string

	// Size of the block storage volume in GB.

	size: string

	// State of the block storage volume.

	state?: string

	// Name of the block storage volume.

	name: string
}

vultr_block_storage_info :: {
}

vultr_plan_facts :: {
}

vultr_server_info :: {
}

vultr_user :: {

	// Email of the user.
	// Required if C(state=present).

	email?: string

	// Password will only be changed with enforcement.

	force?: bool

	// Name of the user

	name: string

	// Password of the user.
	// Only considered while creating a user or when C(force=yes).

	password?: string

	// State of the user.

	state?: string

	// List of ACLs this users should have, see U(https://www.vultr.com/api/#user_user_list).
	// Required if C(state=present).
	// One or more of the choices list, some depend on each other.

	acls?: [..._]

	// Whether the API is enabled or not.

	api_enabled?: bool
}

vultr_account_info :: {
}

vultr_network_info :: {
}

vultr_server_facts :: {
}

vultr_ssh_key_info :: {
}

vultr_account_facts :: {
}

vultr_os_info :: {
}

vultr_plan_info :: {
}

vultr_firewall_rule :: {

	// IP address version

	ip_version?: string

	// Protocol of the firewall rule.

	protocol?: string

	// Start port for the firewall rule.
	// Required if C(protocol) is tcp or udp and I(state=present).

	start_port?: string

	// State of the firewall rule.

	state?: string

	// Network in CIDR format
	// The CIDR format must match with the C(ip_version) value.
	// Required if C(state=present).
	// Defaulted to 0.0.0.0/0 or ::/0 depending on C(ip_version).

	cidr?: string

	// End port for the firewall rule.
	// Only considered if C(protocol) is tcp or udp and I(state=present).

	end_port?: string

	// Name of the firewall group.

	group: string
}

vultr_network_facts :: {
}

vultr_ssh_key_facts :: {
}

vultr_startup_script_facts :: {
}

vultr_startup_script_info :: {
}

vultr_firewall_group :: {

	// Name of the firewall group.

	name: string

	// State of the firewall group.

	state?: string
}

vultr_firewall_group_info :: {
}

vultr_firewall_group_facts :: {
}

vultr_region_facts :: {
}

vultr_dns_domain :: {

	// The domain name.

	name: string

	// The default server IP.
	// Use M(vultr_dns_record) to change it once the domain is created.
	// Required if C(state=present).

	server_ip?: string

	// State of the DNS domain.

	state?: string
}

vultr_dns_record :: {

	// The domain the record is related to.

	domain: string

	// Whether to use more than one record with similar C(name) including no name and C(record_type).
	// Only allowed for a few record types, e.g. C(record_type=A), C(record_type=NS) or C(record_type=MX).
	// C(data) will not be updated, instead it is used as a key to find existing records.

	multiple?: bool

	// The record name (subrecord).

	name?: string

	// Priority of the record.

	priority?: string

	// Type of the record.

	record_type?: string

	// State of the DNS record.

	state?: string

	// TTL of the record.

	ttl?: string

	// Data of the record.
	// Required if C(state=present) or C(multiple=yes).

	data?: string
}

vultr_block_storage_facts :: {
}

vultr_startup_script :: {

	// The script source code.
	// Required if I(state=present).

	script?: string

	// The script type, can not be changed once created.

	script_type?: string

	// State of the script.

	state?: string

	// The script name.

	name: string
}

vultr_region_info :: {
}

vultr_ssh_key :: {

	// SSH public key.
	// Required if C(state=present).

	ssh_key?: string

	// State of the ssh key.

	state?: string

	// Name of the ssh key.

	name: string
}

vultr_user_facts :: {
}

vultr_user_info :: {
}

vultr_dns_domain_info :: {
}

vultr_os_facts :: {
}
