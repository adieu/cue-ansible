package ansible

module: redfish_config: {
	module:            "redfish_config"
	version_added:     "2.7"
	short_description: "Manages Out-Of-Band controllers using Redfish APIs"
	description: [
		"Builds Redfish URIs locally and sends them to remote OOB controllers to set or update a configuration attribute.",
		"Manages BIOS configuration settings.",
		"Manages OOB controller configuration settings.",
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
				"User for authentication with OOB controller",
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
		bios_attribute_name: {
			required: false
			description: [
				"name of BIOS attr to update (deprecated - use bios_attributes instead)",
			]
			default:       "null"
			type:          "str"
			version_added: "2.8"
		}
		bios_attribute_value: {
			required: false
			description: [
				"value of BIOS attr to update (deprecated - use bios_attributes instead)",
			]
			default:       "null"
			type:          "str"
			version_added: "2.8"
		}
		bios_attributes: {
			required: false
			description: [
				"dictionary of BIOS attributes to update",
			]
			default: {}
			type:          "dict"
			version_added: "2.10"
		}
		timeout: {
			description: [
				"Timeout in seconds for URL requests to OOB controller",
			]
			default:       10
			type:          "int"
			version_added: "2.8"
		}
		boot_order: {
			required: false
			description: [
				"list of BootOptionReference strings specifying the BootOrder",
			]
			default: []
			type:          "list"
			version_added: "2.10"
		}
		network_protocols: {
			required: false
			description: [
				"setting dict of manager services to update",
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
