package ansible

module: kubevirt_rs: {
	module: "kubevirt_rs"

	short_description: "Manage KubeVirt virtual machine replica sets"

	description: [
		"Use Openshift Python SDK to manage the state of KubeVirt virtual machine replica sets.",
	]

	version_added: "2.8"

	author: "KubeVirt Team (@kubevirt)"

	options: {
		state: {
			description: [
				"Create or delete virtual machine replica sets.",
			]
			default: "present"
			choices: [
				"present",
				"absent",
			]
			type: "str"
		}
		name: {
			description: [
				"Name of the virtual machine replica set.",
			]
			required: true
			type:     "str"
		}
		namespace: {
			description: [
				"Namespace where the virtual machine replica set exists.",
			]
			required: true
			type:     "str"
		}
		selector: {
			description: [
				"Selector is a label query over a set of virtual machine.",
			]
			required: true
			type:     "dict"
		}
		replicas: {
			description: [
				"Number of desired pods. This is a pointer to distinguish between explicit zero and not specified.",
				"Replicas defaults to 1 if newly created replica set.",
			]
			type: "int"
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
