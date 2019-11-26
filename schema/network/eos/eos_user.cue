package ansible

module: eos_user: {
	module:            "eos_user"
	version_added:     "2.3"
	author:            "Peter Sprygada (@privateip)"
	short_description: "Manage the collection of local users on EOS devices"
	description: [
		"This module provides declarative management of the local usernames configured on Arista EOS devices.  It allows playbooks to manage either individual usernames or the collection of usernames in the current running config.  It also supports purging usernames from the configuration that are not explicitly defined.",
	]

	extends_documentation_fragment: "eos"
	notes: [
		"Tested against EOS 4.15",
	]
	options: {
		aggregate: {
			description: [
				"The set of username objects to be configured on the remote Arista EOS device.  The list entries can either be the username or a hash of username and properties.  This argument is mutually exclusive with the C(username) argument.",
			]

			aliases: ["users", "collection"]
			version_added: "2.4"
		}
		name: {
			description: [
				"The username to be configured on the remote Arista EOS device.  This argument accepts a stringv value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).",
			]

			version_added: "2.4"
		}
		configured_password: {
			description: [
				"The password to be configured on the remote Arista EOS device. The password needs to be provided in clear and it will be encrypted on the device. Please note that this option is not same as C(provider password).",
			]

			version_added: "2.4"
		}
		update_password: {
			description: [
				"Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.",
			]

			default: "always"
			choices: ["on_create", "always"]
		}
		privilege: description: [
			"The C(privilege) argument configures the privilege level of the user when logged into the system.  This argument accepts integer values in the range of 1 to 15.",
		]

		role: description: [
			"Configures the role for the username in the device running configuration.  The argument accepts a string value defining the role name.  This argument does not check if the role has been configured on the device.",
		]

		sshkey: description: [
			"Specifies the SSH public key to configure for the given username.  This argument accepts a valid SSH key value.",
		]

		nopassword: {
			description: [
				"Defines the username without assigning a password.  This will allow the user to login to the system without being authenticated by a password.",
			]

			type: "bool"
		}
		purge: {
			description: [
				"Instructs the module to consider the resource definition absolute.  It will remove any previously configured usernames on the device with the exception of the `admin` user which cannot be deleted per EOS constraints.",
			]

			type:    "bool"
			default: false
		}
		state: {
			description: [
				"Configures the state of the username definition as it relates to the device operational configuration.  When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration",
			]

			default: "present"
			choices: ["present", "absent"]
		}
	}
}
