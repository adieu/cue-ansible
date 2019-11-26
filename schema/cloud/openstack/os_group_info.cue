package ansible

module: os_group_info: {
	module:                         "os_group_info"
	short_description:              "Retrieve info about one or more OpenStack groups"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.9"
	author:                         "Phillipe Smith (@phsmith)"
	description: [
		"Retrieve info about a one or more OpenStack groups.",
	]
	requirements: [
		"python >= 2.7",
		"openstacksdk",
	]
	options: {
		name: {
			description: [
				"Name or ID of the group.",
			]
			required: true
			type:     "str"
		}
		domain: {
			description: [
				"Name or ID of the domain containing the group if the cloud supports domains",
			]
			type: "str"
		}
		filters: {
			description: [
				"A dictionary of meta data to use for further filtering.  Elements of this dictionary may be additional dictionaries.",
			]

			type: "dict"
		}
		availability_zone: {
			description: [
				"Ignored. Present for backwards compatibility",
			]
			type: "str"
		}
	}
}
