package ansible

module: taiga_issue: {
	module:            "taiga_issue"
	short_description: "Creates/deletes an issue in a Taiga Project Management Platform"
	description: [
		"Creates/deletes an issue in a Taiga Project Management Platform (U(https://taiga.io)).",
		"An issue is identified by the combination of project, issue subject and issue type.",
		"This module implements the creation or deletion of issues (not the update).",
	]
	version_added: "2.0"
	options: {
		taiga_host: {
			description: [
				"The hostname of the Taiga instance.",
			]
			default: "https://api.taiga.io"
		}
		project: {
			description: [
				"Name of the project containing the issue. Must exist previously.",
			]
			required: true
		}
		subject: {
			description: [
				"The issue subject.",
			]
			required: true
		}
		issue_type: {
			description: [
				"The issue type. Must exist previously.",
			]
			required: true
		}
		priority: {
			description: [
				"The issue priority. Must exist previously.",
			]
			default: "Normal"
		}
		status: {
			description: [
				"The issue status. Must exist previously.",
			]
			default: "New"
		}
		severity: {
			description: [
				"The issue severity. Must exist previously.",
			]
			default: "Normal"
		}
		description: {
			description: [
				"The issue description.",
			]
			default: ""
		}
		attachment: description: [
			"Path to a file to be attached to the issue.",
		]
		attachment_description: {
			description: [
				"A string describing the file to be attached to the issue.",
			]
			default: ""
		}
		tags: {
			description: [
				"A lists of tags to be assigned to the issue.",
			]
			default: []
		}
		state: {
			description: [
				"Whether the issue should be present or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
	}
	author: "Alejandro Guirao (@lekum)"
	requirements: ["python-taiga"]
	notes: ["The authentication is achieved either by the environment variable TAIGA_TOKEN or by the pair of environment variables TAIGA_USERNAME and TAIGA_PASSWORD"]
}
