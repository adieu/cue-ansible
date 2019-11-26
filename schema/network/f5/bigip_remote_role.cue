package ansible

module: bigip_remote_role: {
	module:            "bigip_remote_role"
	short_description: "Manage remote roles on a BIG-IP"
	description: [
		"Manages remote roles on a BIG-IP. Remote roles are used in situations where user authentication is handled off-box. Local access control to the BIG-IP is controlled by the defined remote role. Where-as authentication (and by extension, assignment to the role) is handled off-box.",
	]

	version_added: 2.7
	options: {
		name: {
			description: [
				"Specifies the name of the remote role.",
			]
			type:     "str"
			required: true
		}
		line_order: {
			description: [
				"Specifies the order of the line in the file C(/config/bigip/auth/remoterole).",
				"The LDAP and Active Directory servers read this file line by line.",
				"The order of the information is important; therefore, F5 recommends that you set the first line at 1000. This allows you, in the future, to insert lines before the first line.",
				"When creating a new remote role, this parameter is required.",
			]
			type: "int"
		}
		attribute_string: {
			description: [
				"Specifies the user account attributes saved in the group, in the format C(cn=, ou=, dc=).",
				"When creating a new remote role, this parameter is required.",
			]
			type: "str"
		}
		remote_access: {
			description: [
				"Enables or disables remote access for the specified group of remotely authenticated users.",
				"When creating a new remote role, if this parameter is not specified, the default is C(yes).",
			]

			type: "bool"
		}
		assigned_role: {
			description: [
				"Specifies the authorization (level of access) for the account.",
				"When creating a new remote role, if this parameter is not provided, the default is C(none).",
				"The C(partition_access) parameter controls which partitions the account can access.",
				"The chosen role may affect the partitions that one is allowed to specify. Specifically, roles such as C(administrator), C(auditor) and C(resource-administrator) required a C(partition_access) of C(all).",
				"A set of pre-existing roles ship with the system. They are C(none), C(guest), C(operator), C(application-editor), C(manager), C(certificate-manager), C(irule-manager), C(user-manager), C(resource-administrator), C(auditor), C(administrator), C(firewall-manager).",
			]

			type: "str"
		}
		partition_access: {
			description: [
				"Specifies the accessible partitions for the account.",
				"This parameter supports the reserved names C(all) and C(Common), as well as specific partitions a user may access.",
				"Users who have access to a partition can operate on objects in that partition, as determined by the permissions conferred by the user's C(assigned_role).",
				"When creating a new remote role, if this parameter is not specified, the default is C(all).",
			]

			type: "str"
		}
		terminal_access: {
			description: [
				"Specifies terminal-based accessibility for remote accounts not already explicitly assigned a user role.",
				"Common values for this include C(tmsh) and C(none), however custom values may also be specified.",
				"When creating a new remote role, if this parameter is not specified, the default is C(none).",
			]

			type: "str"
		}
		state: {
			description: [
				"When C(present), guarantees that the remote role exists.",
				"When C(absent), removes the remote role from the system.",
			]
			type: "str"
			choices: [
				"absent",
				"present",
			]
			default: "present"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
