package ansible

module: restconf_config: {
	module:            "restconf_config"
	version_added:     "2.8"
	author:            "Ganesh Nalawade (@ganeshrn)"
	short_description: "Handles create, update, read and delete of configuration data on RESTCONF enabled devices."
	description: [
		"RESTCONF is a standard mechanisms to allow web applications to configure and manage data. RESTCONF is a IETF standard and documented on RFC 8040.",
		"This module allows the user to configure data on RESTCONF enabled devices.",
	]
	options: {
		path: {
			description: [
				"URI being used to execute API calls.",
			]
			required: true
		}
		content: description: [
			"The configuration data in format as specififed in C(format) option. Required unless C(method) is I(delete).",
		]

		method: {
			description: [
				"The RESTCONF method to manage the configuration change on device. The value I(post) is used to create a data resource or invoke an operation resource, I(put) is used to replace the target data resource, I(patch) is used to modify the target resource, and I(delete) is used to delete the target resource.",
			]

			required: false
			default:  "post"
			choices: ["post", "put", "patch", "delete"]
		}
		format: {
			description: [
				"The format of the configuration provided as value of C(content). Accepted values are I(xml) and I(json) and the given configuration format should be supported by remote RESTCONF server.",
			]

			default: "json"
			choices: ["json", "xml"]
		}
	}
}
