package ansible

module: ec2_lc_info: {
	module:            "ec2_lc_info"
	short_description: "Gather information about AWS Autoscaling Launch Configurations."
	description: [
		"Gather information about AWS Autoscaling Launch Configurations.",
		"This module was called C(ec2_lc_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.3"
	author:        "Loïc Latreille (@psykotox)"
	requirements: ["boto3"]
	options: {
		name: {
			description: ["A name or a list of name to match."]
			default: []
			type:     "list"
			elements: "str"
		}
		sort: {
			description: ["Optional attribute which with to sort the results."]
			choices: ["launch_configuration_name", "image_id", "created_time", "instance_type", "kernel_id", "ramdisk_id", "key_name"]
			type: "str"
		}
		sort_order: {
			description: [
				"Order in which to sort results.",
				"Only used when the 'sort' parameter is specified.",
			]
			choices: ["ascending", "descending"]
			default: "ascending"
			type:    "str"
		}
		sort_start: {
			description: [
				"Which result to start with (when sorting).",
				"Corresponds to Python slice notation.",
			]
			type: "int"
		}
		sort_end: {
			description: [
				"Which result to end with (when sorting).",
				"Corresponds to Python slice notation.",
			]
			type: "int"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
