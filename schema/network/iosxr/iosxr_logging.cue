package ansible

module: iosxr_logging: {
	module:        "iosxr_logging"
	version_added: "2.4"
	author: [
		"Trishna Guha (@trishnaguha)",
		"Kedar Kekan (@kedarX)",
	]
	short_description: "Configuration management of system logging services on network devices"
	description: [
		"This module provides declarative management configuration of system logging (syslog) on Cisco IOS XR devices.",
	]

	requirements: [
		"ncclient >= 0.5.3 when using netconf",
		"lxml >= 4.1.1 when using netconf",
	]
	notes: [
		"This module works with connection C(network_cli) and C(netconf). See L(the IOS-XR Platform Options,../network/user_guide/platform_iosxr.html).",
		"Tested against IOS XRv 6.1.3",
	]
	options: {
		dest: {
			description: [
				"Destination for system logging (syslog) messages.",
			]
			choices: ["host", "console", "monitor", "buffered", "file"]
		}
		name: description: [
			"When C(dest) = I(file) name indicates file-name",
			"When C(dest) = I(host) name indicates the host-name or ip-address of syslog server.",
		]
		vrf: {
			description: [
				"vrf name when syslog server is configured, C(dest) = C(host)",
			]
			default:       "default"
			version_added: 2.5
		}
		size: description: [
			"Size of buffer when C(dest) = C(buffered). The acceptable value is in the range I(307200 to 125000000 bytes). Default 307200",
			"Size of file when C(dest) = C(file). The acceptable value is in the range I(1 to 2097152)KB. Default 2 GB",
		]
		facility: {
			description: [
				"To configure the type of syslog facility in which system logging (syslog) messages are sent to syslog servers Optional config for C(dest) = C(host)",
			]

			default: "local7"
		}
		hostnameprefix: {
			description: [
				"To append a hostname prefix to system logging (syslog) messages logged to syslog servers. Optional config for C(dest) = C(host)",
			]

			version_added: 2.5
		}
		level: {
			description: [
				"Specifies the severity level for the logging.",
			]
			default: "debugging"
			aliases: ["severity"]
		}
		aggregate: description: "List of syslog logging configuration definitions."
		state: {
			description: [
				"Existential state of the logging configuration on the node.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "iosxr"
}
