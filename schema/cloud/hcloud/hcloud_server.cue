package ansible

module: hcloud_server: {
	module: "hcloud_server"

	short_description: "Create and manage cloud servers on the Hetzner Cloud."

	version_added: "2.8"

	description: [
		"Create, update and manage cloud servers on the Hetzner Cloud.",
	]

	author: [
		"Lukas Kaemmerling (@LKaemmerling)",
	]

	options: {
		id: {
			description: [
				"The ID of the Hetzner Cloud server to manage.",
				"Only required if no server I(name) is given",
			]
			type: "int"
		}
		name: {
			description: [
				"The Name of the Hetzner Cloud server to manage.",
				"Only required if no server I(id) is given or a server does not exists.",
			]
			type: "str"
		}
		server_type: {
			description: [
				"The Server Type of the Hetzner Cloud server to manage.",
				"Required if server does not exists.",
			]
			type: "str"
		}
		ssh_keys: {
			description: [
				"List of SSH key names",
				"The key names correspond to the SSH keys configured for your Hetzner Cloud account access.",
			]

			type: "list"
		}
		volumes: {
			description: [
				"List of Volumes IDs that should be attached to the server on server creation.",
			]
			type: "list"
		}
		image: {
			description: [
				"Image the server should be created from.",
				"Required if server does not exists.",
			]
			type: "str"
		}
		location: {
			description: [
				"Location of Server.",
				"Required if no I(datacenter) is given and server does not exists.",
			]
			type: "str"
		}
		datacenter: {
			description: [
				"Datacenter of Server.",
				"Required of no I(location) is given and server does not exists.",
			]
			type: "str"
		}
		backups: {
			description: [
				"Enable or disable Backups for the given Server.",
			]
			type:    "bool"
			default: false
		}
		upgrade_disk: {
			description: [
				"Resize the disk size, when resizing a server.",
				"If you want to downgrade the server later, this value should be False.",
			]
			type:    "bool"
			default: false
		}
		force_upgrade: {
			description: [
				"Force the upgrade of the server.",
				"Power off the server if it is running on upgrade.",
			]
			type:    "bool"
			default: false
		}
		user_data: {
			description: [
				"User Data to be passed to the server on creation.",
				"Only used if server does not exists.",
			]
			type: "str"
		}
		rescue_mode: {
			description: [
				"Add the Hetzner rescue system type you want the server to be booted into.",
			]
			type:          "str"
			version_added: 2.9
		}
		labels: {
			description: [
				"User-defined labels (key-value pairs).",
			]
			type: "dict"
		}
		delete_protection: {
			description: [
				"Protect the Server for deletion.",
				"Needs to be the same as I(rebuild_protection).",
			]
			type:          "bool"
			version_added: "2.10"
		}
		rebuild_protection: {
			description: [
				"Protect the Server for rebuild.",
				"Needs to be the same as I(delete_protection).",
			]
			type:          "bool"
			version_added: "2.10"
		}
		state: {
			description: [
				"State of the server.",
			]
			default: "present"
			choices: ["absent", "present", "restarted", "started", "stopped", "rebuild"]
			type: "str"
		}
	}
	extends_documentation_fragment: "hcloud"
}
