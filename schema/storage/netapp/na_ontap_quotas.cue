package ansible

module: na_ontap_quotas: {
	module:            "na_ontap_quotas"
	short_description: "NetApp ONTAP Quotas"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.8"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Set/Modify/Delete quota on ONTAP",
	]
	options: {
		state: {
			description: [
				"Whether the specified quota should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		vserver: {
			required: true
			description: [
				"Name of the vserver to use.",
			]
			type: "str"
		}
		volume: {
			description: [
				"The name of the volume that the quota resides on.",
			]
			required: true
			type:     "str"
		}
		quota_target: {
			description: [
				"The quota target of the type specified.",
			]
			required: true
			type:     "str"
		}
		qtree: {
			description: [
				"Name of the qtree for the quota.",
				"For user or group rules, it can be the qtree name or \"\" if no qtree.",
				"For tree type rules, this field must be \"\".",
			]
			default: ""
			type:    "str"
		}
		type: {
			description: [
				"The type of quota rule",
			]
			choices: ["user", "group", "tree"]
			required: true
			type:     "str"
		}
		policy: {
			description: [
				"Name of the quota policy from which the quota rule should be obtained.",
			]
			type: "str"
		}
		set_quota_status: {
			description: [
				"Whether the specified volume should have quota status on or off.",
			]
			type: "bool"
		}
		file_limit: {
			description: [
				"The number of files that the target can have.",
			]
			default: "-"
			type:    "str"
		}
		disk_limit: {
			description: [
				"The amount of disk space that is reserved for the target.",
			]
			default: "-"
			type:    "str"
		}
		threshold: {
			description: [
				"The amount of disk space the target would have to exceed before a message is logged.",
			]
			default: "-"
			type:    "str"
		}
	}
}
