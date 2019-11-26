package ansible

module: cp_mgmt_threat_rule: {
	module:            "cp_mgmt_threat_rule"
	short_description: "Manages threat-rule objects on Check Point over Web Services API"
	description: [
		"Manages threat-rule objects on Check Point devices including creating, updating and removing objects.",
		"All operations are performed over Web Services API.",
	]
	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		position: {
			description: [
				"Position in the rulebase.",
			]
			type: "str"
		}
		layer: {
			description: [
				"Layer that the rule belongs to identified by the name or UID.",
			]
			type: "str"
		}
		name: {
			description: [
				"Object name.",
			]
			type:     "str"
			required: true
		}
		action: {
			description: [
				"Action-the enforced profile.",
			]
			type: "str"
		}
		destination: {
			description: [
				"Collection of Network objects identified by the name or UID.",
			]
			type: "list"
		}
		destination_negate: {
			description: [
				"True if negate is set for destination.",
			]
			type: "bool"
		}
		enabled: {
			description: [
				"Enable/Disable the rule.",
			]
			type: "bool"
		}
		install_on: {
			description: [
				"Which Gateways identified by the name or UID to install the policy on.",
			]
			type: "list"
		}
		protected_scope: {
			description: [
				"Collection of objects defining Protected Scope identified by the name or UID.",
			]
			type: "list"
		}
		protected_scope_negate: {
			description: [
				"True if negate is set for Protected Scope.",
			]
			type: "bool"
		}
		service: {
			description: [
				"Collection of Network objects identified by the name or UID.",
			]
			type: "list"
		}
		service_negate: {
			description: [
				"True if negate is set for Service.",
			]
			type: "bool"
		}
		source: {
			description: [
				"Collection of Network objects identified by the name or UID.",
			]
			type: "list"
		}
		source_negate: {
			description: [
				"True if negate is set for source.",
			]
			type: "bool"
		}
		track: {
			description: [
				"Packet tracking.",
			]
			type: "str"
		}
		track_settings: {
			description: [
				"Threat rule track settings.",
			]
			type: "dict"
			suboptions: packet_capture: {
				description: [
					"Packet capture.",
				]
				type: "bool"
			}
		}
		comments: {
			description: [
				"Comments string.",
			]
			type: "str"
		}
		details_level: {
			description: [
				"The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.",
			]

			type: "str"
			choices: ["uid", "standard", "full"]
		}
		ignore_warnings: {
			description: [
				"Apply changes ignoring warnings.",
			]
			type: "bool"
		}
		ignore_errors: {
			description: [
				"Apply changes ignoring errors. You won't be able to publish such a changes. If ignore-warnings flag was omitted - warnings will also be ignored.",
			]
			type: "bool"
		}
	}
	extends_documentation_fragment: "checkpoint_objects"
}
