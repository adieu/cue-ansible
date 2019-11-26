package ansible

module: bigip_gtm_monitor_bigip: {
	module:            "bigip_gtm_monitor_bigip"
	short_description: "Manages F5 BIG-IP GTM BIG-IP monitors"
	description: [
		"Manages F5 BIG-IP GTM BIG-IP monitors. This monitor is used by GTM to monitor BIG-IPs themselves.",
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
				"The parent template of this monitor template. Once this value has been set, it cannot be changed. By default, this value is the C(bigip) parent on the C(Common) partition.",
			]

			type:    "str"
			default: "/Common/bigip"
		}
		ip: {
			description: [
				"IP address part of the IP/port definition. If this parameter is not provided when creating a new monitor, then the default value will be '*'.",
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
				"Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown.",
				"When creating a new monitor, if this parameter is not provided, then the default value will be C(30). This value B(must) be less than the C(timeout) value.",
			]

			type: "int"
		}
		timeout: {
			description: [
				"Specifies the number of seconds the target has in which to respond to the monitor request.",
				"If the target responds within the set time period, it is considered up.",
				"If the target does not respond within the set time period, it is considered down.",
				"When this value is set to 0 (zero), the system uses the interval from the parent monitor.",
				"When creating a new monitor, if this parameter is not provided, then the default value will be C(90).",
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
		aggregate_dynamic_ratios: {
			description: [
				"Specifies how the system combines the module values to create the proportion (score) for the load balancing operation.",
				"The score represents the module's estimated capacity for handing traffic.",
				"Averaged values are appropriate for downstream Web Accelerator or Application Security Manager virtual servers.",
				"When creating a new monitor, if this parameter is not specified, the default of C(none) is used, meaning that the system does not use the scores in the load balancing operation.",
				"When C(none), specifies that the monitor ignores the nodes and pool member scores.",
				"When C(average-nodes), specifies that the system averages the dynamic ratios on the nodes associated with the monitor's target virtual servers and returns that average as the virtual servers' score.",
				"When C(sum-nodes), specifies that the system adds together the scores of the nodes associated with the monitor's target virtual servers and uses that value in the load balancing operation.",
				"When C(average-members), specifies that the system averages the dynamic ratios on the pool members associated with the monitor's target virtual servers and returns that average as the virtual servers' score.",
				"When C(sum-members), specifies that the system adds together the scores of the pool members associated with the monitor's target virtual servers and uses that value in the load balancing operation.",
			]

			type: "str"
			choices: [
				"none",
				"average-nodes",
				"sum-nodes",
				"average-members",
				"sum-members",
			]
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
