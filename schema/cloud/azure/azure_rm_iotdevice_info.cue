package ansible

module: azure_rm_iotdevice_info: {
	module:            "azure_rm_iotdevice_info"
	version_added:     "2.9"
	short_description: "Facts of Azure IoT hub device"
	description: [
		"Query, get Azure IoT hub device.",
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
			type: "str"
			aliases: [
				"device_id",
			]
		}
		module_id: {
			description: [
				"Name of the IoT hub device module.",
				"Must use with I(device_id) defined.",
			]
			type: "str"
		}
		query: {
			description: [
				"Query an IoT hub to retrieve information regarding device twins using a SQL-like language.",
				"See U(https://docs.microsoft.com/en-us/azure/iot-hub/iot-hub-devguide-query-language).",
			]
			type: "str"
		}
		top: {
			description: [
				"Used when I(name) not defined.",
				"List the top n devices in the query.",
			]
			type: "int"
		}
	}
	extends_documentation_fragment: [
		"azure",
		"azure_tags",
	]

	author: ["Yuwei Zhou (@yuwzho)"]
}
