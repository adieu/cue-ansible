package ansible

module: rundeck_acl_policy: {
	module: "rundeck_acl_policy"

	short_description: "Manage Rundeck ACL policies."
	description: [
		"Create, update and remove Rundeck ACL policies through HTTP API.",
	]
	version_added: "2.4"
	author:        "Loic Blot (@nerzhul)"
	options: {
		state: {
			description: [
				"Create or remove Rundeck project.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		name: {
			description: [
				"Sets the project name.",
			]
			required: true
		}
		url: {
			description: [
				"Sets the rundeck instance URL.",
			]
			required: true
		}
		api_version: {
			description: [
				"Sets the API version used by module.",
				"API version must be at least 14.",
			]
			default: 14
		}
		token: {
			description: [
				"Sets the token to authenticate against Rundeck API.",
			]
			required: true
		}
		project: description: [
			"Sets the project which receive the ACL policy.",
			"If unset, it's a system ACL policy.",
		]
		policy: description: [
			"Sets the ACL policy content.",
			"ACL policy content is a YAML object as described in http://rundeck.org/docs/man5/aclpolicy.html.",
			"It can be a YAML string or a pure Ansible inventory YAML object.",
		]
	}
}
