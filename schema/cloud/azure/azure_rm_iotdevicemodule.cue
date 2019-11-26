package ansible

module: azure_rm_iotdevicemodule: {
	module:            "azure_rm_iotdevicemodule"
	version_added:     "2.9"
	short_description: "Manage Azure IoT hub device module"
	description: [
		"Create, delete an Azure IoT hub device module.",
	]
	options: {
		hub: {
			description: [
				"Name of IoT Hub.",
			]
			type:     "str"
			required: true
		}
		hub_policy_name: {
			description: [
				"Policy name of the IoT Hub which will be used to query from IoT hub.",
				"This policy should have at least 'Registry Read' access.",
			]
			type:     "str"
			required: true
		}
		hub_policy_key: {
			description: [
				"Key of the I(hub_policy_name).",
			]
			type:     "str"
			required: true
		}
		name: {
			description: [
				"Name of the IoT hub device identity.",
			]
			type:     "str"
			required: true
		}
		device: {
			description: [
				"Device name the module associate with.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"State of the IoT hub. Use C(present) to create or update an IoT hub device and C(absent) to delete an IoT hub device.",
			]
			type:    "str"
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		auth_method: {
			description: [
				"The authorization type an entity is to be created with.",
			]
			type: "str"
			choices: [
				"sas",
				"certificate_authority",
				"self_signed",
			]
			default: "sas"
		}
		primary_key: {
			description: [
				"Explicit self-signed certificate thumbprint to use for primary key.",
				"Explicit Shared Private Key to use for primary key.",
			]
			type: "str"
			aliases: [
				"primary_thumbprint",
			]
		}
		secondary_key: {
			description: [
				"Explicit self-signed certificate thumbprint to use for secondary key.",
				"Explicit Shared Private Key to use for secondary key.",
			]
			type: "str"
			aliases: [
				"secondary_thumbprint",
			]
		}
		twin_tags: {
			description: [
				"A section that the solution back end can read from and write to.",
				"Tags are not visible to device apps.",
				"The tag can be nested dictionary, '.', '$', '#', ' ' is not allowed in the key.",
				"List is not supported.",
			]
			type: "dict"
		}
		desired: {
			description: [
				"Used along with reported properties to synchronize device configuration or conditions.",
				"The tag can be nested dictionary, '.', '$', '#', ' ' is not allowed in the key.",
				"List is not supported.",
			]
			type: "dict"
		}
	}
	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: [
		"Yuwei Zhou (@yuwzho)",
	]
}
