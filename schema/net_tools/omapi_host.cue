package ansible

module: omapi_host: {
	module:            "omapi_host"
	short_description: "Setup OMAPI hosts."
	description:       "Manage OMAPI hosts into compatible DHCPd servers"
	version_added:     "2.3"
	requirements: [
		"pypureomapi",
	]
	author: [
		"Loic Blot (@nerzhul)",
	]
	options: {
		state: {
			description: [
				"Create or remove OMAPI host.",
			]
			type:     "str"
			required: true
			choices: ["absent", "present"]
		}
		hostname: {
			description: [
				"Sets the host lease hostname (mandatory if state=present).",
			]
			type: "str"
			aliases: ["name"]
		}
		host: {
			description: [
				"Sets OMAPI server host to interact with.",
			]
			type:    "str"
			default: "localhost"
		}
		port: {
			description: [
				"Sets the OMAPI server port to interact with.",
			]
			type:    "int"
			default: 7911
		}
		key_name: {
			description: [
				"Sets the TSIG key name for authenticating against OMAPI server.",
			]
			type:     "str"
			required: true
		}
		key: {
			description: [
				"Sets the TSIG key content for authenticating against OMAPI server.",
			]
			type:     "str"
			required: true
		}
		macaddr: {
			description: [
				"Sets the lease host MAC address.",
			]
			type:     "str"
			required: true
		}
		ip: {
			description: [
				"Sets the lease host IP address.",
			]
			type: "str"
		}
		statements: {
			description: [
				"Attach a list of OMAPI DHCP statements with host lease (without ending semicolon).",
			]
			type: "list"
			default: []
		}
		ddns: {
			description: [
				"Enable dynamic DNS updates for this host.",
			]
			type:    "bool"
			default: false
		}
	}
}
