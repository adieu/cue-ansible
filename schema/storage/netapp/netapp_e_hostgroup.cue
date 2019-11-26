package ansible

module: netapp_e_hostgroup: {
	module:            "netapp_e_hostgroup"
	version_added:     "2.2"
	short_description: "NetApp E-Series manage array host groups"
	author: [
		"Kevin Hulquest (@hulquest)",
		"Nathan Swartz (@ndswartz)",
	]
	description: "Create, update or destroy host groups on a NetApp E-Series storage array."
	extends_documentation_fragment: [
		"netapp.eseries",
	]
	options: {
		state: {
			required: true
			description: [
				"Whether the specified host group should exist or not.",
			]
			choices: ["present", "absent"]
		}
		name: {
			required: false
			description: [
				"Name of the host group to manage",
				"This option is mutually exclusive with I(id).",
			]
		}
		new_name: {
			required: false
			description: [
				"Specify this when you need to update the name of a host group",
			]
		}
		id: {
			required: false
			description: [
				"Host reference identifier for the host group to manage.",
				"This option is mutually exclusive with I(name).",
			]
		}
		hosts: {
			required: false
			description: ["List of host names/labels to add to the group"]
		}
	}
}
