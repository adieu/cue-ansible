package ansible

module: azure_rm_virtualmachinescalesetinstance: {
	module:            "azure_rm_virtualmachinescalesetinstance"
	version_added:     "2.8"
	short_description: "Get Azure Virtual Machine Scale Set Instance facts"
	description: [
		"Get facts of Azure Virtual Machine Scale Set VMs.",
	]

	options: {
		resource_group: {
			description: [
				"The name of the resource group.",
			]
			required: true
		}
		vmss_name: {
			description: [
				"The name of the VM scale set.",
			]
			required: true
		}
		instance_id: {
			description: [
				"The instance ID of the virtual machine.",
			]
			required: true
		}
		latest_model: {
			type: "bool"
			description: [
				"Set to C(yes) to upgrade to the latest model.",
			]
		}
		power_state: {
			description: [
				"Use this option to change power state of the instance.",
			]
			required: true
			choices: [
				"running",
				"stopped",
				"deallocated",
			]
		}
		state: {
			description: [
				"State of the VMSS instance. Use C(present) to update an instance and C(absent) to delete an instance.",
			]
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"azure",
	]

	author: [
		"Zim Kalinowski (@zikalino)",
	]
}
