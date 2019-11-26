package ansible

module: icx_user: {
	module:            "icx_user"
	version_added:     "2.9"
	author:            "Ruckus Wireless (@Commscope)"
	short_description: "Manage the user accounts on Ruckus ICX 7000 series switches."
	description: [
		"This module creates or updates user account on network devices. It allows playbooks to manage either individual usernames or the aggregate of usernames in the current running config. It also supports purging usernames from the configuration that are not explicitly defined.",
	]

	notes: [
		"Tested against ICX 10.1.",
		"For information on using ICX platform, see L(the ICX OS Platform Options guide,../network/user_guide/platform_icx.html).",
	]
	options: {
		aggregate: {
			description: [
				"The set of username objects to be configured on the remote ICX device. The list entries can either be the username or a hash of username and properties. This argument is mutually exclusive with the C(name) argument.",
			]

			aliases: ["users", "collection"]
			type: "list"
			suboptions: {
				name: {
					description: [
						"The username to be configured on the ICX device.",
					]
					required: true
					type:     "str"
				}
				configured_password: {
					description: "The password to be configured on the ICX device."
					type:        "str"
				}
				update_password: {
					description: [
						"This argument will instruct the module when to change the password. When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.",
					]

					choices: ["on_create", "always"]
					type: "str"
				}
				privilege: {
					description: [
						"The privilege level to be granted to the user",
					]
					choices: ["0", "4", "5"]
					type: "str"
				}
				nopassword: {
					description: [
						"Defines the username without assigning a password. This will allow the user to login to the system without being authenticated by a password.",
					]

					type: "bool"
				}
				state: {
					description: [
						"Configures the state of the username definition as it relates to the device operational configuration. When set to I(present), the username(s) should be configured in the device active configuration and when set to I(absent) the username(s) should not be in the device active configuration",
					]

					choices: ["present", "absent"]
					type: "str"
				}
				access_time: {
					description: [
						"This parameter indicates the time the file's access time should be set to. Should be preserve when no modification is required, YYYYMMDDHHMM.SS when using default time format, or now. Default is None meaning that preserve is the default for state=[file,directory,link,hard] and now is default for state=touch",
					]

					type: "str"
				}
				check_running_config: {
					description: [
						"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
					]

					type: "bool"
				}
			}
		}
		name: {
			description: [
				"The username to be configured on the ICX device.",
			]
			required: true
			type:     "str"
		}
		configured_password: {
			description: "The password to be configured on the ICX device."
			type:        "str"
		}
		update_password: {
			description: [
				"This  argument will instruct the module when to change the password. When set to C(always), the password will always be updated in the device and when set to C(on_create) the password will be updated only if the username is created.",
			]

			default: "always"
			choices: ["on_create", "always"]
			type: "str"
		}
		privilege: {
			description: [
				"The privilege level to be granted to the user",
			]
			default: 0
			choices: ["0", "4", "5"]
			type: "str"
		}
		nopassword: {
			description: [
				"Defines the username without assigning a password. This will allow the user to login to the system without being authenticated by a password.",
			]

			type: "bool"
		}
		purge: {
			description: [
				"If set to true module will remove any previously configured usernames on the device except the current defined set of users.",
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
			type: "str"
		}
		access_time: {
			description: [
				"This parameter indicates the time the file's access time should be set to. Should be preserve when no modification is required, YYYYMMDDHHMM.SS when using default time format, or now. Default is None meaning that preserve is the default for state=[file,directory,link,hard] and now is default for state=touch",
			]

			type: "str"
		}
		check_running_config: {
			description: [
				"Check running configuration. This can be set as environment variable. Module will use environment variable value(default:True), unless it is overridden, by specifying it as module parameter.",
			]

			type:    "bool"
			default: true
		}
	}
}
