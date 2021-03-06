package ansible

module: bigip_device_ntp: {
	module:            "bigip_device_ntp"
	short_description: "Manage NTP servers on a BIG-IP"
	description: [
		"Manage NTP servers on a BIG-IP.",
	]
	version_added: 2.2
	options: {
		ntp_servers: {
			description: [
				"A list of NTP servers to set on the device. At least one of C(ntp_servers) or C(timezone) is required.",
			]

			type: "list"
		}
		state: {
			description: [
				"The state of the NTP servers on the system. When C(present), guarantees that the NTP servers are set on the system. When C(absent), removes the specified NTP servers from the device configuration.",
			]

			type: "str"
			choices: [
				"absent",
				"present",
			]
			default: "present"
		}
		timezone: {
			description: [
				"The timezone to set for NTP lookups. At least one of C(ntp_servers) or C(timezone) is required.",
			]

			type: "str"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
