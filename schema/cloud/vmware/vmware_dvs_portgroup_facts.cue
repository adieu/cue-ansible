package ansible

module: vmware_dvs_portgroup_facts: {
	module: "vmware_dvs_portgroup_facts"
	deprecated: {
		removed_in:  "2.13"
		why:         "Deprecated in favour of C(_info) module."
		alternative: "Use M(vmware_dvs_portgroup_info) instead."
	}
	short_description: "Gathers facts DVS portgroup configurations"
	description: [
		"This module can be used to gather facts about DVS portgroup configurations.",
	]
	version_added: 2.8
	author: [
		"Abhijeet Kasurde (@Akasurde)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		datacenter: {
			description: [
				"Name of the datacenter.",
			]
			required: true
			type:     "str"
		}
		dvswitch: {
			description: [
				"Name of a dvswitch to look for.",
			]
			required:      false
			type:          "str"
			version_added: "2.9"
		}
		show_network_policy: {
			description: [
				"Show or hide network policies of DVS portgroup.",
			]
			type:    "bool"
			default: true
		}
		show_port_policy: {
			description: [
				"Show or hide port policies of DVS portgroup.",
			]
			type:    "bool"
			default: true
		}
		show_teaming_policy: {
			description: [
				"Show or hide teaming policies of DVS portgroup.",
			]
			type:    "bool"
			default: true
		}
		show_vlan_info: {
			description: [
				"Show or hide vlan information of the DVS portgroup.",
			]
			type:          "bool"
			default:       false
			version_added: "2.9"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
