package ansible

module: nxos_pim_interface: {
	module:                         "nxos_pim_interface"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages PIM interface configuration."
	description: [
		"Manages PIM interface configuration settings.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
	]
	notes: [
		"Tested against NXOSv 7.3.(0)D1(1) on VIRL",
		"When C(state=default), supported params will be reset to a default state. These include C(dr_prio), C(hello_auth_key), C(hello_interval), C(jp_policy_out), C(jp_policy_in), C(jp_type_in), C(jp_type_out), C(border), C(neighbor_policy), C(neighbor_type).",
		"The C(hello_auth_key) param is not idempotent.",
		"C(hello_auth_key) only supports clear text passwords.",
		"When C(state=absent), pim interface configuration will be set to defaults and pim-sm will be disabled on the interface.",
		"PIM must be enabled on the device to use this module.",
		"This module is for Layer 3 interfaces.",
	]
	options: {
		interface: {
			description: [
				"Full name of the interface such as Ethernet1/33.",
			]
			type:     "str"
			required: true
		}
		sparse: {
			description: [
				"Enable/disable sparse-mode on the interface.",
			]
			type:    "bool"
			default: false
		}
		bfd: {
			description: [
				"Enables BFD for PIM at the interface level. This overrides the bfd variable set at the pim global level.",
				"Valid values are 'enable', 'disable' or 'default'.",
				"Dependency: 'feature bfd'",
			]
			version_added: "2.9"
			type:          "str"
			choices: ["enable", "disable", "default"]
		}
		dr_prio: {
			description: [
				"Configures priority for PIM DR election on interface.",
			]
			type: "str"
		}
		hello_auth_key: {
			description: [
				"Authentication for hellos on this interface.",
			]
			type: "str"
		}
		hello_interval: {
			description: [
				"Hello interval in milliseconds for this interface.",
			]
			type: "int"
		}
		jp_policy_out: {
			description: [
				"Policy for join-prune messages (outbound).",
			]
			type: "str"
		}
		jp_policy_in: {
			description: [
				"Policy for join-prune messages (inbound).",
			]
			type: "str"
		}
		jp_type_out: {
			description: [
				"Type of policy mapped to C(jp_policy_out).",
			]
			type: "str"
			choices: ["prefix", "routemap"]
		}
		jp_type_in: {
			description: [
				"Type of policy mapped to C(jp_policy_in).",
			]
			type: "str"
			choices: ["prefix", "routemap"]
		}
		border: {
			description: [
				"Configures interface to be a boundary of a PIM domain.",
			]
			type:    "bool"
			default: false
		}
		neighbor_policy: {
			description: [
				"Configures a neighbor policy for filtering adjacencies.",
			]
			type: "str"
		}
		neighbor_type: {
			description: [
				"Type of policy mapped to neighbor_policy.",
			]
			type: "str"
			choices: ["prefix", "routemap"]
		}
		state: {
			description: [
				"Manages desired state of the resource.",
			]
			type: "str"
			choices: ["present", "default"]
			default: "present"
		}
	}
}
