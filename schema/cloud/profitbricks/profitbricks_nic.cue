package ansible

module: profitbricks_nic: {
	module:            "profitbricks_nic"
	short_description: "Create or Remove a NIC."
	description: [
		"This module allows you to create or restore a volume snapshot. This module has a dependency on profitbricks >= 1.0.0",
	]
	version_added: "2.0"
	options: {
		datacenter: {
			description: [
				"The datacenter in which to operate.",
			]
			required: true
		}
		server: {
			description: [
				"The server name or ID.",
			]
			required: true
		}
		name: {
			description: [
				"The name or ID of the NIC. This is only required on deletes, but not on create.",
			]
			required: true
		}
		lan: {
			description: [
				"The LAN to place the NIC on. You can pass a LAN that doesn't exist and it will be created. Required on create.",
			]
			required: true
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
				"wait for the operation to complete before returning",
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
				"Indicate desired state of the resource",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}

	requirements: ["profitbricks"]
	author: "Matt Baldwin (@baldwinSPC) <baldwin@stackpointcloud.com>"
}
