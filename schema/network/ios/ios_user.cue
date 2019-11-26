package ansible

module: ios_user: {
	module:            "ios_user"
	version_added:     "2.4"
	author:            "Trishna Guha (@trishnaguha)"
	short_description: "Manage the aggregate of local users on Cisco IOS device"
	description: [
		"This module provides declarative management of the local usernames configured on network devices. It allows playbooks to manage either individual usernames or the aggregate of usernames in the current running config. It also supports purging usernames from the configuration that are not explicitly defined.",
	]

	notes: [
		"Tested against IOS 15.6",
	]
	options: {
		aggregate: {
			description: [
				"The set of username objects to be configured on the remote Cisco IOS device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.",
			]

			aliases: ["users", "collection"]
		}
		name: description: [
			"The username to be configured on the Cisco IOS device. This argument accepts a string value and is mutually exclusive with the C(aggregate) argument. Please note that this option is not same as C(provider username).",
		]

		configured_password: description: [
			"The password to be configured on the Cisco IOS device. The password needs to be provided in clear and it will be encrypted on the device. Please note that this option is not same as C(provider password).",
		]

		update_password: {
			description: [
				"Since passwords are encrypted in the device running config, this argument will instruct the module when to change the password.  When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.",
			]

			default: "always"
			choices: ["on_create", "always"]
		}
		password_type: {
			description: [
				"This argument determines whether a 'password' or 'secret' will be configured.",
			]

			default: "secret"
			choices: ["secret", "password"]
			version_added: "2.8"
		}
		hashed_password: {
			description: [
				"This option allows configuring hashed passwords on Cisco IOS devices.",
			]
			suboptions: {
				type: {
					description: [
						"Specifies the type of hash (e.g., 5 for MD5, 8 for PBKDF2, etc.)",
						"For this to work, the device needs to support the desired hash type",
					]
					type:     "int"
					required: true
				}
				value: {
					description: [
						"The actual hashed password to be configured on the device",
					]
					required: true
				}
			}
			version_added: "2.8"
		}
		privilege: description: [
			"The C(privilege) argument configures the privilege level of the user when logged into the system. This argument accepts integer values in the range of 1 to 15.",
		]

		view: {
			description: [
				"Configures the view for the username in the device running configuration. The argument accepts a string value defining the view name. This argument does not check if the view has been configured on the device.",
			]

			aliases: ["role"]
		}
		sshkey: {
			description: [
				"Specifies one or more SSH public key(s) to configure for the given username.",
				"This argument accepts a valid SSH key value.",
			]
			version_added: "2.7"
		}
		nopassword: {
			description: [
				"Defines the username without assigning a password. This will allow the user to login to the system without being authenticated by a password.",
			]

			type: "bool"
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
	extends_documentation_fragment: "ios"
}
