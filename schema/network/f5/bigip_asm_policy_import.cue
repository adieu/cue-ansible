package ansible

module: bigip_asm_policy_import: {
	module:            "bigip_asm_policy_import"
	short_description: "Manage BIG-IP ASM policy imports"
	description: [
		"Manage BIG-IP ASM policies policy imports.",
	]
	version_added: 2.8
	options: {
		name: {
			description: [
				"The ASM policy to create or override.",
			]
			type:     "str"
			required: true
		}
		inline: {
			description: [
				"When specified the ASM policy is created from a provided string.",
				"Content needs to be provided in a valid XML format otherwise the operation will fail.",
			]
			type: "str"
		}
		source: {
			description: [
				"Full path to a policy file to be imported into the BIG-IP ASM.",
				"Policy files exported from newer versions of BIG-IP cannot be imported into older versions of BIG-IP. The opposite, however, is true; you can import older into newer.",
				"The file format can be binary of XML.",
			]
			type: "path"
		}
		force: {
			description: [
				"When set to C(yes) any existing policy with the same name will be overwritten by the new import.",
				"Works for both inline and file imports, if the policy does not exist this setting is ignored.",
			]
			default: false
			type:    "bool"
		}
		partition: {
			description: [
				"Device partition to create policy on.",
			]
			type:    "str"
			default: "Common"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Wojciech Wypior (@wojtek0806)"]
}
