package ansible

module: bigip_apm_policy_fetch: {
	module:            "bigip_apm_policy_fetch"
	short_description: "Exports the APM policy or APM access profile from remote nodes."
	description: [
		"Exports the apm policy or APM access profile from remote nodes.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"The name of the APM policy or APM access profile exported to create a file on the remote device for downloading.",
			]
			type:     "str"
			required: true
		}
		dest: {
			description: [
				"A directory to save the file into.",
			]
			type: "path"
		}
		file: {
			description: [
				"The name of the file to be created on the remote device for downloading.",
			]
			type: "str"
		}
		type: {
			description: [
				"Specifies the type of item to export from device.",
			]
			type: "str"
			choices: [
				"profile_access",
				"access_policy",
			]
			default: "profile_access"
		}
		force: {
			description: [
				"If C(no), the file will only be transferred if it does not exist in the the destination.",
			]
			type:    "bool"
			default: true
		}
		partition: {
			description: [
				"Device partition to which contain APM policy or APM access profile to export.",
			]
			type:    "str"
			default: "Common"
		}
	}
	notes: [
		"Due to ID685681 it is not possible to execute ng_* tools via REST api on v12.x and 13.x, once this is fixed this restriction will be removed.",
		"Requires BIG-IP >= 14.0.0",
	]
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
