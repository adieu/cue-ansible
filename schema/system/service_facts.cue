package ansible

module: service_facts: {
	module:            "service_facts"
	short_description: "Return service state information as fact data"
	description: [
		"Return service state information as fact data for various service management utilities",
	]
	version_added: "2.5"
	requirements: ["Any of the following supported init systems: systemd, sysv, upstart"]

	notes: [
		"When accessing the C(ansible_facts.services) facts collected by this module, it is recommended to not use \"dot notation\" because services can have a C(-) character in their name which would result in invalid \"dot notation\", such as C(ansible_facts.services.zuul-gateway). It is instead recommended to using the string value of the service name as the key in order to obtain the fact data value like C(ansible_facts.services['zuul-gateway'])",
	]

	author: ["Adam Miller (@maxamillion)"]
}
