package ansible

module: bigip_snmp: {
	module:            "bigip_snmp"
	short_description: "Manipulate general SNMP settings on a BIG-IP"
	description: [
		"Manipulate general SNMP settings on a BIG-IP.",
	]
	version_added: 2.4
	options: {
		allowed_addresses: {
			description: [
				"Configures the IP addresses of the SNMP clients from which the snmpd daemon accepts requests.",
				"This value can be hostnames, IP addresses, or IP networks.",
				"You may specify a single list item of C(default) to set the value back to the system's default of C(127.0.0.0/8).",
				"You can remove all allowed addresses by either providing the word C(none), or by providing the empty string C(\"\").",
			]

			type:          "raw"
			version_added: 2.6
		}
		contact: {
			description: [
				"Specifies the name of the person who administers the SNMP service for this system.",
			]

			type: "str"
		}
		agent_status_traps: {
			description: [
				"When C(enabled), ensures that the system sends a trap whenever the SNMP agent starts running or stops running. This is usually enabled by default on a BIG-IP.",
			]

			type: "str"
			choices: [
				"enabled",
				"disabled",
			]
		}
		agent_authentication_traps: {
			description: [
				"When C(enabled), ensures that the system sends authentication warning traps to the trap destinations. This is usually disabled by default on a BIG-IP.",
			]

			type: "str"
			choices: [
				"enabled",
				"disabled",
			]
		}
		device_warning_traps: {
			description: [
				"When C(enabled), ensures that the system sends device warning traps to the trap destinations. This is usually enabled by default on a BIG-IP.",
			]

			type: "str"
			choices: [
				"enabled",
				"disabled",
			]
		}
		location: {
			description: [
				"Specifies the description of this system's physical location.",
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
