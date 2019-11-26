package ansible

module: vca_nat: {
	module:            "vca_nat"
	short_description: "add remove nat rules in a gateway  in a vca"
	description: [
		"Adds or removes nat rules from a gateway in a vca environment",
	]
	version_added: "2.0"
	author:        "Peter Sprygada (@privateip)"
	options: {
		purge_rules: {
			description: [
				"If set to true, it will delete all rules in the gateway that are not given as parameter to this module.",
			]
			type:    "bool"
			default: false
		}
		nat_rules: {
			description: [
				"A list of rules to be added to the gateway, Please see examples on valid entries",
			]
			required: true
			default:  false
		}
	}
	extends_documentation_fragment: "vca.documentation"
}
