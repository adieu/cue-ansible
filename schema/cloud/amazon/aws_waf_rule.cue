package ansible

module: aws_waf_rule: {
	module:            "aws_waf_rule"
	short_description: "Create and delete WAF Rules"
	description: [
		"Read the AWS documentation for WAF U(https://aws.amazon.com/documentation/waf/).",
	]

	version_added: "2.5"

	author: [
		"Mike Mochan (@mmochan)",
		"Will Thames (@willthames)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
	options: {
		name: {
			description: "Name of the Web Application Firewall rule."
			required:    true
			type:        "str"
		}
		metric_name: {
			description: [
				"A friendly name or description for the metrics for the rule.",
				"The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name can't contain whitespace.",
				"You can't change I(metric_name) after you create the rule.",
				"Defaults to the same as I(name) with disallowed characters removed.",
			]
			type: "str"
		}
		state: {
			description: "Whether the rule should be present or absent."
			choices: [
				"present",
				"absent",
			]
			default: "present"
			type:    "str"
		}
		conditions: {
			description: """
		List of conditions used in the rule.  M(aws_waf_condition) can be used to create new conditions.

		"""

			type:     "list"
			elements: "dict"
			suboptions: {
				type: {
					required: true
					type:     "str"
					choices: ["byte", "geo", "ip", "size", "sql", "xss"]
					description: "The type of rule to match."
				}
				negated: {
					required:    true
					type:        "bool"
					description: "Whether the condition should be negated."
				}
				condition: {
					required:    true
					type:        "str"
					description: "The name of the condition.  The condition must already exist."
				}
			}
		}
		purge_conditions: {
			description: [
				"Whether or not to remove conditions that are not passed when updating `conditions`.",
			]
			default: false
			type:    "bool"
		}
		waf_regional: {
			description:   "Whether to use waf-regional module."
			default:       false
			required:      false
			type:          "bool"
			version_added: "2.9"
		}
	}
}
