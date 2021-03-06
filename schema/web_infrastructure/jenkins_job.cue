package ansible

module: jenkins_job: {
	module:            "jenkins_job"
	short_description: "Manage jenkins jobs"
	description: [
		"Manage Jenkins jobs by using Jenkins REST API.",
	]
	requirements: [
		"python-jenkins >= 0.4.12",
		"lxml >= 3.3.3",
	]
	version_added: "2.2"
	author:        "Sergio Millan Rodriguez (@sermilrod)"
	options: {
		config: {
			description: [
				"config in XML format.",
				"Required if job does not yet exist.",
				"Mutually exclusive with C(enabled).",
				"Considered if C(state=present).",
			]
			required: false
		}
		enabled: {
			description: [
				"Whether the job should be enabled or disabled.",
				"Mutually exclusive with C(config).",
				"Considered if C(state=present).",
			]
			type:     "bool"
			required: false
		}
		name: {
			description: [
				"Name of the Jenkins job.",
			]
			required: true
		}
		password: {
			description: [
				"Password to authenticate with the Jenkins server.",
			]
			required: false
		}
		state: {
			description: [
				"Attribute that specifies if the job has to be created or deleted.",
			]
			required: false
			default:  "present"
			choices: ["present", "absent"]
		}
		token: {
			description: [
				"API token used to authenticate alternatively to password.",
			]
			required: false
		}
		url: {
			description: [
				"URL where the Jenkins server is accessible.",
			]
			required: false
			default:  "http://localhost:8080"
		}
		user: {
			description: [
				"User to authenticate with the Jenkins server.",
			]
			required: false
		}
	}
}
