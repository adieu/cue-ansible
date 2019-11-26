package ansible

module: oneview_san_manager: {
	module:            "oneview_san_manager"
	short_description: "Manage OneView SAN Manager resources"
	description: [
		"Provides an interface to manage SAN Manager resources. Can create, update, or delete.",
	]
	version_added: "2.4"
	requirements: [
		"hpOneView >= 3.1.1",
	]
	author: [
		"Felipe Bulsoni (@fgbulsoni)",
		"Thiago Miotto (@tmiotto)",
		"Adriane Cardozo (@adriane-cardozo)",
	]
	options: {
		state: {
			description: [
				"Indicates the desired state for the Uplink Set resource. - C(present) ensures data properties are compliant with OneView. - C(absent) removes the resource from OneView, if it exists. - C(connection_information_set) updates the connection information for the SAN Manager. This operation is non-idempotent.",
			]

			default: "present"
			choices: ["present", "absent", "connection_information_set"]
		}
		data: {
			description: [
				"List with SAN Manager properties.",
			]
			required: true
		}
	}

	extends_documentation_fragment: [
		"oneview",
		"oneview.validateetag",
	]
}
