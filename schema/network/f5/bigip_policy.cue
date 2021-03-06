package ansible

module: bigip_policy: {
	module:            "bigip_policy"
	short_description: "Manage general policy configuration on a BIG-IP"
	description: [
		"Manages general policy configuration on a BIG-IP. This module is best used in conjunction with the C(bigip_policy_rule) module. This module can handle general configuration like setting the draft state of the policy, the description, and things unrelated to the policy rules themselves. It is also the first module that should be used when creating rules as the C(bigip_policy_rule) module requires a policy parameter.",
	]

	version_added: 2.5
	options: {
		description: {
			description: [
				"The description to attach to the policy.",
				"This parameter is only supported on versions of BIG-IP >= 12.1.0. On earlier versions it will simply be ignored.",
			]

			type: "str"
		}
		name: {
			description: [
				"The name of the policy to create.",
			]
			type:     "str"
			required: true
		}
		state: {
			description: [
				"When C(state) is C(present), ensures that the policy exists and is published. When C(state) is C(absent), ensures that the policy is removed, even if it is currently drafted.",
				"When C(state) is C(draft), ensures that the policy exists and is drafted. When modifying rules, it is required that policies first be in a draft.",
				"Drafting is only supported on versions of BIG-IP >= 12.1.0. On versions prior to that, specifying a C(state) of C(draft) will raise an error.",
			]

			type: "str"
			choices: [
				"present",
				"absent",
				"draft",
			]
			default: "present"
		}
		strategy: {
			description: [
				"Specifies the method to determine which actions get executed in the case where there are multiple rules that match. When creating new policies, the default is C(first).",
				"This module does not allow you to specify the C(best) strategy to use. It will choose the system default (C(/Common/best-match)) for you instead.",
			]

			type: "str"
			choices: [
				"first",
				"all",
				"best",
			]
		}
		rules: {
			description: [
				"Specifies a list of rules that you want associated with this policy. The order of this list is the order they will be evaluated by BIG-IP. If the specified rules do not exist (for example when creating a new policy) then they will be created.",
				"The C(conditions) for a default rule are C(all).",
				"The C(actions) for a default rule are C(ignore).",
				"The C(bigip_policy_rule) module can be used to create and edit existing and new rules.",
			]

			type: "list"
		}
		partition: {
			description: [
				"Device partition to manage resources on.",
			]
			type:    "str"
			default: "Common"
		}
	}
	extends_documentation_fragment: "f5"
	author: [
		"Tim Rupp (@caphrim007)",
		"Wojciech Wypior (@wojtek0806)",
	]
}
