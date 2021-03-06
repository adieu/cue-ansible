package ansible

module: avi_serviceengine: {
	module: "avi_serviceengine"
	author: "Gaurav Rastogi (@grastogi23) <grastogi@avinetworks.com>"

	short_description: "Module for setup of ServiceEngine Avi RESTful Object"
	description: [
		"This module is used to configure ServiceEngine object",
		"more examples at U(https://github.com/avinetworks/devops)",
	]
	requirements: ["avisdk"]
	version_added: "2.4"
	options: {
		state: {
			description: [
				"The state that should be applied on the entity.",
			]
			default: "present"
			choices: ["absent", "present"]
		}
		avi_api_update_method: {
			description: [
				"Default method for object update is HTTP PUT.",
				"Setting to patch will override that behavior to use HTTP PATCH.",
			]
			version_added: "2.5"
			default:       "put"
			choices: ["put", "patch"]
		}
		avi_api_patch_op: {
			description: [
				"Patch operation to use when using avi_api_update_method as patch.",
			]
			version_added: "2.5"
			choices: ["add", "replace", "delete"]
		}
		availability_zone: description: [
			"Availability_zone of serviceengine.",
		]
		cloud_ref: description: [
			"It is a reference to an object of type cloud.",
		]
		container_mode: {
			description: [
				"Boolean flag to set container_mode.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		container_type: description: [
			"Enum options - container_type_bridge, container_type_host, container_type_host_dpdk.",
			"Default value when not specified in API or module is interpreted by Avi Controller as CONTAINER_TYPE_HOST.",
		]
		controller_created: {
			description: [
				"Boolean flag to set controller_created.",
				"Default value when not specified in API or module is interpreted by Avi Controller as False.",
			]
			type: "bool"
		}
		controller_ip: description: [
			"Controller_ip of serviceengine.",
		]
		data_vnics: description: [
			"List of vnic.",
		]
		enable_state: description: [
			"Inorder to disable se set this field appropriately.",
			"Enum options - SE_STATE_ENABLED, SE_STATE_DISABLED_FOR_PLACEMENT, SE_STATE_DISABLED, SE_STATE_DISABLED_FORCE.",
			"Default value when not specified in API or module is interpreted by Avi Controller as SE_STATE_ENABLED.",
		]
		flavor: description: [
			"Flavor of serviceengine.",
		]
		host_ref: description: [
			"It is a reference to an object of type vimgrhostruntime.",
		]
		hypervisor: description: [
			"Enum options - default, vmware_esx, kvm, vmware_vsan, xen.",
		]
		mgmt_vnic: description: [
			"Vnic settings for serviceengine.",
		]
		name: description: [
			"Name of the object.",
			"Default value when not specified in API or module is interpreted by Avi Controller as VM name unknown.",
		]
		resources: description: [
			"Seresources settings for serviceengine.",
		]
		se_group_ref: description: [
			"It is a reference to an object of type serviceenginegroup.",
		]
		tenant_ref: description: [
			"It is a reference to an object of type tenant.",
		]
		url: description: [
			"Avi controller URL of the object.",
		]
		uuid: description: [
			"Unique object identifier of the object.",
		]
	}
	extends_documentation_fragment: ["avi"]
}
