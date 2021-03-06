package ansible

module: docker_config: {
	module: "docker_config"

	short_description: "Manage docker configs."

	version_added: "2.8"

	description: [
		"Create and remove Docker configs in a Swarm environment. Similar to C(docker config create) and C(docker config rm).",
		"Adds to the metadata of new configs 'ansible_key', an encrypted hash representation of the data, which is then used in future runs to test if a config has changed. If 'ansible_key' is not present, then a config will not be updated unless the I(force) option is set.",
		"Updates to configs are performed by removing the config and creating it again.",
	]
	options: {
		data: {
			description: [
				"The value of the config. Required when state is C(present).",
			]
			type: "str"
		}
		data_is_b64: {
			description: [
				"If set to C(true), the data is assumed to be Base64 encoded and will be decoded before being used.",
				"To use binary I(data), it is better to keep it Base64 encoded and let it be decoded by this option.",
			]

			type:    "bool"
			default: false
		}
		labels: {
			description: [
				"A map of key:value meta data, where both the I(key) and I(value) are expected to be a string.",
				"If new meta data is provided, or existing meta data is modified, the config will be updated by removing it and creating it again.",
			]
			type: "dict"
		}
		force: {
			description: [
				"Use with state C(present) to always remove and recreate an existing config.",
				"If C(true), an existing config will be replaced, even if it has not been changed.",
			]
			type:    "bool"
			default: false
		}
		name: {
			description: [
				"The name of the config.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"Set to C(present), if the config should exist, and C(absent), if it should not.",
			]
			type:    "str"
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_2_documentation",
	]

	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 2.6.0",
		"Docker API >= 1.30",
	]

	author: [
		"Chris Houseknecht (@chouseknecht)",
		"John Hu (@ushuz)",
	]
}
