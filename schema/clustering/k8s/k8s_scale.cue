package ansible

module: k8s_scale: {
	module: "k8s_scale"

	short_description: "Set a new size for a Deployment, ReplicaSet, Replication Controller, or Job."

	version_added: "2.5"

	author: [
		"Chris Houseknecht (@chouseknecht)",
		"Fabian von Feilitzsch (@fabianvf)",
	]

	description: [
		"Similar to the kubectl scale command. Use to set the number of replicas for a Deployment, ReplicaSet, or Replication Controller, or the parallelism attribute of a Job. Supports check mode.",
	]

	extends_documentation_fragment: [
		"k8s_name_options",
		"k8s_auth_options",
		"k8s_resource_options",
		"k8s_scale_options",
	]

	requirements: [
		"python >= 2.7",
		"openshift >= 0.6",
		"PyYAML >= 3.11",
	]
}
