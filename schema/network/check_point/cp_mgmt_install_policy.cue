package ansible

module: cp_mgmt_install_policy: {
	module:            "cp_mgmt_install_policy"
	short_description: "install policy on Check Point over Web Services API"
	description: [
		"install policy on Check Point over Web Services API",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		policy_package: {
			description: [
				"The name of the Policy Package to be installed.",
			]
			type: "str"
		}
		targets: {
			description: [
				"On what targets to execute this command. Targets may be identified by their name, or object unique identifier.",
			]
			type: "list"
		}
		access: {
			description: [
				"Set to be true in order to install the Access Control policy. By default, the value is true if Access Control policy is enabled on the input policy package, otherwise false.",
			]

			type: "bool"
		}
		desktop_security: {
			description: [
				"Set to be true in order to install the Desktop Security policy. By default, the value is true if desktop security policy is enabled on the input policy package, otherwise false.",
			]

			type: "bool"
		}
		qos: {
			description: [
				"Set to be true in order to install the QoS policy. By default, the value is true if Quality-of-Service policy is enabled on the input policy package, otherwise false.",
			]

			type: "bool"
		}
		threat_prevention: {
			description: [
				"Set to be true in order to install the Threat Prevention policy. By default, the value is true if Threat Prevention policy is enabled on the input policy package, otherwise false.",
			]

			type: "bool"
		}
		install_on_all_cluster_members_or_fail: {
			description: [
				"Relevant for the gateway clusters. If true, the policy is installed on all the cluster members. If the installation on a cluster member fails, don't install on that cluster.",
			]

			type: "bool"
		}
		prepare_only: {
			description: [
				"If true, prepares the policy for the installation, but doesn't install it on an installation target.",
			]
			type: "bool"
		}
		revision: {
			description: [
				"The UID of the revision of the policy to install.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "checkpoint_commands"
}
