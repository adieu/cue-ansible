package ansible

module: gcp_forwarding_rule: {
	module:            "gcp_forwarding_rule"
	version_added:     "2.4"
	short_description: "Create, Update or Destroy a Forwarding_Rule."
	description: [
		"Create, Update or Destroy a Forwarding_Rule. See U(https://cloud.google.com/compute/docs/load-balancing/http/target-proxies) for an overview. More details on the Global Forwarding_Rule API can be found at U(https://cloud.google.com/compute/docs/reference/latest/globalForwardingRules) More details on the Forwarding Rules API can be found at U(https://cloud.google.com/compute/docs/reference/latest/forwardingRules)",
	]

	requirements: [
		"python >= 2.6",
		"google-api-python-client >= 1.6.2",
		"google-auth >= 0.9.0",
		"google-auth-httplib2 >= 0.0.2",
	]
	deprecated: {
		removed_in:  "2.12"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(gcp_compute_forwarding_rule) or M(gcp_compute_global_forwarding_rule) instead."
	}
	notes: [
		"Currently only supports global forwarding rules. As such, Load Balancing Scheme is always EXTERNAL.",
	]

	author: [
		"Tom Melendez (@supertom) <tom@supertom.com>",
	]
	options: {
		address: {
			description: [
				"IPv4 or named IP address. Must be of the same scope (regional, global). Reserved addresses can (and probably should) be used for global forwarding rules. You may reserve IPs from the console or via the gce_eip module.",
			]

			required: false
		}
		forwarding_rule_name: {
			description: [
				"Name of the Forwarding_Rule.",
			]
			required: true
		}
		port_range: {
			description: [
				"For global forwarding rules, must be set to 80 or 8080 for TargetHttpProxy, and 443 for TargetHttpsProxy or TargetSslProxy.",
			]

			required: false
		}
		protocol: {
			description: [
				"For global forwarding rules, TCP, UDP, ESP, AH, SCTP or ICMP. Default is TCP.",
			]
			required: false
		}
		region: {
			description: [
				"The region for this forwarding rule. Currently, only 'global' is supported.",
			]
			required: false
		}
		state: {
			description: [
				"The state of the Forwarding Rule. 'present' or 'absent'",
			]
			required: true
			choices: ["present", "absent"]
		}
		target: {
			description: [
				"Target resource for forwarding rule. For global proxy, this is a Global TargetProxy resource. Required for external load balancing (including Global load balancing)",
			]

			required: false
		}
	}
}
