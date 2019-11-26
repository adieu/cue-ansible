package ansible

module: bigmon_policy: {
	module:            "bigmon_policy"
	author:            "Ted (@tedelhourani)"
	short_description: "Create and remove a bigmon out-of-band policy."
	description: [
		"Create and remove a bigmon out-of-band policy.",
	]
	version_added: "2.3"
	options: {
		name: {
			description: [
				"The name of the policy.",
			]
			required: true
		}
		policy_description: description: [
			"Description of policy.",
		]
		action: {
			description: [
				"Forward matching packets to delivery interfaces, Drop is for measure rate of matching packets, but do not forward to delivery interfaces, capture packets and write to a PCAP file, or enable NetFlow generation.",
			]

			default: "forward"
			choices: ["forward", "drop", "flow-gen"]
		}
		priority: {
			description: [
				"A priority associated with this policy. The higher priority policy takes precedence over a lower priority.",
			]
			default: 100
		}
		duration: {
			description: [
				"Run policy for duration duration or until delivery_packet_count packets are delivered, whichever comes first.",
			]
			default: 0
		}
		start_time: {
			description: [
				"Date the policy becomes active",
			]
			default: "ansible_date_time.iso8601"
		}
		delivery_packet_count: {
			description: [
				"Run policy until delivery_packet_count packets are delivered.",
			]
			default: 0
		}
		state: {
			description: [
				"Whether the policy should be present or absent.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		controller: {
			description: [
				"The controller address.",
			]
			required: true
		}
		validate_certs: {
			description: [
				"If C(false), SSL certificates will not be validated. This should only be used on personally controlled devices using self-signed certificates.",
			]

			required: false
			default:  true
			type:     "bool"
		}
		access_token: description: [
			"Bigmon access token. If this isn't set, the environment variable C(BIGSWITCH_ACCESS_TOKEN) is used.",
		]
	}
}
