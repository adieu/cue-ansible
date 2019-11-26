package ansible

module: kubevirt_vm: {
	module: "kubevirt_vm"

	short_description: "Manage KubeVirt virtual machine"

	description: [
		"Use Openshift Python SDK to manage the state of KubeVirt virtual machines.",
	]

	version_added: "2.8"

	author: "KubeVirt Team (@kubevirt)"

	options: {
		state: {
			description: [
				"Set the virtual machine to either I(present), I(absent), I(running) or I(stopped).",
				"I(present) - Create or update a virtual machine. (And run it if it's ephemeral.)",
				"I(absent) - Remove a virtual machine.",
				"I(running) - Create or update a virtual machine and run it.",
				"I(stopped) - Stop a virtual machine. (This deletes ephemeral VMs.)",
			]
			default: "present"
			choices: [
				"present",
				"absent",
				"running",
				"stopped",
			]
			type: "str"
		}
		name: {
			description: [
				"Name of the virtual machine.",
			]
			required: true
			type:     "str"
		}
		namespace: {
			description: [
				"Namespace where the virtual machine exists.",
			]
			required: true
			type:     "str"
		}
		ephemeral: {
			description: [
				"If (true) ephemeral virtual machine will be created. When destroyed it won't be accessible again.",
				"Works only with C(state) I(present) and I(absent).",
			]
			type:    "bool"
			default: false
		}
		datavolumes: {
			description: [
				"DataVolumes are a way to automate importing virtual machine disks onto pvcs during the virtual machine's launch flow. Without using a DataVolume, users have to prepare a pvc with a disk image before assigning it to a VM or VMI manifest. With a DataVolume, both the pvc creation and import is automated on behalf of the user.",
			]

			type: "list"
		}
		template: {
			description: [
				"Name of Template to be used in creation of a virtual machine.",
			]
			type: "str"
		}
		template_parameters: {
			description: [
				"New values of parameters from Template.",
			]
			type: "dict"
		}
	}

	extends_documentation_fragment: [
		"k8s_auth_options",
		"kubevirt_vm_options",
		"kubevirt_common_options",
	]

	requirements: [
		"python >= 2.7",
		"openshift >= 0.8.2",
	]
}
