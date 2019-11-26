package ansible

module: aws_api_gateway: {
	module:            "aws_api_gateway"
	short_description: "Manage AWS API Gateway APIs"
	description: [
		"Allows for the management of API Gateway APIs",
		"Normally you should give the api_id since there is no other stable guaranteed unique identifier for the API.  If you do not give api_id then a new API will be create each time this is run.",
		"Beware that there are very hard limits on the rate that you can call API Gateway's REST API.  You may need to patch your boto.  See U(https://github.com/boto/boto3/issues/876) and discuss with your AWS rep.",
		"swagger_file and swagger_text are passed directly on to AWS transparently whilst swagger_dict is an ansible dict which is converted to JSON before the API definitions are uploaded.",
	]

	version_added: "2.4"
	requirements: ["boto3"]
	options: {
		api_id: {
			description: [
				"The ID of the API you want to manage.",
			]
			type: "str"
		}
		state: {
			description: [
				"NOT IMPLEMENTED Create or delete API - currently we always create.",
			]
			default: "present"
			choices: ["present", "absent"]
			type: "str"
		}
		swagger_file: {
			description: [
				"JSON or YAML file containing swagger definitions for API. Exactly one of swagger_file, swagger_text or swagger_dict must be present.",
			]

			type: "path"
			aliases: ["src", "api_file"]
		}
		swagger_text: {
			description: [
				"Swagger definitions for API in JSON or YAML as a string direct from playbook.",
			]

			type: "str"
		}
		swagger_dict: {
			description: [
				"Swagger definitions API ansible dictionary which will be converted to JSON and uploaded.",
			]

			type: "json"
		}
		stage: {
			description: [
				"The name of the stage the API should be deployed to.",
			]
			type: "str"
		}
		deploy_desc: {
			description: [
				"Description of the deployment - recorded and visible in the AWS console.",
			]

			default: "Automatic deployment by Ansible."
			type:    "str"
		}
	}
	author: [
		"Michael De La Rue (@mikedlr)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	notes: [
		"A future version of this module will probably use tags or another ID so that an API can be create only once.",
		"As an early work around an intermediate version will probably do the same using a tag embedded in the API name.",
	]
}
