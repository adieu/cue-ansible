package ansible

module: pn_ospfarea: {
	module:            "pn_ospfarea"
	author:            "Pluribus Networks (@amitsi)"
	version_added:     "2.2"
	short_description: "CLI command to add/remove ospf area to/from a vrouter."
	deprecated: {
		removed_in:  "2.12"
		why:         "Doesn't support latest Pluribus Networks netvisor"
		alternative: "Latest modules will be pushed in Ansible future versions."
	}
	description: [
		"Execute vrouter-ospf-add, vrouter-ospf-remove command.",
		"This command adds/removes Open Shortest Path First(OSPF) area to/from a virtual router(vRouter) service.",
	]

	options: {
		pn_cliusername: {
			description: [
				"Login username.",
			]
			required: true
		}
		pn_clipassword: {
			description: [
				"Login password.",
			]
			required: true
		}
		pn_cliswitch: {
			description: [
				"Target switch(es) to run the CLI on.",
			]
			required: false
		}
		state: {
			description: [
				"State the action to perform. Use 'present' to add ospf-area, 'absent' to remove ospf-area and 'update' to modify ospf-area.",
			]

			required: true
			choices: ["present", "absent", "update"]
		}
		pn_vrouter_name: {
			description: [
				"Specify the name of the vRouter.",
			]
			required: true
		}
		pn_ospf_area: {
			description: [
				"Specify the OSPF area number.",
			]
			required: true
		}
		pn_stub_type: {
			description: [
				"Specify the OSPF stub type.",
			]
			choices: ["none", "stub", "stub-no-summary", "nssa", "nssa-no-summary"]
		}
		pn_prefix_listin: description: [
			"OSPF prefix list for filtering incoming packets.",
		]
		pn_prefix_listout: description: [
			"OSPF prefix list for filtering outgoing packets.",
		]
		pn_quiet: {
			description: [
				"Enable/disable system information.",
			]
			required: false
			type:     "bool"
			default:  true
		}
	}
}
