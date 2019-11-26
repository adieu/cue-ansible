package ansible

module: oneview_fcoe_network: {
	module:            "oneview_fcoe_network"
	short_description: "Manage OneView FCoE Network resources"
	description: [
		"Provides an interface to manage FCoE Network resources. Can create, update, or delete.",
	]
	version_added: "2.4"
	requirements: [
		"python >= 2.7.9",
		"hpOneView >= 4.0.0",
	]
	author: "Felipe Bulsoni (@fgbulsoni)"
	options: {
		state: {
			description: [
				"Indicates the desired state for the FCoE Network resource. C(present) will ensure data properties are compliant with OneView. C(absent) will remove the resource from OneView, if it exists.",
			]

			default: "present"
			choices: ["present", "absent"]
		}
		data: {
			description: [
				"List with FCoE Network properties.",
			]
			required: true
		}
	}

	extends_documentation_fragment: [
		"oneview",
		"oneview.validateetag",
	]
}
