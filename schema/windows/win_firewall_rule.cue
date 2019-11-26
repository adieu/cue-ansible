package ansible

module: win_firewall_rule: {
	module:            "win_firewall_rule"
	version_added:     "2.0"
	short_description: "Windows firewall automation"
	description: [
		"Allows you to create/remove/update firewall rules.",
	]
	options: {
		enabled: {
			description: [
				"Whether this firewall rule is enabled or disabled.",
				"Defaults to C(true) when creating a new rule.",
			]
			type: "bool"
			aliases: ["enable"]
		}
		state: {
			description: [
				"Should this rule be added or removed.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		name: {
			description: [
				"The rule's display name.",
			]
			type:     "str"
			required: true
		}
		group: {
			description: [
				"The group name for the rule.",
			]
			version_added: "2.9"
			type:          "str"
		}
		direction: {
			description: [
				"Whether this rule is for inbound or outbound traffic.",
				"Defaults to C(in) when creating a new rule.",
			]
			type: "str"
			choices: ["in", "out"]
		}
		action: {
			description: [
				"What to do with the items this rule is for.",
				"Defaults to C(allow) when creating a new rule.",
			]
			type: "str"
			choices: ["allow", "block"]
		}
		description: {
			description: [
				"Description for the firewall rule.",
			]
			type: "str"
		}
		localip: {
			description: [
				"The local ip address this rule applies to.",
				"Set to C(any) to apply to all local ip addresses.",
				"Defaults to C(any) when creating a new rule.",
			]
			type: "str"
		}
		remoteip: {
			description: [
				"The remote ip address/range this rule applies to.",
				"Set to C(any) to apply to all remote ip addresses.",
				"Defaults to C(any) when creating a new rule.",
			]
			type: "str"
		}
		localport: {
			description: [
				"The local port this rule applies to.",
				"Set to C(any) to apply to all local ports.",
				"Defaults to C(any) when creating a new rule.",
				"Must have I(protocol) set",
			]
			type: "str"
		}
		remoteport: {
			description: [
				"The remote port this rule applies to.",
				"Set to C(any) to apply to all remote ports.",
				"Defaults to C(any) when creating a new rule.",
				"Must have I(protocol) set",
			]
			type: "str"
		}
		program: {
			description: [
				"The program this rule applies to.",
				"Set to C(any) to apply to all programs.",
				"Defaults to C(any) when creating a new rule.",
			]
			type: "str"
		}
		service: {
			description: [
				"The service this rule applies to.",
				"Set to C(any) to apply to all services.",
				"Defaults to C(any) when creating a new rule.",
			]
			type: "str"
		}
		protocol: {
			description: [
				"The protocol this rule applies to.",
				"Set to C(any) to apply to all services.",
				"Defaults to C(any) when creating a new rule.",
			]
			type: "str"
		}
		profiles: {
			description: [
				"The profile this rule applies to.",
				"Defaults to C(domain,private,public) when creating a new rule.",
			]
			type: "list"
			aliases: ["profile"]
		}
		icmp_type_code: {
			description: [
				"The ICMP types and codes for the rule.",
				"This is only valid when I(protocol) is C(icmpv4) or C(icmpv6).",
				"Each entry follows the format C(type:code) where C(type) is the type number and C(code) is the code number for that type or C(*) for all codes.",
				"Set the value to just C(*) to apply the rule for all ICMP type codes.",
				"See U(https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml) for a list of ICMP types and the codes that apply to them.",
			]

			type:          "list"
			version_added: "2.10"
		}
	}
	seealso: [{
		module: "win_firewall"
	}]
	author: [
		"Artem Zinenko (@ar7z1)",
		"Timothy Vandenbrande (@TimothyVandenbrande)",
	]
}
