package ansible

module: nxos_acl_interface: {
	module:                         "nxos_acl_interface"
	extends_documentation_fragment: "nxos"
	version_added:                  "2.2"
	short_description:              "Manages applying ACLs to interfaces."
	description: [
		"Manages applying ACLs to interfaces.",
	]
	author: [
		"Jason Edelman (@jedelman8)",
		"Gabriele Gerbino (@GGabriele)",
	]
	options: {
		name: {
			description: [
				"Case sensitive name of the access list (ACL).",
			]
			required: true
		}
		interface: {
			description: [
				"Full name of interface, e.g. I(Ethernet1/1).",
			]
			required: true
		}
		direction: {
			description: [
				"Direction ACL to be applied in on the interface.",
			]
			required: true
			choices: ["ingress", "egress"]
		}
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
}
