package ansible

module: cs_zone: {
	module:            "cs_zone"
	short_description: "Manages zones on Apache CloudStack based clouds."
	description: [
		"Create, update and remove zones.",
	]
	version_added: "2.1"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the zone."]
			type:     "str"
			required: true
		}
		id: {
			description: ["uuid of the existing zone."]
			type: "str"
		}
		state: {
			description: ["State of the zone."]
			type:    "str"
			default: "present"
			choices: ["present", "enabled", "disabled", "absent"]
		}
		domain: {
			description: [
				"Domain the zone is related to.",
				"Zone is a public zone if not set.",
			]
			type: "str"
		}
		network_domain: {
			description: ["Network domain for the zone."]
			type: "str"
		}
		network_type: {
			description: ["Network type of the zone."]
			type:    "str"
			default: "Basic"
			choices: ["Basic", "Advanced"]
		}
		dns1: {
			description: [
				"First DNS for the zone.",
				"Required if I(state=present)",
			]
			type: "str"
		}
		dns2: {
			description: ["Second DNS for the zone."]
			type: "str"
		}
		internal_dns1: {
			description: [
				"First internal DNS for the zone.",
				"If not set I(dns1) will be used on I(state=present).",
			]
			type: "str"
		}
		internal_dns2: {
			description: ["Second internal DNS for the zone."]
			type: "str"
		}
		dns1_ipv6: {
			description: ["First DNS for IPv6 for the zone."]
			type: "str"
		}
		dns2_ipv6: {
			description: ["Second DNS for IPv6 for the zone."]
			type: "str"
		}
		guest_cidr_address: {
			description: ["Guest CIDR address for the zone."]
			type: "str"
		}
		dhcp_provider: {
			description: ["DHCP provider for the Zone."]
			type: "str"
		}
		local_storage_enabled: {
			description: ["Whether to enable local storage for the zone or not.."]
			type: "bool"
		}
		securitygroups_enabled: {
			description: ["Whether the zone is security group enabled or not."]
			type: "bool"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
