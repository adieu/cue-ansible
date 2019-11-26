package ansible

module: bigiq_regkey_pool: {
	module:            "bigiq_regkey_pool"
	short_description: "Manages registration key pools on BIG-IQ"
	description: [
		"Manages registration key (regkey) pools on a BIG-IQ. These pools function as a container in-which you will add lists of registration keys. To add registration keys, use the C(bigiq_regkey_license) module.",
	]

	version_added: 2.5
	options: {
		name: {
			description: [
				"Specifies the name of the registration key pool.",
				"You must be mindful to name your registration pools unique names. While BIG-IQ does not require this, this module does. If you do not do this, the behavior of the module is undefined and you may end up putting licenses in the wrong registration key pool.",
			]

			type:     "str"
			required: true
		}
		description: {
			description: [
				"A description to attach to the pool.",
			]
			type: "str"
		}
		state: {
			description: [
				"The state of the regkey pool on the system.",
				"When C(present), guarantees that the pool exists.",
				"When C(absent), removes the pool, and the licenses it contains, from the system.",
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
