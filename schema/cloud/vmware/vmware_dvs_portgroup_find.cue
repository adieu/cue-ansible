package ansible

module: vmware_dvs_portgroup_find: {
	module:            "vmware_dvs_portgroup_find"
	short_description: "Find portgroup(s) in a VMware environment"
	description: [
		"Find portgroup(s) based on different criteria such as distributed vSwitch, VLAN id or a string in the name.",
	]
	version_added: 2.9
	author: [
		"David Martinez (@dx0xm)",
	]
	notes: [
		"Tested on vSphere 6.5",
	]
	requirements: [
		"python >= 2.7",
		"PyVmomi",
	]
	options: {
		dvswitch: {
			description: [
				"Name of a distributed vSwitch to look for.",
			]
			type: "str"
		}
		vlanid: {
			description: [
				"VLAN id can be any number between 1 and 4094.",
				"This search criteria will looks into VLAN ranges to find possible matches.",
			]
			required: false
			type:     "int"
		}
		name: {
			description: [
				"string to check inside the name of the portgroup.",
				"Basic containment check using python C(in) operation.",
			]
			type: "str"
		}
		show_uplink: {
			description: [
				"Show or hide uplink portgroups.",
				"Only relevant when C(vlanid) is supplied.",
			]
			type:    "bool"
			default: false
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
