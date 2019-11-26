package ansible

module: bigip_software_update: {
	module:            "bigip_software_update"
	short_description: "Manage the software update settings of a BIG-IP"
	description: [
		"Manage the software update settings of a BIG-IP.",
	]
	version_added: 2.5
	options: {
		auto_check: {
			description: [
				"Specifies whether to automatically check for updates on the F5 Networks downloads server.",
			]

			type: "bool"
		}
		auto_phone_home: {
			description: [
				"Specifies whether to automatically send phone home data to the F5 Networks PhoneHome server.",
			]

			type: "bool"
		}
		frequency: {
			description: [
				"Specifies the schedule for the automatic update check.",
			]
			type: "str"
			choices: [
				"daily",
				"monthly",
				"weekly",
			]
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
