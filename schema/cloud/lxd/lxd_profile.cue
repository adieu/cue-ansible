package ansible

module: lxd_profile: {
	module:            "lxd_profile"
	short_description: "Manage LXD profiles"
	version_added:     "2.2"
	description: [
		"Management of LXD profiles",
	]
	author: "Hiroaki Nakamura (@hnakamur)"
	options: {
		name: {
			description: [
				"Name of a profile.",
			]
			required: true
		}
		description: {
			description: [
				"Description of the profile.",
			]
			version_added: "2.5"
		}
		config: {
			description: [
				"The config for the container (e.g. {\"limits.memory\": \"4GB\"}). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#patch-3)",
				"If the profile already exists and its \"config\" value in metadata obtained from GET /1.0/profiles/<name> U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#get-19) are different, they this module tries to apply the configurations.",
				"Not all config values are supported to apply the existing profile. Maybe you need to delete and recreate a profile.",
			]

			required: false
		}
		devices: {
			description: [
				"The devices for the profile (e.g. {\"rootfs\": {\"path\": \"/dev/kvm\", \"type\": \"unix-char\"}). See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#patch-3)",
			]

			required: false
		}
		new_name: {
			description: [
				"A new name of a profile.",
				"If this parameter is specified a profile will be renamed to this name. See U(https://github.com/lxc/lxd/blob/master/doc/rest-api.md#post-11)",
			]

			required: false
		}
		state: {
			choices: [
				"present",
				"absent",
			]
			description: [
				"Define the state of a profile.",
			]
			required: false
			default:  "present"
		}
		url: {
			description: [
				"The unix domain socket path or the https URL for the LXD server.",
			]
			required: false
			default:  "unix:/var/lib/lxd/unix.socket"
		}
		snap_url: {
			description: [
				"The unix domain socket path when LXD is installed by snap package manager.",
			]
			required:      false
			default:       "unix:/var/snap/lxd/common/lxd/unix.socket"
			version_added: "2.8"
		}
		client_key: {
			description: [
				"The client certificate key file path.",
			]
			required: false
			default:  "\"{}/.config/lxc/client.key\" .format(os.environ[\"HOME\"])"
			aliases: ["key_file"]
		}
		client_cert: {
			description: [
				"The client certificate file path.",
			]
			required: false
			default:  "\"{}/.config/lxc/client.crt\" .format(os.environ[\"HOME\"])"
			aliases: ["cert_file"]
		}
		trust_password: {
			description: [
				"The client trusted password.",
				"You need to set this password on the LXD server before running this module using the following command. lxc config set core.trust_password <some random password> See U(https://www.stgraber.org/2016/04/18/lxd-api-direct-interaction/)",
				"If trust_password is set, this module send a request for authentication before sending any requests.",
			]

			required: false
		}
	}
	notes: [
		"Profiles must have a unique name. If you attempt to create a profile with a name that already existed in the users namespace the module will simply return as \"unchanged\".",
	]
}
