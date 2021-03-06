package ansible

module: vmware_content_library_manager: {
	module:            "vmware_content_library_manager"
	short_description: "Create, update and delete VMware content library"
	description: [
		"Module to manage VMware content Library",
		"Content Library feature is introduced in vSphere 6.0 version, so this module is not supported in the earlier versions of vSphere.",
		"All variables and VMware object names are case sensitive.",
	]
	version_added: "2.9"
	author: [
		"Pavan Bidkar (@pgbidkar)",
	]
	notes: [
		"Tested on vSphere 6.5, 6.7",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
		"vSphere Automation SDK",
	]
	options: {
		library_name: {
			description: [
				"The name of VMware content library to manage.",
			]
			type:     "str"
			required: true
		}
		library_description: {
			description: [
				"The content library description.",
				"This is required only if C(state) is set to C(present).",
				"This parameter is ignored, when C(state) is set to C(absent).",
				"Process of updating content library only allows description change.",
			]
			type:     "str"
			required: false
			default:  ""
		}
		library_type: {
			description: [
				"The content library type.",
				"This is required only if C(state) is set to C(present).",
				"This parameter is ignored, when C(state) is set to C(absent).",
			]
			type:     "str"
			required: false
			default:  "local"
			choices: ["local", "subscribed"]
		}
		datastore_name: {
			description: [
				"Name of the datastore on which backing content library is created.",
				"This is required only if C(state) is set to C(present).",
				"This parameter is ignored, when C(state) is set to C(absent).",
				"Currently only datastore backing creation is supported.",
			]
			type:     "str"
			required: false
			aliases: ["datastore"]
		}
		state: {
			description: [
				"The state of content library.",
				"If set to C(present) and library does not exists, then content library is created.",
				"If set to C(present) and library exists, then content library is updated.",
				"If set to C(absent) and library exists, then content library is deleted.",
				"If set to C(absent) and library does not exists, no action is taken.",
			]
			type:     "str"
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "vmware_rest_client.documentation"
}
