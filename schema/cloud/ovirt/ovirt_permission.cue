package ansible

module: ovirt_permission: {
	module:            "ovirt_permission"
	short_description: "Module to manage permissions of users/groups in oVirt/RHV"
	version_added:     "2.3"
	author: [
		"Ondra Machacek (@machacekondra)",
	]
	description: [
		"Module to manage permissions of users/groups in oVirt/RHV.",
	]
	options: {
		role: {
			description: [
				"Name of the role to be assigned to user/group on specific object.",
			]
			default: "UserRole"
		}
		state: {
			description: [
				"Should the permission be present/absent.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		object_id: description: [
			"ID of the object where the permissions should be managed.",
		]
		object_name: description: [
			"Name of the object where the permissions should be managed.",
		]
		object_type: {
			description: [
				"The object where the permissions should be managed.",
			]
			choices: [
				"cluster",
				"cpu_profile",
				"data_center",
				"disk",
				"disk_profile",
				"host",
				"network",
				"storage_domain",
				"system",
				"template",
				"vm",
				"vm_pool",
				"vnic_profile",
			]
			default: "vm"
		}
		user_name: description: [
			"Username of the user to manage. In most LDAPs it's I(uid) of the user, but in Active Directory you must specify I(UPN) of the user.",
			"Note that if user does not exist in the system this module will fail, you should ensure the user exists by using M(ovirt_users) module.",
		]

		group_name: description: [
			"Name of the group to manage.",
			"Note that if group does not exist in the system this module will fail, you should ensure the group exists by using M(ovirt_groups) module.",
		]

		authz_name: {
			description: [
				"Authorization provider of the user/group.",
			]
			required: true
			aliases: ["domain"]
		}
		namespace: description: [
			"Namespace of the authorization provider, where user/group resides.",
		]
		quota_name: {
			description: [
				"Name of the quota to assign permission. Works only with C(object_type) I(data_center).",
			]
			version_added: "2.7"
		}
	}
	extends_documentation_fragment: "ovirt"
}
