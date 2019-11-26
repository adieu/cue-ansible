package ansible

module: vmware_local_role_manager: {
	module:            "vmware_local_role_manager"
	short_description: "Manage local roles on an ESXi host"
	description: [
		"This module can be used to manage local roles on an ESXi host.",
	]
	version_added: 2.5
	author: [
		"Abhijeet Kasurde (@Akasurde)",
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested on ESXi 6.5",
		"Be sure that the ESXi user used for login, has the appropriate rights to create / delete / edit roles",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		local_role_name: {
			description: [
				"The local role name to be managed.",
			]
			required: true
			type:     "str"
		}
		local_privilege_ids: {
			description: [
				"The list of privileges that role needs to have.",
				"Please see U(https://docs.vmware.com/en/VMware-vSphere/6.0/com.vmware.vsphere.security.doc/GUID-ED56F3C4-77D0-49E3-88B6-B99B8B437B62.html)",
			]
			default: []
			type: "list"
		}
		state: {
			description: [
				"Indicate desired state of the role.",
				"If the role already exists when C(state=present), the role info is updated.",
			]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		force_remove: {
			description: [
				"If set to C(False) then prevents the role from being removed if any permissions are using it.",
			]
			default: false
			type:    "bool"
		}
		action: {
			description: [
				"This parameter is only valid while updating an existing role with privileges.",
				"C(add) will add the privileges to the existing privilege list.",
				"C(remove) will remove the privileges from the existing privilege list.",
				"C(set) will replace the privileges of the existing privileges with user defined list of privileges.",
			]
			default: "set"
			choices: ["add", "remove", "set"]
			version_added: 2.8
			type:          "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
