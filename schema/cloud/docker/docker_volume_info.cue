package ansible

module: docker_volume_info: {
	module:            "docker_volume_info"
	version_added:     "2.8"
	short_description: "Retrieve facts about Docker volumes"
	description: [
		"Performs largely the same function as the \"docker volume inspect\" CLI subcommand.",
	]
	options: name: {
		description: [
			"Name of the volume to inspect.",
		]
		type:     "str"
		required: true
		aliases: [
			"volume_name",
		]
	}

	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_1_documentation",
	]

	author: [
		"Felix Fontein (@felixfontein)",
	]

	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 1.8.0 (use L(docker-py,https://pypi.org/project/docker-py/) for Python 2.6)",
		"Docker API >= 1.21",
	]
}
