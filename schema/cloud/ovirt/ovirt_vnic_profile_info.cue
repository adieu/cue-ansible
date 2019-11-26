package ansible

module: ovirt_vnic_profile_info: {
	module:            "ovirt_vnic_profile_info"
	short_description: "Retrieve information about one or more oVirt/RHV vnic profiles"
	author:            "Martin Necas (@mnecas)"
	version_added:     "2.10"
	description: [
		"Retrieve information about one or more oVirt/RHV vnic profiles.",
	]
	notes: [
		"This module returns a variable C(ovirt_vnic_profiles), which contains a list of vnic profiles. You need to register the result with the I(register) keyword to use it.",
	]

	options: {
		max: {
			description: [
				"The maximum number of results to return.",
			]
			type: "int"
		}
		name: {
			description: [
				"Name of vnic profile.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "ovirt_info"
}
