package ansible

module: tower_job_list: {
	module:            "tower_job_list"
	author:            "Wayne Witzel III (@wwitzel3)"
	version_added:     "2.3"
	short_description: "List Ansible Tower jobs."
	description: [
		"List Ansible Tower jobs. See U(https://www.ansible.com/tower) for an overview.",
	]

	options: {
		status: {
			description: [
				"Only list jobs with this status.",
			]
			choices: ["pending", "waiting", "running", "error", "failed", "canceled", "successful"]
		}
		page: description: [
			"Page number of the results to fetch.",
		]
		all_pages: {
			description: [
				"Fetch all the pages and return a single result.",
			]
			type:    "bool"
			default: "no"
		}
		query: description: [
			"Query used to further filter the list of jobs. C({\"foo\":\"bar\"}) will be passed at C(?foo=bar)",
		]
	}
	extends_documentation_fragment: "tower"
}
