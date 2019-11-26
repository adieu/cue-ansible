package ansible

module: aws_ses_rule_set: {
	module:            "aws_ses_rule_set"
	short_description: "Manages SES inbound receipt rule sets"
	description: [
		"The M(aws_ses_rule_set) module allows you to create, delete, and manage SES receipt rule sets",
	]
	version_added: 2.8
	author: [
		"Ben Tomasik (@tomislacker)",
		"Ed Costello (@orthanc)",
	]
	requirements: ["boto3", "botocore"]
	options: {
		name: {
			description: [
				"The name of the receipt rule set.",
			]
			required: true
			type:     "str"
		}
		state: {
			description: [
				"Whether to create (or update) or destroy the receipt rule set.",
			]
			required: false
			default:  "present"
			choices: ["absent", "present"]
			type: "str"
		}
		active: {
			description: [
				"Whether or not this rule set should be the active rule set. Only has an impact if I(state) is C(present).",
				"If omitted, the active rule set will not be changed.",
				"If C(True) then this rule set will be made active and all others inactive.",
				"if C(False) then this rule set will be deactivated. Be careful with this as you can end up with no active rule set.",
			]
			type:     "bool"
			required: false
		}
		force: {
			description: [
				"When deleting a rule set, deactivate it first (AWS prevents deletion of the active rule set).",
			]
			type:     "bool"
			required: false
			default:  false
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
