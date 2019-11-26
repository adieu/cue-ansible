package ansible

module: aci_bd_subnet: {
	module:            "aci_bd_subnet"
	short_description: "Manage Subnets (fv:Subnet)"
	description: [
		"Manage Subnets on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		bd: {
			description: [
				"The name of the Bridge Domain.",
			]
			type: "str"
			aliases: ["bd_name"]
		}
		description: {
			description: [
				"The description for the Subnet.",
			]
			type: "str"
			aliases: ["descr"]
		}
		enable_vip: {
			description: [
				"Determines if the Subnet should be treated as a VIP; used when the BD is extended to multiple sites.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		gateway: {
			description: [
				"The IPv4 or IPv6 gateway address for the Subnet.",
			]
			type: "str"
			aliases: ["gateway_ip"]
		}
		mask: {
			description: [
				"The subnet mask for the Subnet.",
				"This is the number associated with CIDR notation.",
				"For IPv4 addresses, accepted values range between C(0) and C(32).",
				"For IPv6 addresses, accepted Values range between C(0) and C(128).",
			]
			type: "int"
			aliases: ["subnet_mask"]
		}
		nd_prefix_policy: {
			description: [
				"The IPv6 Neighbor Discovery Prefix Policy to associate with the Subnet.",
			]
			type: "str"
		}
		preferred: {
			description: [
				"Determines if the Subnet is preferred over all available Subnets. Only one Subnet per Address Family (IPv4/IPv6). can be preferred in the Bridge Domain.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		route_profile: {
			description: [
				"The Route Profile to the associate with the Subnet.",
			]
			type: "str"
		}
		route_profile_l3_out: {
			description: [
				"The L3 Out that contains the associated Route Profile.",
			]
			type: "str"
		}
		scope: {
			description: [
				"Determines the scope of the Subnet.",
				"The C(private) option only allows communication with hosts in the same VRF.",
				"The C(public) option allows the Subnet to be advertised outside of the ACI Fabric, and allows communication with hosts in other VRFs.",
				"The shared option limits communication to hosts in either the same VRF or the shared VRF.",
				"The value is a list of options, C(private) and C(public) are mutually exclusive, but both can be used with C(shared).",
				"The APIC defaults to C(private) when unset during creation.",
			]
			type: "list"
			choices: [
				"private",
				"public",
				"shared",
			]
		}
		subnet_control: {
			description: [
				"Determines the Subnet's Control State.",
				"The C(querier_ip) option is used to treat the gateway_ip as an IGMP querier source IP.",
				"The C(nd_ra) option is used to treat the gateway_ip address as a Neighbor Discovery Router Advertisement Prefix.",
				"The C(no_gw) option is used to remove default gateway functionality from the gateway address.",
				"The APIC defaults to C(nd_ra) when unset during creation.",
			]
			type: "str"
			choices: ["nd_ra", "no_gw", "querier_ip", "unspecified"]
		}
		subnet_name: {
			description: [
				"The name of the Subnet.",
			]
			type: "str"
			aliases: ["name"]
		}
		tenant: {
			description: [
				"The name of the Tenant.",
			]
			type: "str"
			aliases: ["tenant_name"]
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
	}
	extends_documentation_fragment: "aci"
	notes: [
		"The C(gateway) parameter is the root key used to access the Subnet (not name), so the C(gateway) is required when the state is C(absent) or C(present).",
		"The C(tenant) and C(bd) used must exist before using this module in your playbook. The M(aci_tenant) module and M(aci_bd) can be used for these.",
	]

	seealso: [{
		module: "aci_bd"
	}, {
		module: "aci_tenant"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(fv:Subnet)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
