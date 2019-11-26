package ansible

module: win_mapped_drive: {
	module:            "win_mapped_drive"
	version_added:     "2.4"
	short_description: "Map network drives for users"
	description: [
		"Allows you to modify mapped network drives for individual users.",
	]
	options: {
		letter: {
			description: [
				"The letter of the network path to map to.",
				"This letter must not already be in use with Windows.",
			]
			type:     "str"
			required: true
		}
		password: {
			description: [
				"The password for C(username) that is used when testing the initial connection.",
				"This is never saved with a mapped drive, use the M(win_credential) module to persist a username and password for a host.",
			]

			type: "str"
		}
		path: {
			description: [
				"The UNC path to map the drive to.",
				"This is required if C(state=present).",
				"If C(state=absent) and I(path) is not set, the module will delete the mapped drive regardless of the target.",
				"If C(state=absent) and the I(path) is set, the module will throw an error if path does not match the target of the mapped drive.",
			]

			type: "path"
		}
		state: {
			description: [
				"If C(present) will ensure the mapped drive exists.",
				"If C(absent) will ensure the mapped drive does not exist.",
			]
			type: "str"
			choices: ["absent", "present"]
			default: "present"
		}
		username: {
			description: [
				"The username that is used when testing the initial connection.",
				"This is never saved with a mapped drive, the the M(win_credential) module to persist a username and password for a host.",
				"This is required if the mapped drive requires authentication with custom credentials and become, or CredSSP cannot be used.",
				"If become or CredSSP is used, any credentials saved with M(win_credential) will automatically be used instead.",
			]

			type: "str"
		}
	}
	notes: [
		"You cannot use this module to access a mapped drive in another Ansible task, drives mapped with this module are only accessible when logging in interactively with the user through the console or RDP.",
		"It is recommend to run this module with become or CredSSP when the remote path requires authentication.",
		"When using become or CredSSP, the task will have access to any local credentials stored in the user's vault.",
		"If become or CredSSP is not available, the I(username) and I(password) options can be used for the initial authentication but these are not persisted.",
	]

	seealso: [{
		module: "win_credential"
	}]
	author: ["Jordan Borean (@jborean93)"]
}
