package ansible

module: aws_elasticbeanstalk_app: {
	module: "aws_elasticbeanstalk_app"

	short_description: "Create, update, and delete an elastic beanstalk application"

	version_added: "2.5"

	description: [
		"Creates, updates, deletes beanstalk applications if app_name is provided.",
	]

	options: {
		app_name: {
			description: [
				"Name of the beanstalk application you wish to manage.",
			]
			aliases: ["name"]
			type: "str"
		}
		description: {
			description: [
				"The description of the application.",
			]
			type: "str"
		}
		state: {
			description: [
				"Whether to ensure the application is present or absent.",
			]
			default: "present"
			choices: ["absent", "present"]
			type: "str"
		}
		terminate_by_force: {
			description: [
				"When I(terminate_by_force=true), running environments will be terminated before deleting the application.",
			]
			default: false
			type:    "bool"
		}
	}
	author: [
		"Harpreet Singh (@hsingh)",
		"Stephen Granger (@viper233)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
