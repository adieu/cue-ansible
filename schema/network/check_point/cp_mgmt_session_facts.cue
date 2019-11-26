package ansible

module: cp_mgmt_session_facts: {
	module:            "cp_mgmt_session_facts"
	short_description: "Get session objects facts on Check Point over Web Services API"
	description: [
		"Get session objects facts on Check Point devices.",
		"All operations are performed over Web Services API.",
		"This module handles both operations, get a specific object and get several objects, For getting a specific object use the parameter 'name'.",
	]

	version_added: "2.9"
	author:        "Or Soffer (@chkp-orso)"
	options: {
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
				"Sorts results by the given field. By default the results are sorted in the descending order by the session publish time. This parameter is relevant only for getting few objects.",
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
		view_published_sessions: {
			description: [
				"Show a list of published sessions.",
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
	}
	extends_documentation_fragment: "checkpoint_facts"
}
