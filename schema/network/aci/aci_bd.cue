package ansible

module: aci_bd: {
	module:            "aci_bd"
	short_description: "Manage Bridge Domains (BD) objects (fv:BD)"
	description: [
		"Manages Bridge Domains (BD) on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		arp_flooding: {
			description: [
				"Determines if the Bridge Domain should flood ARP traffic.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		bd: {
			description: [
				"The name of the Bridge Domain.",
			]
			type: "str"
			aliases: ["bd_name", "name"]
		}
		bd_type: {
			description: [
				"The type of traffic on the Bridge Domain.",
				"The APIC defaults to C(ethernet) when unset during creation.",
			]
			type: "str"
			choices: ["ethernet", "fc"]
		}
		description: {
			description: [
				"Description for the Bridge Domain.",
			]
			type: "str"
		}
		enable_multicast: {
			description: [
				"Determines if PIM is enabled.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		enable_routing: {
			description: [
				"Determines if IP forwarding should be allowed.",
				"The APIC defaults to C(yes) when unset during creation.",
			]
			type: "bool"
		}
		endpoint_clear: {
			description: [
				"Clears all End Points in all Leaves when C(yes).",
				"The value is not reset to disabled once End Points have been cleared; that requires a second task.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		endpoint_move_detect: {
			description: [
				"Determines if GARP should be enabled to detect when End Points move.",
				"The APIC defaults to C(garp) when unset during creation.",
			]
			type: "str"
			choices: ["default", "garp"]
		}
		endpoint_retention_action: {
			description: [
				"Determines if the Bridge Domain should inherit or resolve the End Point Retention Policy.",
				"The APIC defaults to C(resolve) when unset during creation.",
			]
			type: "str"
			choices: ["inherit", "resolve"]
		}
		endpoint_retention_policy: {
			description: [
				"The name of the End Point Retention Policy the Bridge Domain should use when overriding the default End Point Retention Policy.",
			]

			type: "str"
		}
		igmp_snoop_policy: {
			description: [
				"The name of the IGMP Snooping Policy the Bridge Domain should use when overriding the default IGMP Snooping Policy.",
			]

			type: "str"
		}
		ip_learning: {
			description: [
				"Determines if the Bridge Domain should learn End Point IPs.",
				"The APIC defaults to C(yes) when unset during creation.",
			]
			type: "bool"
		}
		ipv6_nd_policy: {
			description: [
				"The name of the IPv6 Neighbor Discovery Policy the Bridge Domain should use when overridding the default IPV6 ND Policy.",
			]

			type: "str"
		}
		l2_unknown_unicast: {
			description: [
				"Determines what forwarding method to use for unknown l2 destinations.",
				"The APIC defaults to C(proxy) when unset during creation.",
			]
			type: "str"
			choices: ["proxy", "flood"]
		}
		l3_unknown_multicast: {
			description: [
				"Determines the forwarding method to use for unknown multicast destinations.",
				"The APIC defaults to C(flood) when unset during creation.",
			]
			type: "str"
			choices: ["flood", "opt-flood"]
		}
		limit_ip_learn: {
			description: [
				"Determines if the BD should limit IP learning to only subnets owned by the Bridge Domain.",
				"The APIC defaults to C(yes) when unset during creation.",
			]
			type: "bool"
		}
		mac_address: {
			description: [
				"The MAC Address to assign to the C(bd) instead of using the default.",
				"The APIC defaults to C(00:22:BD:F8:19:FF) when unset during creation.",
			]
			type: "str"
			aliases: ["mac"]
			version_added: "2.5"
		}
		multi_dest: {
			description: [
				"Determines the forwarding method for L2 multicast, broadcast, and link layer traffic.",
				"The APIC defaults to C(bd-flood) when unset during creation.",
			]
			type: "str"
			choices: ["bd-flood", "drop", "encap-flood"]
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
		tenant: {
			description: [
				"The name of the Tenant.",
			]
			type: "str"
			aliases: ["tenant_name"]
		}
		vrf: {
			description: [
				"The name of the VRF.",
			]
			type: "str"
			aliases: ["vrf_name"]
		}
	}
	extends_documentation_fragment: "aci"
	notes: [
		"The C(tenant) used must exist before using this module in your playbook. The M(aci_tenant) module can be used for this.",
	]

	seealso: [{
		module: "aci_tenant"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(fv:BD)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
