package ansible

module: bigip_monitor_tcp_half_open: {
	module:            "bigip_monitor_tcp_half_open"
	short_description: "Manages F5 BIG-IP LTM tcp half-open monitors"
	description:       "Manages F5 BIG-IP LTM tcp half-open monitors."
	version_added:     2.4
	options: {
		name: {
			description: [
				"Monitor name.",
			]
			type:     "str"
			required: true
		}
		parent: {
			description: [
				"The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp_half_open) parent on the C(Common) partition.",
			]

			type:    "str"
			default: "/Common/tcp_half_open"
		}
		description: {
			description: [
				"The description of the monitor.",
			]
			type:          "str"
			version_added: 2.7
		}
		ip: {
			description: [
				"IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.",
				"If this value is an IP address, and the C(type) is C(tcp) (the default), then a C(port) number must be specified.",
			]

			type: "str"
		}
		port: {
			description: [
				"Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified",
			]

			type:          "str"
			version_added: 2.5
		}
		interval: {
			description: [
				"The interval specifying how frequently the monitor instance of this template will run. If this parameter is not provided when creating a new monitor, then the default value will be 5. This value B(must) be less than the C(timeout) value.",
			]

			type: "int"
		}
		timeout: {
			description: [
				"The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second. If this parameter is not provided when creating a new monitor, then the default value will be 16.",
			]

			type: "int"
		}
		time_until_up: {
			description: [
				"Specifies the amount of time in seconds after the first successful response before a node will be marked up. A value of 0 will cause a node to be marked up immediately after a valid response is received from the node. If this parameter is not provided when creating a new monitor, then the default value will be 0.",
			]

			type: "int"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:          "str"
			default:       "Common"
			version_added: 2.5
		}
		state: {
			description: [
				"When C(present), ensures that the monitor exists.",
				"When C(absent), ensures the monitor is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default:       "present"
			version_added: 2.5
		}
	}
	notes: [
		"Requires BIG-IP software version >= 12",
	]
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
