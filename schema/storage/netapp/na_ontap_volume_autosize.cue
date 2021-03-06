package ansible

module: na_ontap_volume_autosize: {
	module:            "na_ontap_volume_autosize"
	short_description: "NetApp ONTAP manage volume autosize"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.9"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Modify Volume AutoSize",
	]
	options: {
		volume: {
			description: [
				"The name of the flexible volume for which we want to set autosize.",
			]
			type:     "str"
			required: true
		}

		mode: {
			description: [
				"Specify the flexible volume's autosize mode of operation.",
			]
			type: "str"
			choices: ["grow", "grow_shrink", "off"]
		}

		vserver: {
			description: [
				"Name of the vserver to use.",
			]
			required: true
			type:     "str"
		}

		grow_threshold_percent: {
			description: [
				"Specifies the percentage of the flexible volume's capacity at which autogrow is initiated.",
				"The default grow threshold varies from 85% to 98%, depending on the volume size.",
				"It is an error for the grow threshold to be less than or equal to the shrink threshold.",
				"Range between 0 and 100",
			]
			type: "int"
		}

		increment_size: {
			description: [
				"Specify the flexible volume's increment size using the following format < number > [k|m|g|t]",
				"The amount is the absolute size to set.",
				"The trailing 'k', 'm', 'g', and 't' indicates the desired units, namely 'kilobytes', 'megabytes', 'gigabytes', and 'terabytes' (respectively).",
			]
			type: "str"
		}

		maximum_size: {
			description: [
				"Specify the flexible volume's maximum allowed size using the following format < number > [k|m|g|t]",
				"The amount is the absolute size to set.",
				"The trailing 'k', 'm', 'g', and 't' indicates the desired units, namely 'kilobytes', 'megabytes', 'gigabytes', and 'terabytes' (respectively).",
				"The default value is 20% greater than the volume size at the time autosize was enabled.",
				"It is an error for the maximum volume size to be less than the current volume size.",
				"It is also an error for the maximum size to be less than or equal to the minimum size.",
			]
			type: "str"
		}

		minimum_size: {
			description: [
				"Specify the flexible volume's minimum allowed size using the following format < number > [k|m|g|t] The amount is the absolute size to set.",
				"The trailing 'k', 'm', 'g', and 't' indicates the desired units, namely 'kilobytes', 'megabytes', 'gigabytes', and 'terabytes' (respectively).",
				"The default value is the size of the volume at the time the 'grow_shrink' mode was enabled.",
				"It is an error for the minimum size to be greater than or equal to the maximum size.",
			]
			type: "str"
		}

		reset: {
			description: [
				"Sets the values of maximum_size, increment_size, minimum_size, grow_threshold_percent, shrink_threshold_percent and mode to their defaults",
			]
			type: "bool"
		}

		shrink_threshold_percent: {
			description: [
				"Specifies the percentage of the flexible volume's capacity at which autoshrink is initiated.",
				"The default shrink threshold is 50%. It is an error for the shrink threshold to be greater than or equal to the grow threshold.",
				"Range between 0 and 100",
			]
			type: "int"
		}
	}
}
