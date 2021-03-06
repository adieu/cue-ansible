package ansible

module: cs_vpc_offering: {
	module:            "cs_vpc_offering"
	short_description: "Manages vpc offerings on Apache CloudStack based clouds."
	description: [
		"Create, update, enable, disable and remove CloudStack VPC offerings.",
	]
	version_added: "2.5"
	author:        "David Passante (@dpassante)"
	options: {
		name: {
			description: [
				"The name of the vpc offering",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"State of the vpc offering.",
			]
			type: "str"
			choices: ["enabled", "present", "disabled", "absent"]
			default: "present"
		}
		display_text: {
			description: [
				"Display text of the vpc offerings",
			]
			type: "str"
		}
		service_capabilities: {
			description: [
				"Desired service capabilities as part of vpc offering.",
			]
			type: "list"
			aliases: ["service_capability"]
		}
		service_offering: {
			description: [
				"The name or ID of the service offering for the VPC router appliance.",
			]
			type: "str"
		}
		supported_services: {
			description: [
				"Services supported by the vpc offering",
			]
			type: "list"
			aliases: ["supported_service"]
		}
		service_providers: {
			description: [
				"provider to service mapping. If not specified, the provider for the service will be mapped to the default provider on the physical network",
			]
			type: "list"
			aliases: ["service_provider"]
		}
		poll_async: {
			description: [
				"Poll async jobs until job has finished.",
			]
			default: true
			type:    "bool"
		}
	}
	extends_documentation_fragment: "cloudstack"
}
