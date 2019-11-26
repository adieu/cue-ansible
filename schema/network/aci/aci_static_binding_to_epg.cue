package ansible

module: aci_static_binding_to_epg: {
	module:            "aci_static_binding_to_epg"
	short_description: "Bind static paths to EPGs (fv:RsPathAtt)"
	description: [
		"Bind static paths to EPGs on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		tenant: {
			description: [
				"Name of an existing tenant.",
			]
			type: "str"
			aliases: ["tenant_name"]
		}
		ap: {
			description: [
				"Name of an existing application network profile, that will contain the EPGs.",
			]
			type: "str"
			aliases: ["app_profile", "app_profile_name"]
		}
		epg: {
			description: [
				"The name of the end point group.",
			]
			type: "str"
			aliases: ["epg_name"]
		}
		description: {
			description: [
				"Description for the static path to EPG binding.",
			]
			type: "str"
			aliases: ["descr"]
			version_added: "2.7"
		}
		encap_id: {
			description: [
				"The encapsulation ID associating the C(epg) with the interface path.",
				"This acts as the secondary C(encap_id) when using micro-segmentation.",
				"Accepted values are any valid encap ID for specified encap, currently ranges between C(1) and C(4096).",
			]
			type: "int"
			aliases: ["vlan", "vlan_id"]
		}
		primary_encap_id: {
			description: [
				"Determines the primary encapsulation ID associating the C(epg) with the interface path when using micro-segmentation.",
				"Accepted values are any valid encap ID for specified encap, currently ranges between C(1) and C(4096).",
			]
			type: "int"
			aliases: ["primary_vlan", "primary_vlan_id"]
		}
		deploy_immediacy: {
			description: [
				"The Deployment Immediacy of Static EPG on PC, VPC or Interface.",
				"The APIC defaults to C(lazy) when unset during creation.",
			]
			type: "str"
			choices: ["immediate", "lazy"]
		}
		interface_mode: {
			description: [
				"Determines how layer 2 tags will be read from and added to frames.",
				"Values C(802.1p) and C(native) are identical.",
				"Values C(access) and C(untagged) are identical.",
				"Values C(regular), C(tagged) and C(trunk) are identical.",
				"The APIC defaults to C(trunk) when unset during creation.",
			]
			type: "str"
			choices: ["802.1p", "access", "native", "regular", "tagged", "trunk", "untagged"]
			aliases: ["interface_mode_name", "mode"]
		}
		interface_type: {
			description: [
				"The type of interface for the static EPG deployment.",
			]
			type: "str"
			choices: ["fex", "port_channel", "switch_port", "vpc"]
			default: "switch_port"
		}
		pod_id: {
			description: [
				"The pod number part of the tDn.",
				"C(pod_id) is usually an integer below C(10).",
			]
			type: "int"
			aliases: ["pod", "pod_number"]
		}
		leafs: {
			description: [
				"The switch ID(s) that the C(interface) belongs to.",
				"When C(interface_type) is C(switch_port), C(port_channel), or C(fex), then C(leafs) is a string of the leaf ID.",
				"When C(interface_type) is C(vpc), then C(leafs) is a list with both leaf IDs.",
				"The C(leafs) value is usually something like '101' or '101-102' depending on C(connection_type).",
			]
			type: "list"
			aliases: ["leaves", "nodes", "paths", "switches"]
		}
		interface: {
			description: [
				"The C(interface) string value part of the tDn.",
				"Usually a policy group like C(test-IntPolGrp) or an interface of the following format C(1/7) depending on C(interface_type).",
			]
			type: "str"
		}
		extpaths: {
			description: [
				"The C(extpaths) integer value part of the tDn.",
				"C(extpaths) is only used if C(interface_type) is C(fex).",
				"Usually something like C(1011).",
			]
			type: "int"
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
		"The C(tenant), C(ap), C(epg) used must exist before using this module in your playbook. The M(aci_tenant), M(aci_ap), M(aci_epg) modules can be used for this.",
	]

	seealso: [{
		module: "aci_tenant"
	}, {
		module: "aci_ap"
	}, {
		module: "aci_epg"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(fv:RsPathAtt)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Bruno Calogero (@brunocalogero)"]
}
