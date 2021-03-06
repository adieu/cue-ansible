package ansible

module: utm_aaa_group: {
	module: "utm_aaa_group"

	author: [
		"Johannes Brunswicker (@MatrixCrawler)",
	]

	short_description: "Create, update or destroy an aaa group object in Sophos UTM."

	description: [
		"Create, update or destroy an aaa group object in Sophos UTM.",
		"This module needs to have the REST Ability of the UTM to be activated.",
	]

	version_added: "2.8"

	options: {
		name: {
			description: [
				"The name of the object. Will be used to identify the entry.",
			]
			type:     "str"
			required: true
		}
		adirectory_groups: {
			description: [
				"List of adirectory group strings.",
			]
			type: "list"
		}
		adirectory_groups_sids: {
			description: [
				"Dictionary of group sids.",
			]
			type: "dict"
		}
		backend_match: {
			description: [
				"The backend for the group.",
			]
			type: "str"
			choices: [
				"none",
				"adirectory",
				"edirectory",
				"radius",
				"tacacs",
				"ldap",
			]
			default: "none"
		}
		comment: {
			description: [
				"Comment that describes the AAA group.",
			]
			type:    "str"
			default: ""
		}
		dynamic: {
			description: [
				"Group type. Is static if none is selected.",
			]
			type:    "str"
			default: "none"
			choices: [
				"none",
				"ipsec_dn",
				"directory_groups",
			]
		}
		edirectory_groups: {
			description: [
				"List of edirectory group strings.",
			]
			type: "list"
		}
		ipsec_dn: {
			description: [
				"The ipsec dn string.",
			]
			type: "str"
		}
		ldap_attribute: {
			description: [
				"The ldap attribute to check against.",
			]
			type: "str"
		}
		ldap_attribute_value: {
			description: [
				"The ldap attribute value to check against.",
			]
			type: "str"
		}
		members: {
			description: [
				"A list of user ref names (aaa/user).",
			]
			type: "list"
			default: []
		}
		network: {
			description: [
				"The network reference name. The objects contains the known ip addresses for the authentication object (network/aaa).",
			]
			type:    "str"
			default: ""
		}
		radius_groups: {
			description: [
				"A list of radius group strings.",
			]
			type: "list"
			default: []
		}
		tacacs_groups: {
			description: [
				"A list of tacacs group strings.",
			]
			type: "list"
			default: []
		}
	}

	extends_documentation_fragment: ["utm"]
}
