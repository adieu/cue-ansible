package ansible

module: flowadm: {
	module:            "flowadm"
	short_description: "Manage bandwidth resource control and priority for protocols, services and zones on Solaris/illumos systems"
	description: [
		"Create/modify/remove networking bandwidth and associated resources for a type of traffic on a particular link.",
	]
	version_added: "2.2"
	author:        "Adam Števko (@xen0l)"
	options: {
		name: {
			description: """
		- A flow is defined as a set of attributes based on Layer 3 and Layer 4 headers, which can be used to identify a protocol, service, or a zone.

		"""

			required: true
			aliases: ["flow"]
		}
		link: {
			description: ["Specifiies a link to configure flow on."]
			required: false
		}
		local_ip: {
			description: ["Identifies a network flow by the local IP address."]
			required: false
		}
		remote_ip: {
			description: ["Identifies a network flow by the remote IP address."]
			required: false
		}
		transport: {
			description: """
		- Specifies a Layer 4 protocol to be used. It is typically used in combination with I(local_port) to identify the service that needs special attention.

		"""

			required: false
		}
		local_port: {
			description: ["Identifies a service specified by the local port."]
			required: false
		}
		dsfield: {
			description: """
		- Identifies the 8-bit differentiated services field (as defined in RFC 2474). The optional dsfield_mask is used to state the bits of interest in the differentiated services field when comparing with the dsfield value. Both values must be in hexadecimal.

		"""

			required: false
		}
		maxbw: {
			description: """
		- Sets the full duplex bandwidth for the flow. The bandwidth is specified as an integer with one of the scale suffixes(K, M, or G for Kbps, Mbps, and Gbps). If no units are specified, the input value will be read as Mbps.

		"""

			required: false
		}
		priority: {
			description: ["Sets the relative priority for the flow."]
			required: false
			default:  "medium"
			choices: ["low", "medium", "high"]
		}
		temporary: {
			description: [
				"Specifies that the configured flow is temporary. Temporary flows do not persist across reboots.",
			]

			required: false
			default:  false
			type:     "bool"
		}
		state: {
			description: ["Create/delete/enable/disable an IP address on the network interface."]
			required: false
			default:  "present"
			choices: ["absent", "present", "resetted"]
		}
	}
}
