package scaleway

scaleway_snapshot_info :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_snapshot_info: {

		region: string

		// Scaleway region to use (for example C(par1)).
	}
}

scaleway_user_data :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_user_data: {

		// Scaleway Compute instance ID of the server

		server_id: string

		// User defined data. Typically used with `cloud-init`.
		// Pass your cloud-init script here as a string

		user_data?: string

		// Scaleway compute zone

		region: string
	}
}

scaleway_volume :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_volume: {

		// Scaleway region to use (for example par1).

		region: string

		// Size of the volume in bytes.

		size?: string

		// Indicate desired state of the volume.

		state?: string

		// Type of the volume (for example 'l_ssd').

		volume_type?: string

		// Name used to identify the volume.

		name: string

		// ScaleWay organization ID to which volume belongs.

		organization?: string
	}
}

scaleway_compute :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_compute: {

		// Name of the instance

		name?: string

		// Manage public IP on a Scaleway server
		// Could be Scaleway IP address UUID
		// C(dynamic) Means that IP is destroyed at the same time the host is destroyed
		// C(absent) Means no public IP at all

		public_ip?: string

		// List of tags to apply to the instance (5 max)

		tags?: string

		// Time to wait before every attempt to check the state of the server

		wait_sleep_time?: string

		// Commercial name of the compute node

		commercial_type: string

		// Image identifier used to start the instance with

		image: string

		// Scaleway compute zone

		region: string

		// Security group unique identifier
		// If no value provided, the default security group or current security group will be used

		security_group?: string

		// Indicate desired state of the instance.

		state?: string

		// Wait for the instance to reach its desired state before returning.

		wait?: bool

		// Time to wait for the server to reach the expected state

		wait_timeout?: string

		// Enable public IPv6 connectivity on the instance

		enable_ipv6?: bool

		// Organization identifier

		organization: string
	}
}

scaleway_image_info :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_image_info: {

		region: string

		// Scaleway compute zone
	}
}

scaleway_ip_facts :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_ip_facts: {

		region: string

		// Scaleway region to use (for example par1).
	}
}

scaleway_security_group_rule :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_security_group_rule: {

		// Port related to the rule, null value for all the ports

		port: int

		// Network protocol to use

		protocol: string

		// Scaleway region to use (for example C(par1)).

		region: string

		// Security Group unique identifier

		security_group: string

		// Indicate desired state of the Security Group Rule.

		state?: string

		// Rule action

		action: string

		// Rule direction

		direction: string

		// IPV4 CIDR notation to apply to the rule

		ip_range?: string
	}
}

scaleway_server_info :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_server_info: {

		region: string

		// Scaleway region to use (for example C(par1)).
	}
}

scaleway_snapshot_facts :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_snapshot_facts: {

		region: string

		// Scaleway region to use (for example par1).
	}
}

scaleway_ip :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_ip: {

		// Indicate desired state of the IP.

		state?: string

		// id of the Scaleway IP (UUID)

		id?: string

		// Scaleway organization identifier

		organization: string

		// Scaleway region to use (for example par1).

		region: string

		// Reverse to assign to the IP

		reverse?: string

		// id of the server you want to attach an IP to.
		// To unattach an IP don't specify this option

		server?: string
	}
}

scaleway_organization_facts :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_organization_facts: {

		api_url?: string

		// Scaleway API URL
	}
}

scaleway_organization_info :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_organization_info: {

		api_url?: string

		// Scaleway API URL
	}
}

scaleway_security_group_info :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_security_group_info: {

		region: string

		// Scaleway region to use (for example C(par1)).
	}
}

scaleway_volume_facts :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_volume_facts: {

		region: string

		// Scaleway region to use (for example par1).
	}
}

scaleway_volume_info :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_volume_info: {

		region: string

		// Scaleway region to use (for example C(par1)).
	}
}

scaleway_image_facts :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_image_facts: {

		region: string

		// Scaleway compute zone
	}
}

scaleway_lb :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_lb: {

		// Name of the load-balancer

		name: string

		// Scaleway zone

		region: string

		// Indicate desired state of the instance.

		state?: string

		// Wait for the load-balancer to reach its desired state before returning.

		wait?: bool

		// Time to wait before every attempt to check the state of the load-balancer

		wait_sleep_time?: string

		// Description of the load-balancer

		description: string

		// Organization identifier

		organization_id: string

		// List of tags to apply to the load-balancer

		tags?: string

		// Time to wait for the load-balancer to reach the expected state

		wait_timeout?: string
	}
}

scaleway_security_group :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_security_group: {

		// Default policy for outcoming traffic.

		outbound_default_policy?: string

		// Indicate desired state of the Security Group.

		state?: string

		// Create a stateful security group which allows established connections in and out.

		stateful: bool

		// Default policy for incoming traffic.

		inbound_default_policy?: string

		// Name of the Security Group.

		name: string

		// Organization identifier.

		organization: string

		// Description of the Security Group.

		description?: string

		// Create security group to be the default one.

		organization_default?: bool

		// Scaleway region to use (for example C(par1)).

		region: string
	}
}

scaleway_sshkey :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_sshkey: {

		// Indicate desired state of the SSH key.

		state?: string

		// Scaleway API URL

		api_url?: string

		// The public SSH key as a string to add.

		ssh_pub_key: string
	}
}

scaleway_ip_info :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_ip_info: {

		region: string

		// Scaleway region to use (for example C(par1)).
	}
}

scaleway_security_group_facts :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_security_group_facts: {

		region: string

		// Scaleway region to use (for example par1).
	}
}

scaleway_server_facts :: {
	tags?: [...string]
	notify?: string | [...string]
	vars?: {...}
	when?: string
	scaleway_server_facts: {

		region: string

		// Scaleway region to use (for example par1).
	}
}
