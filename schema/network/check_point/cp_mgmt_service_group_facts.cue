package ansible

module: cp_mgmt_service_group_facts: {
	module:            "cp_mgmt_service_group_facts"
	short_description: "Get service-group objects facts on Check Point over Web Services API"
	description: [
		"Get service-group objects facts on Check Point devices.",
		"All operations are performed over Web Services API.",
		"This module handles both operations, get a specific object and get several objects, For getting a specific object use the parameter 'name'.",
	]

	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
		name: {
			description: [
				"Object name. This parameter is relevant only for getting a specific object.",
			]

			type: "str"
		}
		show_as_ranges: {
			description: [
				"When true, the service group's matched content is displayed as ranges of port numbers rather than service objects.<br />Objects that are not represented using port numbers are presented as objects.<br />The 'members' parameter is omitted from the response and instead the 'ranges' parameter is displayed.",
			]

			type: "bool"
		}
		details_level: {
			description: [
				"The level of detail for some of the fields in the response can vary from showing only the UID value of the object to a fully detailed representation of the object.",
			]

			type: "str"
			choices: ["uid", "standard", "full"]
		}
		limit: {
			description: [
				"No more than that many results will be returned. This parameter is relevant only for getting few objects.",
			]

			type: "int"
		}
		offset: {
			description: [
				"Skip that many results before beginning to return them. This parameter is relevant only for getting few objects.",
			]

			type: "int"
		}
		order: {
			description: [
				"Sorts results by the given field. By default the results are sorted in the ascending order by name. This parameter is relevant only for getting few objects.",
			]

			type: "list"
			suboptions: {
				ASC: {
					description: [
						"Sorts results by the given field in ascending order.",
					]
					type: "str"
					choices: ["name"]
				}
				DESC: {
					description: [
						"Sorts results by the given field in descending order.",
					]
					type: "str"
					choices: ["name"]
				}
			}
		}
		dereference_group_members: {
			description: [
				"Indicates whether to dereference \"members\" field by details level for every object in reply.",
			]
			type: "bool"
		}
		show_membership: {
			description: [
				"Indicates whether to calculate and show \"groups\" field for every object in reply.",
			]
			type: "bool"
		}
	}
	extends_documentation_fragment: "checkpoint_facts"
}
