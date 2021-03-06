package ansible

module: docker_volume: {
	module:            "docker_volume"
	version_added:     "2.4"
	short_description: "Manage Docker volumes"
	description: [
		"Create/remove Docker volumes.",
		"Performs largely the same function as the \"docker volume\" CLI subcommand.",
	]
	options: {
		volume_name: {
			description: [
				"Name of the volume to operate on.",
			]
			type:     "str"
			required: true
			aliases: [
				"name",
			]
		}

		driver: {
			description: [
				"Specify the type of volume. Docker provides the C(local) driver, but 3rd party drivers can also be used.",
			]
			type:    "str"
			default: "local"
		}

		driver_options: {
			description: [
				"Dictionary of volume settings. Consult docker docs for valid options and values: U(https://docs.docker.com/engine/reference/commandline/volume_create/#driver-specific-options)",
			]

			type: "dict"
		}

		labels: {
			description: [
				"Dictionary of label key/values to set for the volume",
			]
			type: "dict"
		}

		force: {
			description: [
				"With state C(present) causes the volume to be deleted and recreated if the volume already exist and the driver, driver options or labels differ. This will cause any data in the existing volume to be lost.",
				"Deprecated. Will be removed in Ansible 2.12. Set I(recreate) to C(options-changed) instead for the same behavior of setting I(force) to C(yes).",
			]

			type:    "bool"
			default: false
		}

		recreate: {
			version_added: "2.8"
			description: [
				"Controls when a volume will be recreated when I(state) is C(present). Please note that recreating an existing volume will cause **any data in the existing volume to be lost!** The volume will be deleted and a new volume with the same name will be created.",
				"The value C(always) forces the volume to be always recreated.",
				"The value C(never) makes sure the volume will not be recreated.",
				"The value C(options-changed) makes sure the volume will be recreated if the volume already exist and the driver, driver options or labels differ.",
			]

			type:    "str"
			default: "never"
			choices: [
				"always",
				"never",
				"options-changed",
			]
		}

		state: {
			description: [
				"C(absent) deletes the volume.",
				"C(present) creates the volume, if it does not already exist.",
			]
			type:    "str"
			default: "present"
			choices: [
				"absent",
				"present",
			]
		}
	}

	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_1_documentation",
	]

	author: ["Alex Grönholm (@agronholm)"]

	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 1.10.0 (use L(docker-py,https://pypi.org/project/docker-py/) for Python 2.6)",
		"The docker server >= 1.9.0",
	]
}
