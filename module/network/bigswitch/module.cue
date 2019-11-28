package bigswitch

bcf_switch :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	bcf_switch: {

		// The leaf group of the switch if the switch is a leaf.

		leaf_group?: string

		// The MAC address of the switch.

		mac: string

		// The name of the switch.

		name: string

		// Whether the switch should be present or absent.

		state?: string

		// If C(false), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.

		validate_certs?: bool

		// Big Cloud Fabric access token. If this isn't set then the environment variable C(BIGSWITCH_ACCESS_TOKEN) is used.

		access_token?: string

		// The controller IP address.

		controller: string

		// Fabric role of the switch.

		fabric_role: string
	}
}

bigmon_chain :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	bigmon_chain: {

		// If C(false), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.

		validate_certs?: bool

		// Bigmon access token. If this isn't set, the environment variable C(BIGSWITCH_ACCESS_TOKEN) is used.

		access_token?: string

		// The controller IP address.

		controller: string

		// The name of the chain.

		name: string

		// Whether the service chain should be present or absent.

		state?: string
	}
}

bigmon_policy :: {
	name?:     string
	register?: string
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	bigmon_policy: {

		// The controller address.

		controller: string

		// Run policy for duration duration or until delivery_packet_count packets are delivered, whichever comes first.

		duration?: string

		// A priority associated with this policy. The higher priority policy takes precedence over a lower priority.

		priority?: string

		// If C(false), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.

		validate_certs?: bool

		// Bigmon access token. If this isn't set, the environment variable C(BIGSWITCH_ACCESS_TOKEN) is used.

		access_token?: string

		// Run policy until delivery_packet_count packets are delivered.

		delivery_packet_count?: string

		// The name of the policy.

		name: string

		// Description of policy.

		policy_description?: string

		// Date the policy becomes active

		start_time?: string

		// Whether the policy should be present or absent.

		state?: string

		// Forward matching packets to delivery interfaces, Drop is for measure rate of matching packets, but do not forward to delivery interfaces, capture packets and write to a PCAP file, or enable NetFlow generation.

		action?: string
	}
}
