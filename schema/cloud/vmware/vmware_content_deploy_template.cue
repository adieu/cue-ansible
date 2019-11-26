package ansible

module: vmware_content_deploy_template: {
	module:            "vmware_content_deploy_template"
	short_description: "Deploy Virtual Machine from template stored in content library."
	description: [
		"Module to deploy virtual machine from template in content library.",
		"Content Library feature is introduced in vSphere 6.0 version, so this module is not supported in the earlier versions of vSphere.",
		"All variables and VMware object names are case sensitive.",
	]
	version_added: "2.9"
	author: [
		"Pavan Bidkar (@pgbidkar)",
	]
	notes: [
		"Tested on vSphere 6.7 U3",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
		"vSphere Automation SDK",
	]
	options: {
		template: {
			description: [
				"The name of template from which VM to be deployed.",
			]
			type:     "str"
			required: true
			aliases: ["template_src"]
		}
		name: {
			description: [
				"The name of the VM to be deployed.",
			]
			type:     "str"
			required: true
			aliases: ["vm_name"]
		}
		datacenter: {
			description: [
				"Name of the datacenter, where VM to be deployed.",
			]
			type:     "str"
			required: true
		}
		datastore: {
			description: [
				"Name of the datastore to store deployed VM and disk.",
			]
			type:     "str"
			required: true
		}
		folder: {
			description: [
				"Name of the folder in datacenter in which to place deployed VM.",
			]
			type:     "str"
			required: true
		}
		host: {
			description: [
				"Name of the ESX Host in datacenter in which to place deployed VM.",
			]
			type:     "str"
			required: true
		}
		resource_pool: {
			description: [
				"Name of the resourcepool in datacenter in which to place deployed VM.",
			]
			type:     "str"
			required: false
		}
		cluster: {
			description: [
				"Name of the cluster in datacenter in which to place deployed VM.",
			]
			type:     "str"
			required: false
		}
		state: {
			description: [
				"The state of Virtual Machine deployed from template in content library.",
				"If set to C(present) and VM does not exists, then VM is created.",
				"If set to C(present) and VM exists, no action is taken.",
				"If set to C(poweredon) and VM does not exists, then VM is created with powered on state.",
				"If set to C(poweredon) and VM exists, no action is taken.",
			]
			type:     "str"
			required: false
			default:  "present"
			choices: ["present", "poweredon"]
		}
	}
	extends_documentation_fragment: "vmware_rest_client.documentation"
}
