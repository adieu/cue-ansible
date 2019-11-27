package bigswitch

bigmon_chain :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	bigmon_chain: {

		// Bigmon access token. If this isn't set, the environment variable C(BIGSWITCH_ACCESS_TOKEN) is used.

		access_token?: string

		// The controller IP address.

		controller: string

		// The name of the chain.

		name: string

		// Whether the service chain should be present or absent.

		state?: string

		// If C(false), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.

		validate_certs?: bool
	}
}

bigmon_policy :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	bigmon_policy: {

		// Bigmon access token. If this isn't set, the environment variable C(BIGSWITCH_ACCESS_TOKEN) is used.

		access_token?: string

		// Forward matching packets to delivery interfaces, Drop is for measure rate of matching packets, but do not forward to delivery interfaces, capture packets and write to a PCAP file, or enable NetFlow generation.

		action?: string

		// Description of policy.

		policy_description?: string

		// If C(false), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.

		validate_certs?: bool

		// Date the policy becomes active

		start_time?: string

		// Whether the policy should be present or absent.

		state?: string

		// The controller address.

		controller: string

		// Run policy until delivery_packet_count packets are delivered.

		delivery_packet_count?: string

		// Run policy for duration duration or until delivery_packet_count packets are delivered, whichever comes first.

		duration?: string

		// The name of the policy.

		name: string

		// A priority associated with this policy. The higher priority policy takes precedence over a lower priority.

		priority?: string
	}
}

bcf_switch :: {
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
