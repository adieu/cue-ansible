package ansible

module: bigip_firewall_global_rules: {
	module:            "bigip_firewall_global_rules"
	short_description: "Manage AFM global rule settings on BIG-IP"
	description: [
		"Configures the global network firewall rules. These firewall rules are applied to all packets except those going through the management interface. They are applied first, before any firewall rules for the packet's virtual server, route domain, and/or self IP.",
	]

	version_added: 2.8
	options: {
		enforced_policy: {
			description: [
				"Specifies an enforced firewall policy.",
				"C(enforced_policy) rules are enforced globally.",
			]
			type: "str"
		}
		service_policy: {
			description: [
				"Specifies a service policy that would apply to traffic globally.",
				"The service policy is applied to all flows, provided if there are no other context specific service policy configuration that overrides the global service policy. For example, when a service policy is configured both at a global level, as well as on a firewall rule, and a flow matches the rule, the more specific service policy configuration in the rule will override the service policy setting at the global level.",
				"The service policy associated here can be created using the C(bigip_service_policy) module.",
			]

			type: "str"
		}
		staged_policy: {
			description: [
				"Specifies a staged firewall policy.",
				"C(staged_policy) rules are not enforced while all the visibility aspects namely statistics, reporting and logging function as if the staged-policy rules were enforced globally.",
			]

			type: "str"
		}
		description: {
			description: [
				"Description for the global list of firewall rules.",
			]
			type: "str"
		}
	}
	extends_documentation_fragment: "f5"
	author: ["Tim Rupp (@caphrim007)"]
}
