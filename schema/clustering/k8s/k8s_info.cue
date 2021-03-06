package ansible

module: k8s_info: {
	module: "k8s_info"

	short_description: "Describe Kubernetes (K8s) objects"

	version_added: "2.7"

	author: [
		"Will Thames (@willthames)",
	]

	description: [
		"Use the OpenShift Python client to perform read operations on K8s objects.",
		"Access to the full range of K8s APIs.",
		"Authenticate using either a config file, certificates, password or token.",
		"Supports check mode.",
		"This module was called C(k8s_facts) before Ansible 2.9. The usage did not change.",
	]

	options: {
		api_version: {
			description: [
				"Use to specify the API version. in conjunction with I(kind), I(name), and I(namespace) to identify a specific object.",
			]

			default: "v1"
			aliases: [
				"api",
				"version",
			]
		}
		kind: {
			description: [
				"Use to specify an object model. Use in conjunction with I(api_version), I(name), and I(namespace) to identify a specific object.",
			]

			required: true
		}
		name: description: [
			"Use to specify an object name.  Use in conjunction with I(api_version), I(kind) and I(namespace) to identify a specific object.",
		]

		namespace: description: [
			"Use to specify an object namespace. Use in conjunction with I(api_version), I(kind), and I(name) to identify a specific object.",
		]

		label_selectors: description: "List of label selectors to use to filter results"
		field_selectors: description: "List of field selectors to use to filter results"
	}

	extends_documentation_fragment: [
		"k8s_auth_options",
	]

	requirements: [
		"python >= 2.7",
		"openshift >= 0.6",
		"PyYAML >= 3.11",
	]
}
