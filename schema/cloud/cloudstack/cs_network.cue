package ansible

module: cs_network: {
	module:            "cs_network"
	short_description: "Manages networks on Apache CloudStack based clouds."
	description: [
		"Create, update, restart and delete networks.",
	]
	version_added: "2.0"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name (case sensitive) of the network."]
			type:     "str"
			required: true
		}
		display_text: {
			description: [
				"Display text of the network.",
				"If not specified, I(name) will be used as I(display_text).",
			]
			type: "str"
		}
		network_offering: {
			description: [
				"Name of the offering for the network.",
				"Required if I(state=present).",
			]
			type: "str"
		}
		start_ip: {
			description: [
				"The beginning IPv4 address of the network belongs to.",
				"Only considered on create.",
			]
			type: "str"
		}
		end_ip: {
			description: [
				"The ending IPv4 address of the network belongs to.",
				"If not specified, value of I(start_ip) is used.",
				"Only considered on create.",
			]
			type: "str"
		}
		gateway: {
			description: [
				"The gateway of the network.",
				"Required for shared networks and isolated networks when it belongs to a VPC.",
				"Only considered on create.",
			]
			type: "str"
		}
		netmask: {
			description: [
				"The netmask of the network.",
				"Required for shared networks and isolated networks when it belongs to a VPC.",
				"Only considered on create.",
			]
			type: "str"
		}
		start_ipv6: {
			description: [
				"The beginning IPv6 address of the network belongs to.",
				"Only considered on create.",
			]
			type: "str"
		}
		end_ipv6: {
			description: [
				"The ending IPv6 address of the network belongs to.",
				"If not specified, value of I(start_ipv6) is used.",
				"Only considered on create.",
			]
			type: "str"
		}
		cidr_ipv6: {
			description: [
				"CIDR of IPv6 network, must be at least /64.",
				"Only considered on create.",
			]
			type: "str"
		}
		gateway_ipv6: {
			description: [
				"The gateway of the IPv6 network.",
				"Required for shared networks.",
				"Only considered on create.",
			]
			type: "str"
		}
		vlan: {
			description: ["The ID or VID of the network."]
			type: "str"
		}
		vpc: {
			description: ["Name of the VPC of the network."]
			type: "str"
		}
		isolated_pvlan: {
			description: ["The isolated private VLAN for this network."]
			type: "str"
		}
		clean_up: {
			description: [
				"Cleanup old network elements.",
				"Only considered on I(state=restarted).",
			]
			default: false
			type:    "bool"
		}
		acl_type: {
			description: [
				"Access control type for the network.",
				"If not specified, Cloudstack will default to C(account) for isolated networks",
				"and C(domain) for shared networks.",
				"Only considered on create.",
			]
			type: "str"
			choices: ["account", "domain"]
		}
		acl: {
			description: ["The name of the access control list for the VPC network tier."]
			type:          "str"
			version_added: "2.5"
		}
		subdomain_access: {
			description: [
				"Defines whether to allow subdomains to use networks dedicated to their parent domain(s).",
				"Should be used with I(acl_type=domain).",
				"Only considered on create.",
			]
			type:          "bool"
			version_added: "2.5"
		}
		network_domain: {
			description: ["The network domain."]
			type: "str"
		}
		state: {
			description: ["State of the network."]
			type:    "str"
			default: "present"
			choices: ["present", "absent", "restarted"]
		}
		zone: {
			description: [
				"Name of the zone in which the network should be deployed.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
		project: {
			description: ["Name of the project the network to be deployed in."]
			type: "str"
		}
		domain: {
			description: ["Domain the network is related to."]
			type: "str"
		}
		account: {
			description: ["Account the network is related to."]
			type: "str"
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			default: true
			type:    "bool"
		}
		tags: {
			description: [
				"List of tags. Tags are a list of dictionaries having keys I(key) and I(value).",
				"To delete all tags, set a empty list e.g. I(tags: []).",
			]
			type: "list"
			aliases: ["tag"]
			version_added: "2.9"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
