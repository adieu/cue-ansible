package ansible

module: restconf_get: {
	module:            "restconf_get"
	version_added:     "2.8"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Fetch configuration/state data from RESTCONF enabled devices."
	description: [
		"RESTCONF is a standard mechanisms to allow web applications to access the configuration data and state data developed and standardized by the IETF. It is documented in RFC 8040.",
		"This module allows the user to fetch configuration and state data from RESTCONF enabled devices.",
	]

	options: {
		path: {
			description: [
				"URI being used to execute API calls.",
			]
			required: true
		}
		content: {
			description: [
				"The C(content) is a query parameter that controls how descendant nodes of the requested data nodes in C(path) will be processed in the reply. If value is I(config) return only configuration descendant data nodes of value in C(path). If value is I(nonconfig) return only non-configuration descendant data nodes of value in C(path). If value is I(all) return all descendant data nodes of value in C(path)",
			]

			required: false
			choices: ["config", "nonconfig", "all"]
		}
		output: {
			description: [
				"The output of response received.",
			]
			required: false
			default:  "json"
			choices: ["json", "xml"]
		}
	}
}
