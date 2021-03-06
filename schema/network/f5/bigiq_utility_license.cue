package ansible

module: bigiq_utility_license: {
	module:            "bigiq_utility_license"
	short_description: "Manage utility licenses on a BIG-IQ"
	description: [
		"Manages utility licenses on a BIG-IQ. Utility licenses are one form of licenses that BIG-IQ can distribute. These licenses, unlike regkey licenses, do not require a pool to be created before creation. Additionally, when assigning them, you assign by offering instead of key.",
	]

	version_added: 2.6
	options: {
		license_key: {
			description: [
				"The license key to install and activate.",
			]
			type:     "str"
			required: true
		}
		accept_eula: {
			description: [
				"A key that signifies that you accept the F5 EULA for this license.",
				"A copy of the EULA can be found here https://askf5.f5.com/csp/article/K12902",
				"This is required when C(state) is C(present).",
			]
			type: "bool"
		}
		state: {
			description: [
				"The state of the utility license on the system.",
				"When C(present), guarantees that the license exists.",
				"When C(absent), removes the license from the system.",
			]
			type: "str"
			choices: [
				"absent",
				"present",
			]
			default: "present"
		}
	}
	requirements: [
		"BIG-IQ >= 5.3.0",
	]
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
