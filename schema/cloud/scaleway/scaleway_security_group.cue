package ansible

module: scaleway_security_group: {
	module:            "scaleway_security_group"
	short_description: "Scaleway Security Group management module"
	version_added:     "2.8"
	author:            "Antoine Barbare (@abarbare)"
	description: [
		"This module manages Security Group on Scaleway account U(https://developer.scaleway.com).",
	]

	extends_documentation_fragment: "scaleway"

	options: {
		state: {
			description: [
				"Indicate desired state of the Security Group.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}

		organization: {
			description: [
				"Organization identifier.",
			]
			type:     "str"
			required: true
		}

		region: {
			description: [
				"Scaleway region to use (for example C(par1)).",
			]
			type:     "str"
			required: true
			choices: [
				"ams1",
				"EMEA-NL-EVS",
				"par1",
				"EMEA-FR-PAR1",
			]
		}

		name: {
			description: [
				"Name of the Security Group.",
			]
			type:     "str"
			required: true
		}

		description: {
			description: [
				"Description of the Security Group.",
			]
			type: "str"
		}

		stateful: {
			description: [
				"Create a stateful security group which allows established connections in and out.",
			]
			type:     "bool"
			required: true
		}

		inbound_default_policy: {
			description: [
				"Default policy for incoming traffic.",
			]
			type: "str"
			choices: ["accept", "drop"]
		}

		outbound_default_policy: {
			description: [
				"Default policy for outcoming traffic.",
			]
			type: "str"
			choices: ["accept", "drop"]
		}

		organization_default: {
			description: [
				"Create security group to be the default one.",
			]
			type: "bool"
		}
	}
}
