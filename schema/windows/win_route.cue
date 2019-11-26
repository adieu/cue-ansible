package ansible

module: win_route: {
	module:            "win_route"
	version_added:     "2.4"
	short_description: "Add or remove a static route"
	description: [
		"Add or remove a static route.",
	]
	options: {
		destination: {
			description: [
				"Destination IP address in CIDR format (ip address/prefix length).",
			]
			type:     "str"
			required: true
		}
		gateway: {
			description: [
				"The gateway used by the static route.",
				"If C(gateway) is not provided it will be set to C(0.0.0.0).",
			]
			type: "str"
		}
		metric: {
			description: [
				"Metric used by the static route.",
			]
			type:    "int"
			default: 1
		}
		state: {
			description: [
				"If C(absent), it removes a network static route.",
				"If C(present), it adds a network static route.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
	}
	notes: [
		"Works only with Windows 2012 R2 and newer.",
	]
	author: ["Daniele Lazzari (@dlazz)"]
}
