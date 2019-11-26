package ansible

module: profitbricks_datacenter: {
	module:            "profitbricks_datacenter"
	short_description: "Create or destroy a ProfitBricks Virtual Datacenter."
	description: [
		"This is a simple module that supports creating or removing vDCs. A vDC is required before you can create servers. This module has a dependency on profitbricks >= 1.0.0",
	]

	version_added: "2.0"
	options: {
		name: {
			description: [
				"The name of the virtual datacenter.",
			]
			required: true
		}
		description: {
			description: [
				"The description of the virtual datacenter.",
			]
			required: false
		}
		location: {
			description: [
				"The datacenter location.",
			]
			required: false
			default:  "us/las"
			choices: ["us/las", "de/fra", "de/fkb"]
		}
		subscription_user: {
			description: [
				"The ProfitBricks username. Overrides the PB_SUBSCRIPTION_ID environment variable.",
			]
			required: false
		}
		subscription_password: {
			description: [
				"THe ProfitBricks password. Overrides the PB_PASSWORD environment variable.",
			]
			required: false
		}
		wait: {
			description: [
				"wait for the datacenter to be created before returning",
			]
			required: false
			default:  "yes"
			type:     "bool"
		}
		wait_timeout: {
			description: [
				"how long before wait gives up, in seconds",
			]
			default: 600
		}
		state: {
			description: [
				"create or terminate datacenters",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}

	requirements: ["profitbricks"]
	author: "Matt Baldwin (@baldwinSPC) <baldwin@stackpointcloud.com>"
}
