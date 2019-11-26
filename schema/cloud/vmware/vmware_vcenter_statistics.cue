package ansible

module: vmware_vcenter_statistics: {
	module:            "vmware_vcenter_statistics"
	short_description: "Configures statistics on a vCenter server"
	description: [
		"This module can be used to configure the vCenter server statistics.",
		"The remaining settings can be configured with the module C(vmware_vcenter_settings).",
	]
	version_added: 2.8
	author: [
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested with vCenter Server Appliance (vCSA) 6.5 and 6.7",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		interval_past_day: {
			description: [
				"Settings for vCenter server past day statistic collection.",
				"Valid attributes are:",
				"- C(enabled) (bool): Past day statistics collection enabled. (default: True)",
				"- C(interval_minutes) (int): Interval duration (minutes). (choices: [1, 2, 3, 4, 5]) (default: 5)",
				"- C(save_for_days) (int): Save for (days). (choices: [1, 2, 3, 4, 5]) (default: 1)",
				"- C(level) (int): Statistics level. (choices: [1, 2, 3, 4]) (default: 1)",
			]
			type: "dict"
		}
		interval_past_week: {
			description: [
				"Settings for vCenter server past week statistic collection.",
				"Valid attributes are:",
				"- C(enabled) (bool): Past week statistics collection enabled. (default: True)",
				"- C(interval_minutes) (int): Interval duration (minutes). (choices: [30]) (default: 30)",
				"- C(save_for_weeks) (int): Save for (weeks). (choices: [1]) (default: 1)",
				"- C(level) (int): Statistics level. (choices: [1, 2, 3, 4]) (default: 1)",
			]
			type: "dict"
		}
		interval_past_month: {
			description: [
				"Settings for vCenter server past month statistic collection.",
				"Valid attributes are:",
				"- C(enabled) (bool): Past month statistics collection enabled. (default: True)",
				"- C(interval_hours) (int): Interval duration (hours). (choices: [2]) (default: 2)",
				"- C(save_for_months) (int): Save for (months). (choices: [1]) (default: 1)",
				"- C(level) (int): Statistics level. (choices: [1, 2, 3, 4]) (default: 1)",
			]
			type: "dict"
		}
		interval_past_year: {
			description: [
				"Settings for vCenter server past month statistic collection.",
				"Valid attributes are:",
				"- C(enabled) (bool): Past month statistics collection enabled. (default: True)",
				"- C(interval_days) (int): Interval duration (days). (choices: [1]) (default: 1)",
				"- C(save_for_years) (int): Save for (years). (choices: [1, 2, 3, 4, 5]) (default: 1)",
				"- C(level) (int): Statistics level. (choices: [1, 2, 3, 4]) (default: 1)",
			]
			type: "dict"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
