package ansible

module: nxos_vlan: {
	module:                         "nxos_vlan"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.1"
	short_description:              "Manages VLAN resources and attributes."
	description: [
		"Manages VLAN configurations on NX-OS switches.",
	]
	deprecated: {
		removed_in:  "2.13"
		alternative: "nxos_vlans"
		why:         "Updated modules released with more functionality"
	}
	author: "Jason Edelman (@jedelman8)"
	options: {
		vlan_id: {
			description: [
				"Single VLAN ID.",
			]
			type: "int"
		}
		vlan_range: {
			description: [
				"Range of VLANs such as 2-10 or 2,5,10-15, etc.",
			]
			type: "str"
		}
		name: {
			description: [
				"Name of VLAN or keyword 'default'.",
			]
			type: "str"
		}
		interfaces: {
			description: [
				"List of interfaces that should be associated to the VLAN or keyword 'default'.",
			]
			version_added: "2.5"
			type:          "list"
		}
		associated_interfaces: {
			description: [
				"This is a intent option and checks the operational state of the for given vlan C(name) for associated interfaces. If the value in the C(associated_interfaces) does not match with the operational state of vlan interfaces on device it will result in failure.",
			]

			version_added: "2.5"
			type:          "list"
		}
		vlan_state: {
			description: [
				"Manage the vlan operational state of the VLAN",
			]
			default: "active"
			choices: ["active", "suspend"]
			type: "str"
		}
		admin_state: {
			description: [
				"Manage the VLAN administrative state of the VLAN equivalent to shut/no shut in VLAN config mode.",
			]

			default: "up"
			choices: ["up", "down"]
			type: "str"
		}
		mapped_vni: {
			description: [
				"The Virtual Network Identifier (VNI) ID that is mapped to the VLAN. Valid values are integer and keyword 'default'. Range 4096-16773119.",
			]

			version_added: "2.2"
			type:          "str"
		}
		state: {
			description: [
				"Manage the state of the resource.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		mode: {
			description: [
				"Set VLAN mode to classical ethernet or fabricpath. This is a valid option for Nexus 5000 and 7000 series.",
			]

			choices: ["ce", "fabricpath"]
			default:       "ce"
			type:          "str"
			version_added: "2.4"
		}
		aggregate: {
			description:   "List of VLANs definitions."
			version_added: "2.5"
			type:          "list"
		}
		purge: {
			description: [
				"Purge VLANs not defined in the I(aggregate) parameter. This parameter can be used without aggregate as well.",
				"Removal of Vlan 1 is not allowed and will be ignored by purge.",
			]
			type:    "bool"
			default: "no"
		}
		delay: {
			description: [
				"Time in seconds to wait before checking for the operational state on remote device. This wait is applicable for operational state arguments.",
			]

			default: 10
			type:    "int"
		}
	}
}
