package ansible

module: na_cdot_user: {
	module: "na_cdot_user"

	short_description: "useradmin configuration and management"
	extends_documentation_fragment: [
		"netapp.ontap",
	]
	version_added: "2.3"
	author:        "Sumit Kumar (@timuster) <sumit4@netapp.com>"

	deprecated: {
		removed_in:  "2.11"
		why:         "Updated modules released with increased functionality"
		alternative: "Use M(na_ontap_user) instead."
	}

	description: [
		"Create or destroy users.",
	]

	options: {

		state: {
			description: [
				"Whether the specified user should exist or not.",
			]
			required: true
			choices: ["present", "absent"]
		}

		name: {
			description: [
				"The name of the user to manage.",
			]
			required: true
		}

		application: {
			description: [
				"Applications to grant access to.",
			]
			required: true
			choices: ["console", "http", "ontapi", "rsh", "snmp", "sp", "ssh", "telnet"]
		}

		authentication_method: {
			description: [
				"Authentication method for the application.",
				"Not all authentication methods are valid for an application.",
				"Valid authentication methods for each application are as denoted in I(authentication_choices_description).",
				"password for console application",
				"password, domain, nsswitch, cert for http application.",
				"password, domain, nsswitch, cert for ontapi application.",
				"community for snmp application (when creating SNMPv1 and SNMPv2 users).",
				"usm and community for snmp application (when creating SNMPv3 users).",
				"password for sp application.",
				"password for rsh application.",
				"password for telnet application.",
				"password, publickey, domain, nsswitch for ssh application.",
			]
			required: true
			choices: ["community", "password", "publickey", "domain", "nsswitch", "usm"]
		}

		set_password: description: [
			"Password for the user account.",
			"It is ignored for creating snmp users, but is required for creating non-snmp users.",
			"For an existing user, this value will be used as the new password.",
		]

		role_name: description: [
			"The name of the role. Required when C(state=present)",
		]

		vserver: {
			description: [
				"The name of the vserver to use.",
			]
			required: true
		}
	}
}
