package ansible

module: bigip_asm_policy_fetch: {
	module:            "bigip_asm_policy_fetch"
	short_description: "Exports the asm policy from remote nodes."
	description: [
		"Exports the asm policy from remote nodes.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"The name of the policy exported to create a file on the remote device for downloading.",
			]
			type:     "str"
			required: true
		}
		dest: {
			description: [
				"A directory to save the policy file into.",
				"This option is ignored when C(inline) is set to C(yes).",
			]
			type: "path"
		}
		file: {
			description: [
				"The name of the file to be create on the remote device for downloading.",
				"When C(binary) is set to C(no) the ASM policy will be in XML format.",
			]
			type: "str"
		}
		inline: {
			description: [
				"If C(yes), the ASM policy will be exported C(inline) as a string instead of a file.",
				"The policy can be be retrieved in playbook C(result) dictionary under C(inline_policy) key.",
			]
			type: "bool"
		}
		compact: {
			description: [
				"If C(yes), only the ASM policy custom settings will be exported.",
				"Only applies to XML type ASM policy exports.",
			]
			type: "bool"
		}
		base64: {
			description: [
				"If C(yes), the returned C(inline) ASM policy content will be Base64 encoded.",
				"Only applies to C(inline) ASM policy exports.",
			]
			type: "bool"
		}
		binary: {
			description: [
				"If C(yes), the exported ASM policy will be in binary format.",
				"Only applies to C(file) ASM policy exports.",
			]
			type: "bool"
		}
		force: {
			description: [
				"If C(no), the file will only be transferred if it does not exist in the the destination.",
			]
			default: true
			type:    "bool"
		}
		partition: {
			description: [
				"Device partition which contains ASM policy to export.",
			]
			type:    "str"
			default: "Common"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
