package ansible

module: cnos_facts: {
	module:            "cnos_facts"
	version_added:     "2.3"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Collect facts from remote devices running Lenovo CNOS"
	description: [
		"Collects a base set of device facts from a remote Lenovo device running on CNOS.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.",
	]

	notes: [
		"Tested against CNOS 10.8.1",
	]
	options: {
		authorize: {
			version_added: "2.6"
			description: [
				"Instructs the module to enter privileged mode on the remote device before sending any commands.  If not specified, the device will attempt to execute all commands in non-privileged mode. If the value is not specified in the task, the value of environment variable C(ANSIBLE_NET_AUTHORIZE) will be used instead.",
			]

			type:    "bool"
			default: "no"
		}
		auth_pass: {
			version_added: "2.6"
			description: [
				"Specifies the password to use if required to enter privileged mode on the remote device.  If I(authorize) is false, then this argument does nothing. If the value is not specified in the task, the value of environment variable C(ANSIBLE_NET_AUTH_PASS) will be used instead.",
			]
		}

		gather_subset: {
			version_added: "2.6"
			description: [
				"When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
			]

			required: false
			default:  "!config"
		}
	}
}
