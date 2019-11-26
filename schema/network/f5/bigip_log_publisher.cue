package ansible

module: bigip_log_publisher: {
	module:            "bigip_log_publisher"
	short_description: "Manages log publishers on a BIG-IP"
	description: [
		"Manages log publishers on a BIG-IP.",
	]
	version_added: 2.6
	options: {
		name: {
			description: [
				"Specifies the name of the log publisher.",
			]
			type:     "str"
			required: true
		}
		description: {
			description: [
				"Specifies a description for the log publisher.",
			]
			type: "str"
		}
		destinations: {
			description: [
				"Specifies log destinations for this log publisher to use.",
			]
			type: "list"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
		state: {
			description: [
				"When C(present), ensures that the resource exists.",
				"When C(absent), ensures the resource is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
