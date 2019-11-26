package ansible

module: pn_show: {
	module:            "pn_show"
	author:            "Pluribus Networks (@amitsi)"
	version_added:     "2.2"
	short_description: "Run show commands on nvOS device."
	deprecated: {
		removed_in:  "2.12"
		why:         "Doesn't support latest Pluribus Networks netvisor"
		alternative: "Latest modules will be pushed in Ansible future versions."
	}
	description: [
		"Execute show command in the nodes and returns the results read from the device.",
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
				"Target switch(es) to run the cli on.",
			]
			required: false
		}
		pn_command: {
			description: [
				"The C(pn_command) takes a CLI show command as value.",
			]
			required: true
		}
		pn_parameters: {
			description: [
				"Display output using a specific parameter. Use 'all' to display possible output. List of comma separated parameters.",
			]

			default: "all"
		}
		pn_options: description: ["Specify formatting options."]
	}
}
