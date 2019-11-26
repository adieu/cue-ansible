package ansible

module: oneview_fc_network: {
	module:            "oneview_fc_network"
	short_description: "Manage OneView Fibre Channel Network resources."
	description: [
		"Provides an interface to manage Fibre Channel Network resources. Can create, update, and delete.",
	]
	version_added: "2.4"
	requirements: [
		"hpOneView >= 4.0.0",
	]
	author: "Felipe Bulsoni (@fgbulsoni)"
	options: {
		state: {
			description: [
				"Indicates the desired state for the Fibre Channel Network resource. C(present) will ensure data properties are compliant with OneView. C(absent) will remove the resource from OneView, if it exists.",
			]

			choices: ["present", "absent"]
		}
		data: {
			description: [
				"List with the Fibre Channel Network properties.",
			]
			required: true
		}
	}

	extends_documentation_fragment: [
		"oneview",
		"oneview.validateetag",
	]
}
