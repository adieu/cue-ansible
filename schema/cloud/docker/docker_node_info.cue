package ansible

module: docker_node_info: {
	module: "docker_node_info"

	short_description: "Retrieves facts about docker swarm node from Swarm Manager"

	description: [
		"Retrieves facts about a docker node.",
		"Essentially returns the output of C(docker node inspect <name>).",
		"Must be executed on a host running as Swarm Manager, otherwise the module will fail.",
	]

	version_added: "2.8"

	options: {
		name: {
			description: [
				"The name of the node to inspect.",
				"The list of nodes names to inspect.",
				"If empty then return information of all nodes in Swarm cluster.",
				"When identifying the node use either the hostname of the node (as registered in Swarm) or node ID.",
				"If I(self) is C(true) then this parameter is ignored.",
			]
			type:     "list"
			elements: "str"
		}
		self: {
			description: [
				"If C(true), queries the node (i.e. the docker daemon) the module communicates with.",
				"If C(true) then I(name) is ignored.",
				"If C(false) then query depends on I(name) presence and value.",
			]
			type:    "bool"
			default: false
		}
	}
	extends_documentation_fragment: [
		"docker",
		"docker.docker_py_1_documentation",
	]

	author: [
		"Piotr Wojciechowski (@WojciechowskiPiotr)",
	]

	requirements: [
		"L(Docker SDK for Python,https://docker-py.readthedocs.io/en/stable/) >= 2.4.0",
		"Docker API >= 1.24",
	]
}
