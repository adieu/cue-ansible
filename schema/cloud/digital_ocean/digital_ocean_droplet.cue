package ansible

module: digital_ocean_droplet: {
	module:            "digital_ocean_droplet"
	short_description: "Create and delete a DigitalOcean droplet"
	description: [
		"Create and delete a droplet in DigitalOcean and optionally wait for it to be active.",
	]
	version_added: "2.8"
	author:        "Gurchet Rai (@gurch101)"
	options: {
		state: {
			description: [
				"Indicate desired state of the target.",
			]
			default: "present"
			choices: ["present", "absent"]
		}
		id: {
			description: [
				"Numeric, the droplet id you want to operate on.",
			]
			aliases: ["droplet_id"]
		}
		name: description: [
			"String, this is the name of the droplet - must be formatted by hostname rules.",
		]
		unique_name: {
			description: [
				"require unique hostnames.  By default, DigitalOcean allows multiple hosts with the same name.  Setting this to \"yes\" allows only one host per name.  Useful for idempotence.",
			]

			default: false
			type:    "bool"
		}
		size: {
			description: [
				"This is the slug of the size you would like the droplet created with.",
			]
			aliases: ["size_id"]
		}
		image: {
			description: [
				"This is the slug of the image you would like the droplet created with.",
			]
			aliases: ["image_id"]
		}
		region: {
			description: [
				"This is the slug of the region you would like your server to be created in.",
			]
			aliases: ["region_id"]
		}
		ssh_keys: {
			description: [
				"array of SSH key (numeric) ID that you would like to be added to the server.",
			]
			required: false
		}
		private_networking: {
			description: [
				"add an additional, private network interface to droplet for inter-droplet communication.",
			]
			default: false
			type:    "bool"
		}
		user_data: {
			description: [
				"opaque blob of data which is made available to the droplet",
			]
			required: false
		}
		ipv6: {
			description: [
				"enable IPv6 for your droplet.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		wait: {
			description: [
				"Wait for the droplet to be active before returning.  If wait is \"no\" an ip_address may not be returned.",
			]
			required: false
			default:  true
			type:     "bool"
		}
		wait_timeout: {
			description: [
				"How long before wait gives up, in seconds, when creating a droplet.",
			]
			default: 120
		}
		backups: {
			description: [
				"indicates whether automated backups should be enabled.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		monitoring: {
			description: [
				"indicates whether to install the DigitalOcean agent for monitoring.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		tags: {
			description: [
				"List, A list of tag names as strings to apply to the Droplet after it is created. Tag names can either be existing or new tags.",
			]
			required: false
		}
		volumes: {
			description: [
				"List, A list including the unique string identifier for each Block Storage volume to be attached to the Droplet.",
			]
			required: false
		}
		oauth_token: {
			description: [
				"DigitalOcean OAuth token. Can be specified in C(DO_API_KEY), C(DO_API_TOKEN), or C(DO_OAUTH_TOKEN) environment variables",
			]
			aliases: ["API_TOKEN"]
			required: true
		}
	}
	requirements: ["python >= 2.6"]
}
