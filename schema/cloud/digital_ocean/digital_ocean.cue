package ansible

module: digital_ocean: {
	module:            "digital_ocean"
	short_description: "Create/delete a droplet/SSH_key in DigitalOcean"
	deprecated: {
		removed_in:  "2.12"
		why:         "Updated module to remove external dependency with increased functionality."
		alternative: "Use M(digital_ocean_droplet) instead."
	}
	description: [
		"Create/delete a droplet in DigitalOcean and optionally wait for it to be 'running', or deploy an SSH key.",
	]
	version_added: "1.3"
	author:        "Vincent Viallet (@zbal)"
	options: {
		command: {
			description: [
				"Which target you want to operate on.",
			]
			default: "droplet"
			choices: ["droplet", "ssh"]
		}
		state: {
			description: [
				"Indicate desired state of the target.",
			]
			default: "present"
			choices: ["present", "active", "absent", "deleted"]
		}
		api_token: {
			description: [
				"DigitalOcean api token.",
			]
			version_added: "1.9.5"
		}
		id: {
			description: [
				"Numeric, the droplet id you want to operate on.",
			]
			aliases: ["droplet_id"]
		}
		name: description: [
			"String, this is the name of the droplet - must be formatted by hostname rules, or the name of a SSH key.",
		]
		unique_name: {
			description: [
				"Bool, require unique hostnames.  By default, DigitalOcean allows multiple hosts with the same name.  Setting this to \"yes\" allows only one host per name.  Useful for idempotence.",
			]

			type:          "bool"
			default:       "no"
			version_added: "1.4"
		}
		size_id: description: [
			"This is the slug of the size you would like the droplet created with.",
		]
		image_id: description: [
			"This is the slug of the image you would like the droplet created with.",
		]
		region_id: description: [
			"This is the slug of the region you would like your server to be created in.",
		]
		ssh_key_ids: description: [
			"Optional, array of SSH key (numeric) ID that you would like to be added to the server.",
		]
		virtio: {
			description: [
				"Bool, turn on virtio driver in droplet for improved network and storage I/O.",
			]
			type:          "bool"
			default:       "yes"
			version_added: "1.4"
		}
		private_networking: {
			description: [
				"Bool, add an additional, private network interface to droplet for inter-droplet communication.",
			]
			type:          "bool"
			default:       "no"
			version_added: "1.4"
		}
		backups_enabled: {
			description: [
				"Optional, Boolean, enables backups for your droplet.",
			]
			type:          "bool"
			default:       "no"
			version_added: "1.6"
		}
		user_data: {
			description: [
				"opaque blob of data which is made available to the droplet",
			]
			version_added: "2.0"
		}
		ipv6: {
			description: [
				"Optional, Boolean, enable IPv6 for your droplet.",
			]
			type:          "bool"
			default:       "no"
			version_added: "2.2"
		}
		wait: {
			description: [
				"Wait for the droplet to be in state 'running' before returning.  If wait is \"no\" an ip_address may not be returned.",
			]
			type:    "bool"
			default: "yes"
		}
		wait_timeout: {
			description: [
				"How long before wait gives up, in seconds.",
			]
			default: 300
		}
		ssh_pub_key: description: [
			"The public SSH key you want to add to your account.",
		]
	}

	notes: [
		"Two environment variables can be used, DO_API_KEY and DO_API_TOKEN. They both refer to the v2 token.",
		"As of Ansible 1.9.5 and 2.0, Version 2 of the DigitalOcean API is used, this removes C(client_id) and C(api_key) options in favor of C(api_token).",
		"If you are running Ansible 1.9.4 or earlier you might not be able to use the included version of this module as the API version used has been retired. Upgrade Ansible or, if unable to, try downloading the latest version of this module from github and putting it into a 'library' directory.",
	]

	requirements: [
		"python >= 2.6",
		"dopy",
	]
}
