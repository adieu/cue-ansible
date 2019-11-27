package scaleway

scaleway_organization_info :: {

	// Scaleway API URL

	api_url?: string
}

scaleway_security_group_facts :: {

	// Scaleway region to use (for example par1).

	region: string
}

scaleway_security_group_info :: {

	// Scaleway region to use (for example C(par1)).

	region: string
}

scaleway_volume_facts :: {

	// Scaleway region to use (for example par1).

	region: string
}

scaleway_compute :: {

	// Commercial name of the compute node

	commercial_type: string

	// Enable public IPv6 connectivity on the instance

	enable_ipv6?: bool

	// Image identifier used to start the instance with

	image: string

	// List of tags to apply to the instance (5 max)

	tags?: string

	// Wait for the instance to reach its desired state before returning.

	wait?: bool

	// Time to wait for the server to reach the expected state

	wait_timeout?: string

	// Time to wait before every attempt to check the state of the server

	wait_sleep_time?: string

	// Name of the instance

	name?: string

	// Organization identifier

	organization: string

	// Manage public IP on a Scaleway server
	// Could be Scaleway IP address UUID
	// C(dynamic) Means that IP is destroyed at the same time the host is destroyed
	// C(absent) Means no public IP at all

	public_ip?: string

	// Scaleway compute zone

	region: string

	// Security group unique identifier
	// If no value provided, the default security group or current security group will be used

	security_group?: string

	// Indicate desired state of the instance.

	state?: string
}

scaleway_image_info :: {

	// Scaleway compute zone

	region: string
}

scaleway_lb :: {

	// Description of the load-balancer

	description: string

	// Name of the load-balancer

	name: string

	// Scaleway zone

	region: string

	// Time to wait for the load-balancer to reach the expected state

	wait_timeout?: string

	// Organization identifier

	organization_id: string

	// Indicate desired state of the instance.

	state?: string

	// List of tags to apply to the load-balancer

	tags?: string

	// Wait for the load-balancer to reach its desired state before returning.

	wait?: bool

	// Time to wait before every attempt to check the state of the load-balancer

	wait_sleep_time?: string
}

scaleway_user_data :: {

	// Scaleway compute zone

	region: string

	// Scaleway Compute instance ID of the server

	server_id: string

	// User defined data. Typically used with `cloud-init`.
	// Pass your cloud-init script here as a string

	user_data?: string
}

scaleway_volume_info :: {

	// Scaleway region to use (for example C(par1)).

	region: string
}

scaleway_image_facts :: {

	// Scaleway compute zone

	region: string
}

scaleway_security_group_rule :: {

	// Indicate desired state of the Security Group Rule.

	state?: string

	// Rule action

	action: string

	// Rule direction

	direction: string

	// IPV4 CIDR notation to apply to the rule

	ip_range?: string

	// Port related to the rule, null value for all the ports

	port: int

	// Network protocol to use

	protocol: string

	// Scaleway region to use (for example C(par1)).

	region: string

	// Security Group unique identifier

	security_group: string
}

scaleway_server_facts :: {

	// Scaleway region to use (for example par1).

	region: string
}

scaleway_organization_facts :: {

	// Scaleway API URL

	api_url?: string
}

scaleway_snapshot_info :: {

	// Scaleway region to use (for example C(par1)).

	region: string
}

scaleway_ip :: {

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

	// Indicate desired state of the IP.

	state?: string
}

scaleway_ip_facts :: {

	// Scaleway region to use (for example par1).

	region: string
}

scaleway_ip_info :: {

	// Scaleway region to use (for example C(par1)).

	region: string
}

scaleway_sshkey :: {

	// The public SSH key as a string to add.

	ssh_pub_key: string

	// Indicate desired state of the SSH key.

	state?: string

	// Scaleway API URL

	api_url?: string
}

scaleway_volume :: {

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

	// Scaleway region to use (for example par1).

	region: string
}

scaleway_security_group :: {

	// Description of the Security Group.

	description?: string

	// Default policy for incoming traffic.

	inbound_default_policy?: string

	// Name of the Security Group.

	name: string

	// Default policy for outcoming traffic.

	outbound_default_policy?: string

	// Scaleway region to use (for example C(par1)).

	region: string

	// Indicate desired state of the Security Group.

	state?: string

	// Organization identifier.

	organization: string

	// Create security group to be the default one.

	organization_default?: bool

	// Create a stateful security group which allows established connections in and out.

	stateful: bool
}

scaleway_server_info :: {

	// Scaleway region to use (for example C(par1)).

	region: string
}

scaleway_snapshot_facts :: {

	// Scaleway region to use (for example par1).

	region: string
}
