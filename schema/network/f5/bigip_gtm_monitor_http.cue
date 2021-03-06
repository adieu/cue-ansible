package ansible

module: bigip_gtm_monitor_http: {
	module:            "bigip_gtm_monitor_http"
	short_description: "Manages F5 BIG-IP GTM http monitors"
	description: [
		"Manages F5 BIG-IP GTM http monitors.",
	]
	version_added: 2.6
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
				"The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(tcp) parent on the C(Common) partition.",
			]

			type:    "str"
			default: "/Common/http"
		}
		send: {
			description: [
				"The send string for the monitor call.",
				"When creating a new monitor, if this parameter is not provided, the default of C(GET /\\r\\n) will be used.",
			]

			type: "str"
		}
		receive: {
			description: [
				"The receive string for the monitor call.",
			]
			type: "str"
		}
		ip: {
			description: [
				"IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.",
				"If this value is an IP address, then a C(port) number must be specified.",
			]
			type: "str"
		}
		port: {
			description: [
				"Port address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'. Note that if specifying an IP address, a value between 1 and 65535 must be specified",
			]

			type: "str"
		}
		interval: {
			description: [
				"The interval specifying how frequently the monitor instance of this template will run.",
				"If this parameter is not provided when creating a new monitor, then the default value will be 30.",
				"This value B(must) be less than the C(timeout) value.",
			]
			type: "int"
		}
		timeout: {
			description: [
				"The number of seconds in which the node or service must respond to the monitor request. If the target responds within the set time period, it is considered up. If the target does not respond within the set time period, it is considered down. You can change this number to any number you want, however, it should be 3 times the interval number of seconds plus 1 second.",
				"If this parameter is not provided when creating a new monitor, then the default value will be 120.",
			]

			type: "int"
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
				"When C(present), ensures that the monitor exists.",
				"When C(absent), ensures the monitor is removed.",
			]
			type: "str"
			choices: [
				"present",
				"absent",
			]
			default: "present"
		}
		probe_timeout: {
			description: [
				"Specifies the number of seconds after which the system times out the probe request to the system.",
				"When creating a new monitor, if this parameter is not provided, then the default value will be C(5).",
			]

			type: "int"
		}
		ignore_down_response: {
			description: [
				"Specifies that the monitor allows more than one probe attempt per interval.",
				"When C(yes), specifies that the monitor ignores down responses for the duration of the monitor timeout. Once the monitor timeout is reached without the system receiving an up response, the system marks the object down.",
				"When C(no), specifies that the monitor immediately marks an object down when it receives a down response.",
				"When creating a new monitor, if this parameter is not provided, then the default value will be C(no).",
			]

			type: "bool"
		}
		transparent: {
			description: [
				"Specifies whether the monitor operates in transparent mode.",
				"A monitor in transparent mode directs traffic through the associated pool members or nodes (usually a router or firewall) to the aliased destination (that is, it probes the C(ip)-C(port) combination specified in the monitor).",
				"If the monitor cannot successfully reach the aliased destination, the pool member or node through which the monitor traffic was sent is marked down.",
				"When creating a new monitor, if this parameter is not provided, then the default value will be C(no).",
			]

			type: "bool"
		}
		reverse: {
			description: [
				"Instructs the system to mark the target resource down when the test is successful. This setting is useful, for example, if the content on your web site home page is dynamic and changes frequently, you may want to set up a reverse ECV service check that looks for the string Error.",
				"A match for this string means that the web server was down.",
				"To use this option, you must specify values for C(send) and C(receive).",
			]
			type: "bool"
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
		update_password: {
			description: [
				"C(always) will update passwords if the C(target_password) is specified.",
				"C(on_create) will only set the password for newly created monitors.",
			]
			type: "str"
			choices: [
				"always",
				"on_create",
			]
			default: "always"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
