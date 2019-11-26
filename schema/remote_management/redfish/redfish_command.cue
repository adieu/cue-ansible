package ansible

module: redfish_command: {
	module:            "redfish_command"
	version_added:     "2.7"
	short_description: "Manages Out-Of-Band controllers using Redfish APIs"
	description: [
		"Builds Redfish URIs locally and sends them to remote OOB controllers to perform an action.",
		"Manages OOB controller ex. reboot, log management.",
		"Manages OOB controller users ex. add, remove, update.",
		"Manages system power ex. on, off, graceful and forced reboot.",
	]
	options: {
		category: {
			required: true
			description: [
				"Category to execute on OOB controller",
			]
			type: "str"
		}
		command: {
			required: true
			description: [
				"List of commands to execute on OOB controller",
			]
			type: "list"
		}
		baseuri: {
			required: true
			description: [
				"Base URI of OOB controller",
			]
			type: "str"
		}
		username: {
			required: true
			description: [
				"Username for authentication with OOB controller",
			]
			type:          "str"
			version_added: "2.8"
		}
		password: {
			required: true
			description: [
				"Password for authentication with OOB controller",
			]
			type: "str"
		}
		id: {
			required: false
			aliases: ["account_id"]
			description: [
				"ID of account to delete/modify",
			]
			type:          "str"
			version_added: "2.8"
		}
		new_username: {
			required: false
			aliases: ["account_username"]
			description: [
				"Username of account to add/delete/modify",
			]
			type:          "str"
			version_added: "2.8"
		}
		new_password: {
			required: false
			aliases: ["account_password"]
			description: [
				"New password of account to add/modify",
			]
			type:          "str"
			version_added: "2.8"
		}
		roleid: {
			required: false
			aliases: ["account_roleid"]
			description: [
				"Role of account to add/modify",
			]
			type:          "str"
			version_added: "2.8"
		}
		bootdevice: {
			required: false
			description: [
				"bootdevice when setting boot configuration",
			]
			type: "str"
		}
		timeout: {
			description: [
				"Timeout in seconds for URL requests to OOB controller",
			]
			default:       10
			type:          "int"
			version_added: "2.8"
		}
		uefi_target: {
			required: false
			description: [
				"UEFI target when bootdevice is \"UefiTarget\"",
			]
			type:          "str"
			version_added: "2.9"
		}
		boot_next: {
			required: false
			description: [
				"BootNext target when bootdevice is \"UefiBootNext\"",
			]
			type:          "str"
			version_added: "2.9"
		}
		update_username: {
			required: false
			aliases: ["account_updatename"]
			description: [
				"new update user name for account_username",
			]
			type:          "str"
			version_added: "2.10"
		}
		account_properties: {
			required: false
			description: [
				"properties of account service to update",
			]
			type:          "dict"
			version_added: "2.10"
		}
		resource_id: {
			required: false
			description: [
				"The ID of the System, Manager or Chassis to modify",
			]
			type:          "str"
			version_added: "2.10"
		}
	}

	author: "Jose Delarosa (@jose-delarosa)"
}
