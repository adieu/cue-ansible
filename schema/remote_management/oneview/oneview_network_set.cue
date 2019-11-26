package ansible

module: oneview_network_set: {
	module:            "oneview_network_set"
	short_description: "Manage HPE OneView Network Set resources"
	description: [
		"Provides an interface to manage Network Set resources. Can create, update, or delete.",
	]
	version_added: "2.4"
	requirements: [
		"hpOneView >= 4.0.0",
	]
	author: [
		"Felipe Bulsoni (@fgbulsoni)",
		"Thiago Miotto (@tmiotto)",
		"Adriane Cardozo (@adriane-cardozo)",
	]
	options: {
		state: {
			description: [
				"Indicates the desired state for the Network Set resource. - C(present) will ensure data properties are compliant with OneView. - C(absent) will remove the resource from OneView, if it exists.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
		data: {
			description: [
				"List with the Network Set properties.",
			]
			required: true
		}
	}

	extends_documentation_fragment: [
		"oneview",
		"oneview.validateetag",
	]
}
