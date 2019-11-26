package ansible

module: bigip_monitor_http: {
	module:            "bigip_monitor_http"
	short_description: "Manages F5 BIG-IP LTM http monitors"
	description:       "Manages F5 BIG-IP LTM http monitors."
	version_added:     2.5
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
				"The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(http) parent on the C(Common) partition.",
			]

			type:    "str"
			default: "/Common/http"
		}
		description: {
			description: [
				"The description of the monitor.",
			]
			type:          "str"
			version_added: 2.7
		}
		send: {
			description: [
				"The send string for the monitor call. When creating a new monitor, if this value is not provided, the default C(GET /\\r\\n) will be used.",
			]

			type: "str"
		}
		receive: {
			description: [
				"The receive string for the monitor call.",
			]
			type: "str"
		}
		receive_disable: {
			description: [
				"This setting works like C(receive), except that the system marks the node or pool member disabled when its response matches the C(receive_disable) string but not C(receive). To use this setting, you must specify both C(receive_disable) and C(receive).",
			]

			type: "str"
		}
		ip: {
			description: [
				"IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.",
			]

			type: "str"
		}
		port: {
			description: [
				"Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified.",
			]

			type: "str"
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
		target_username: {
			description: [
				"Specifies the user name, if the monitored target requires authentication.",
			]
			type: "str"
		}
		target_password: {
			description: [
				"Specifies the password, if the monitored target requires authentication.",
			]
			type: "str"
		}
		reverse: {
			description: [
				"Specifies whether the monitor operates in reverse mode.",
				"When the monitor is in reverse mode, a successful receive string match marks the monitored object down instead of up. You can use the this mode only if you configure the C(receive) option.",
				"This parameter is not compatible with the C(time_until_up) parameter. If C(time_until_up) is specified, it must be C(0). Or, if it already exists, it must be C(0).",
			]

			type:          "bool"
			version_added: 2.8
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
