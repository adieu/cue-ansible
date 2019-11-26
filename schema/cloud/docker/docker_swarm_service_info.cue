package ansible

module: docker_swarm_service_info: {
	module: "docker_swarm_service_info"

	short_description: "Retrieves information about docker services from a Swarm Manager"

	description: [
		"Retrieves information about a docker service.",
		"Essentially returns the output of C(docker service inspect <name>).",
		"Must be executed on a host running as Swarm Manager, otherwise the module will fail.",
	]

	version_added: "2.8"

	options: name: {
		description: [
			"The name of the service to inspect.",
		]
		type:     "str"
		required: true
	}
	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_1_documentation",
	]

	author: [
		"Hannes Ljungberg (@hannseman)",
	]

	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 2.0.0",
		"Docker API >= 1.24",
	]
}
