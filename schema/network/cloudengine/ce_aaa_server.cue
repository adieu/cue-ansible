package ansible

module: ce_aaa_server: {
	module:            "ce_aaa_server"
	version_added:     "2.4"
	short_description: "Manages AAA server global configuration on HUAWEI CloudEngine switches."
	description: [
		"Manages AAA server global configuration on HUAWEI CloudEngine switches.",
	]
	author: [
		"wangdezhuang (@QijunPan)",
	]
	notes: [
		"This module requires the netconf system service be enabled on the remote device being managed.",
		"Recommended connection is C(netconf).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: {
		state: {
			description: [
				"Specify desired state of the resource.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		authen_scheme_name: {
			description: [
				"Name of an authentication scheme. The value is a string of 1 to 32 characters.",
			]

			type: "str"
		}
		first_authen_mode: {
			description: [
				"Preferred authentication mode.",
			]
			type: "str"
			choices: ["invalid", "local", "hwtacacs", "radius", "none"]
			default: "local"
		}
		author_scheme_name: {
			description: [
				"Name of an authorization scheme. The value is a string of 1 to 32 characters.",
			]

			type: "str"
		}
		first_author_mode: {
			description: [
				"Preferred authorization mode.",
			]
			type: "str"
			choices: ["invalid", "local", "hwtacacs", "if-authenticated", "none"]
			default: "local"
		}
		acct_scheme_name: {
			description: [
				"Accounting scheme name. The value is a string of 1 to 32 characters.",
			]

			type: "str"
		}
		accounting_mode: {
			description: [
				"Accounting Mode.",
			]
			type: "str"
			choices: ["invalid", "hwtacacs", "radius", "none"]
			default: "none"
		}
		domain_name: {
			description: [
				"Name of a domain. The value is a string of 1 to 64 characters.",
			]

			type: "str"
		}
		radius_server_group: {
			description: [
				"RADIUS server group's name. The value is a string of 1 to 32 case-insensitive characters.",
			]

			type: "str"
		}
		hwtacas_template: {
			description: [
				"Name of a HWTACACS template. The value is a string of 1 to 32 case-insensitive characters.",
			]

			type: "str"
		}
		local_user_group: {
			description: [
				"Name of the user group where the user belongs. The user inherits all the rights of the user group. The value is a string of 1 to 32 characters.",
			]

			type: "str"
		}
	}
}
