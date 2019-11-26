package ansible

module: atomic_container: {
	module:            "atomic_container"
	short_description: "Manage the containers on the atomic host platform"
	description: [
		"Manage the containers on the atomic host platform",
		"Allows to manage the lifecycle of a container on the atomic host platform",
	]
	version_added: "2.4"
	author:        "Giuseppe Scrivano (@giuseppe)"
	notes: [
		"Host should support C(atomic) command",
	]
	requirements: [
		"atomic",
		"python >= 2.6",
	]
	options: {
		backend: {
			description: [
				"Define the backend to use for the container",
			]
			required: true
			choices: ["docker", "ostree"]
		}
		name: {
			description: [
				"Name of the container",
			]
			required: true
		}
		image: {
			description: [
				"The image to use to install the container",
			]
			required: true
		}
		rootfs: description: [
			"Define the rootfs of the image",
		]
		state: {
			description: [
				"State of the container",
			]
			required: true
			choices: ["latest", "present", "absent", "rollback"]
			default: "latest"
		}
		mode: {
			description: [
				"Define if it is an user or a system container",
			]
			required: true
			choices: ["user", "system"]
		}
		values: description: [
			"Values for the installation of the container.  This option is permitted only with mode 'user' or 'system'. The values specified here will be used at installation time as --set arguments for atomic install.",
		]
	}
}
