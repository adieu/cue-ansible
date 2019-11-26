package ansible

module: ce_facts: {
	module:            "ce_facts"
	version_added:     "2.4"
	author:            "wangdezhuang (@QijunPan)"
	short_description: "Gets facts about HUAWEI CloudEngine switches."
	description: [
		"Collects facts from CloudEngine devices running the CloudEngine operating system.  Fact collection is supported over Cli transport.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	notes: [
		"Recommended connection is C(network_cli).",
		"This module also works with C(local) connections for legacy playbooks.",
	]
	options: gather_subset: {
		description: [
			"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
		]

		required: false
		default:  "!config"
	}
}
