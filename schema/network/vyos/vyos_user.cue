package ansible

module: vyos_user: {
	module:            "vyos_user"
	version_added:     "2.4"
	author:            "Trishna Guha (@trishnaguha)"
	short_description: "Manage the collection of local users on VyOS device"
	description: [
		"This module provides declarative management of the local usernames configured on network devices. It allows playbooks to manage either individual usernames or the collection of usernames in the current running config. It also supports purging usernames from the configuration that are not explicitly defined.",
	]

	notes: [
		"Tested against VyOS 1.1.8 (helium).",
		"This module works with connection C(network_cli). See L(the VyOS OS Platform Options,../network/user_guide/platform_vyos.html).",
	]
	options: {
		aggregate: {
			description: [
				"The set of username objects to be configured on the remote VyOS device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.",
			]

			aliases: ["users", "collection"]
		}
		name: description: [
			"The username to be configured on the VyOS device. This argument accepts a string value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).",
		]

		full_name: description: [
			"The C(full_name) argument provides the full name of the user account to be created on the remote device. This argument accepts any text string value.",
		]

		configured_password: description: [
			"The password to be configured on the VyOS device. The password needs to be provided in clear and it will be encrypted on the device. Please note that this option is not same as C(provider password).",
		]

		update_password: {
			description: [
				"Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.",
			]

			default: "always"
			choices: ["on_create", "always"]
		}
		level: {
			description: [
				"The C(level) argument configures the level of the user when logged into the system. This argument accepts string values admin or operator.",
			]

			aliases: ["role"]
		}
		purge: {
			description: [
				"Instructs the module to consider the resource definition absolute. It will remove any previously configured usernames on the device with the exception of the `admin` user (the current defined set of users).",
			]

			type:    "bool"
			default: false
		}
		state: {
			description: [
				"Configures the state of the username definition as it relates to the device operational configuration. When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
	extends_documentation_fragment: "vyos"
}
