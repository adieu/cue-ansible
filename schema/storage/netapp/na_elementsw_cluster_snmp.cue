package ansible

module: na_elementsw_cluster_snmp: {
	module: "na_elementsw_cluster_snmp"

	short_description: "Configure Element SW Cluster SNMP"
	extends_documentation_fragment: [
		"netapp.solidfire",
	]
	version_added: "2.8"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Configure Element Software cluster SNMP.",
	]

	options: {

		state: {
			description: [
				"This module enables you to enable SNMP on cluster nodes. When you enable SNMP,           the action applies to all nodes in the cluster, and the values that are passed replace,           in whole, all values set in any previous call to this module.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		snmp_v3_enabled: {
			description: [
				"Which version of SNMP has to be enabled.",
			]
			type: "bool"
		}

		networks: {
			description: [
				"List of networks and what type of access they have to the SNMP servers running on the cluster nodes.",
				"This parameter is required if SNMP v3 is disabled.",
			]
			suboptions: {
				access: {
					description: [
						"ro for read-only access.",
						"rw for read-write access.",
						"rosys for read-only access to a restricted set of system information.",
					]
					choices: ["ro", "rw", "rosys"]
				}
				cidr: description: [
					"A CIDR network mask. This network mask must be an integer greater than or equal to 0,                   and less than or equal to 32. It must also not be equal to 31.",
				]
				community: description: [
					"SNMP community string.",
				]
				network: description: [
					"This parameter along with the cidr variable is used to control which network the access and                   community string apply to.",
					"The special value of 'default' is used to specify an entry that applies to all networks.",
					"The cidr mask is ignored when network value is either a host name or default.",
				]
			}
		}

		usm_users: {
			description: [
				"List of users and the type of access they have to the SNMP servers running on the cluster nodes.",
				"This parameter is required if SNMP v3 is enabled.",
			]
			suboptions: {
				access: {
					description: [
						"rouser for read-only access.",
						"rwuser for read-write access.",
						"rosys for read-only access to a restricted set of system information.",
					]
					choices: ["rouser", "rwuser", "rosys"]
				}
				name: description: [
					"The name of the user. Must contain at least one character, but no more than 32 characters.",
					"Blank spaces are not allowed.",
				]
				password: description: [
					"The password of the user. Must be between 8 and 255 characters long (inclusive).",
					"Blank spaces are not allowed.",
					"Required if 'secLevel' is 'auth' or 'priv.'",
				]
				passphrase: description: [
					"The passphrase of the user. Must be between 8 and 255 characters long (inclusive).",
					"Blank spaces are not allowed.",
					"Required if 'secLevel' is 'priv.'",
				]
				secLevel: {
					description: [
						"To define the security level of a user.",
					]
					choices: ["noauth", "auth", "priv"]
				}
			}
		}
	}
}
