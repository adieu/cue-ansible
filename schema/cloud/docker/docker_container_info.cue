package ansible

module: docker_container_info: {
	module: "docker_container_info"

	short_description: "Retrieves facts about docker container"

	description: [
		"Retrieves facts about a docker container.",
		"Essentially returns the output of C(docker inspect <name>), similar to what M(docker_container) returns for a non-absent container.",
	]

	version_added: "2.8"

	options: name: {
		description: [
			"The name of the container to inspect.",
			"When identifying an existing container name may be a name or a long or short container ID.",
		]
		type:     "str"
		required: true
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
		"Docker API >= 1.20",
	]
}
