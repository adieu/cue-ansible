package ansible

module: cs_router: {
	module:            "cs_router"
	short_description: "Manages routers on Apache CloudStack based clouds."
	description: [
		"Start, restart, stop and destroy routers.",
		"I(state=present) is not able to create routers, use M(cs_network) instead.",
	]
	version_added: "2.2"
	author:        "René Moser (@resmo)"
	options: {
		name: {
			description: ["Name of the router."]
			type:     "str"
			required: true
		}
		service_offering: {
			description: ["Name or id of the service offering of the router."]
			type: "str"
		}
		domain: {
			description: ["Domain the router is related to."]
			type: "str"
		}
		account: {
			description: ["Account the router is related to."]
			type: "str"
		}
		project: {
			description: ["Name of the project the router is related to."]
			type: "str"
		}
		zone: {
			description: [
				"Name of the zone the router is deployed in.",
				"If not set, all zones are used.",
			]
			type:          "str"
			version_added: "2.4"
		}
		state: {
			description: ["State of the router."]
			type:    "str"
			default: "present"
			choices: ["present", "absent", "started", "stopped", "restarted"]
		}
		poll_async: {
			description: ["Poll async jobs until job has finished."]
			default: true
			type:    "bool"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
