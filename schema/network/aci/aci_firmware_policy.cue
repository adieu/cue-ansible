package ansible

module: aci_firmware_policy: {
	module: "aci_firmware_policy"

	short_description: "This creates a firmware policy"

	version_added: "2.8"

	description: [
		"This module creates a firmware policy for firmware groups. The firmware policy is create first and then",
		"referenced by the firmware group. You will assign the firmware and specify if you want to ignore the compatibility",
		"check",
	]
	options: {
		name: {
			description: [
				"Name of the firmware policy",
			]
			type:     "str"
			required: true
		}
		version: {
			description: [
				"The version of the firmware associated with this policy. This value is very import as well as constructing",
				"it correctly. The syntax for this field is n9000-xx.x. If you look at the firmware repository using the UI",
				"each version will have a \"Full Version\" column, this is the value you need to use. So, if the Full Version",
				"is 13.1(1i), the value for this field would be n9000-13.1(1i)",
			]
			type:     "str"
			required: true
		}
		ignoreCompat: {
			description: [
				"Check if compatibility checks should be ignored",
			]
			type: "bool"
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}

	extends_documentation_fragment: [
		"aci",
	]

	author: ["Steven Gerhart (@sgerhart)"]
}
