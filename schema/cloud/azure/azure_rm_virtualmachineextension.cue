package ansible

module: azure_rm_virtualmachineextension: {
	module: "azure_rm_virtualmachineextension"

	version_added: "2.4"

	short_description: "Managed Azure Virtual Machine extension"

	description: [
		"Create, update and delete Azure Virtual Machine Extension.",
		"Note that this module was called M(azure_rm_virtualmachine_extension) before Ansible 2.8. The usage did not change.",
	]

	options: {
		resource_group: {
			description: [
				"Name of a resource group where the vm extension exists or will be created.",
			]
			required: true
		}
		name: {
			description: [
				"Name of the vm extension.",
			]
			required: true
		}
		state: {
			description: [
				"State of the vm extension. Use C(present) to create or update a vm extension and C(absent) to delete a vm extension.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
		location: description: [
			"Valid Azure location. Defaults to location of the resource group.",
		]
		virtual_machine_name: description: [
			"The name of the virtual machine where the extension should be create or updated.",
		]
		publisher: description: [
			"The name of the extension handler publisher.",
		]
		virtual_machine_extension_type: description: [
			"The type of the extension handler.",
		]
		type_handler_version: description: [
			"The type version of the extension handler.",
		]
		settings: description: [
			"Json formatted public settings for the extension.",
		]
		protected_settings: description: [
			"Json formatted protected settings for the extension.",
		]
		auto_upgrade_minor_version: {
			description: [
				"Whether the extension handler should be automatically upgraded across minor versions.",
			]
			type: "bool"
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Sertac Ozercan (@sozercan)",
		"Julien Stroheker (@julienstroheker)",
	]
}
