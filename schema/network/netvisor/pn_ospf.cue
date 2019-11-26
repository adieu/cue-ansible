package ansible

module: pn_ospf: {
	module:            "pn_ospf"
	author:            "Pluribus Networks (@amitsi)"
	version_added:     "2.2"
	short_description: "CLI command to add/remove ospf protocol to a vRouter."
	deprecated: {
		removed_in:  "2.12"
		why:         "Doesn't support latest Pluribus Networks netvisor"
		alternative: "Latest modules will be pushed in Ansible future versions."
	}
	description: [
		"Execute vrouter-ospf-add, vrouter-ospf-remove command.",
		"This command adds/removes Open Shortest Path First(OSPF) routing protocol to a virtual router(vRouter) service.",
	]

	options: {
		pn_cliusername: {
			description: [
				"Provide login username if user is not root.",
			]
			required: false
		}
		pn_clipassword: {
			description: [
				"Provide login password if user is not root.",
			]
			required: false
		}
		pn_cliswitch: {
			description: [
				"Target switch to run the CLI on.",
			]
			required: false
			default:  "local"
		}
		state: {
			description: [
				"Assert the state of the ospf. Use 'present' to add ospf and 'absent' to remove ospf.",
			]

			required: true
			default:  "present"
			choices: ["present", "absent"]
		}
		pn_vrouter_name: {
			description: [
				"Specify the name of the vRouter.",
			]
			required: true
		}
		pn_network_ip: {
			description: [
				"Specify the network IP (IPv4 or IPv6) address.",
			]
			required: true
		}
		pn_ospf_area: description: ["Stub area number for the configuration. Required for vrouter-ospf-add."]
	}
}
