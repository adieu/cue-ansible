package ansible

module: cs_pod: {
	module:            "cs_pod"
	short_description: "Manages pods on Apache CloudStack based clouds."
	description: [
		"Create, update, delete pods.",
	]
	version_added: "2.1"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the pod."]
			type:     "str"
			required: true
		}
		id: {
			description: ["uuid of the existing pod."]
			type: "str"
		}
		start_ip: {
			description: [
				"Starting IP address for the Pod.",
				"Required on I(state=present)",
			]
			type: "str"
		}
		end_ip: {
			description: ["Ending IP address for the Pod."]
			type: "str"
		}
		netmask: {
			description: [
				"Netmask for the Pod.",
				"Required on I(state=present)",
			]
			type: "str"
		}
		gateway: {
			description: [
				"Gateway for the Pod.",
				"Required on I(state=present)",
			]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone in which the pod belongs to.",
				"If not set, default zone is used.",
			]
			type: "str"
		}
		state: {
			description: ["State of the pod."]
			type:    "str"
			default: "present"
			choices: ["present", "enabled", "disabled", "absent"]
		}
	}
	extends_documentation_fragment: "cloudstack"
}
