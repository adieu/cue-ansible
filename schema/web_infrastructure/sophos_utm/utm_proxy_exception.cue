package ansible

module: utm_proxy_exception: {
	module: "utm_proxy_exception"

	author: [
		"Sebastian Schenzel (@RickS-C137)",
	]

	short_description: "Create, update or destroy reverse_proxy exception entry in Sophos UTM"

	description: [
		"Create, update or destroy a reverse_proxy exception entry in SOPHOS UTM.",
		"This module needs to have the REST Ability of the UTM to be activated.",
	]

	version_added: "2.8"

	options: {
		name: {
			description: [
				"The name of the object. Will be used to identify the entry",
			]
			required: true
			type:     "str"
		}
		op: {
			description: [
				"The operand to be used with the entries of the path parameter",
			]
			default: "AND"
			choices: [
				"AND",
				"OR",
			]
			required: false
			type:     "str"
		}
		path: {
			description: [
				"The paths the exception in the reverse proxy is defined for",
			]
			type: "list"
			default: []
			required: false
		}
		skip_custom_threats_filters: {
			description: [
				"A list of threats to be skipped",
			]
			type: "list"
			default: []
			required: false
		}
		skip_threats_filter_categories: {
			description: [
				"Define which categories of threats are skipped",
			]
			type: "list"
			default: []
			required: false
		}
		skipav: {
			description: [
				"Skip the Antivirus Scanning",
			]
			default:  false
			type:     "bool"
			required: false
		}
		skipbadclients: {
			description: [
				"Block clients with bad reputation",
			]
			default:  false
			type:     "bool"
			required: false
		}
		skipcookie: {
			description: [
				"Skip the Cookie Signing check",
			]
			default:  false
			type:     "bool"
			required: false
		}
		skipform: {
			description: [
				"Enable form hardening",
			]
			default:  false
			type:     "bool"
			required: false
		}
		skipform_missingtoken: {
			description: [
				"Enable form hardening with missing tokens",
			]
			default:  false
			type:     "bool"
			required: false
		}
		skiphtmlrewrite: {
			description: [
				"Protection against SQL",
			]
			default:  false
			type:     "bool"
			required: false
		}
		skiptft: {
			description: [
				"Enable true file type control",
			]
			default:  false
			type:     "bool"
			required: false
		}
		skipurl: {
			description: [
				"Enable static URL hardening",
			]
			default:  false
			type:     "bool"
			required: false
		}
		source: {
			description: [
				"Define which categories of threats are skipped",
			]
			type: "list"
			default: []
			required: false
		}
		status: {
			description: [
				"Status of the exception rule set",
			]
			default:  true
			type:     "bool"
			required: false
		}
	}

	extends_documentation_fragment: ["utm"]
}
