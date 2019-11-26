package ansible

module: gcp_compute_instance_group: {
	module: "gcp_compute_instance_group"
	description: [
		"Represents an Instance Group resource. Instance groups are self-managed and can contain identical or different instances. Instance groups do not use an instance template. Unlike managed instance groups, you must create and add instances to an instance group manually.",
	]

	short_description: "Creates a GCP InstanceGroup"
	version_added:     "2.6"
	author:            "Google Inc. (@googlecloudplatform)"
	requirements: [
		"python >= 2.6",
		"requests >= 2.18.4",
		"google-auth >= 1.3.0",
	]
	options: {
		state: {
			description: [
				"Whether the given object should exist in GCP",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
			type:    "str"
		}
		description: {
			description: [
				"An optional description of this resource. Provide this property when you create the resource.",
			]

			required: false
			type:     "str"
		}
		name: {
			description: [
				"The name of the instance group.",
				"The name must be 1-63 characters long, and comply with RFC1035.",
			]
			required: false
			type:     "str"
		}
		named_ports: {
			description: [
				"Assigns a name to a port number.",
				"For example: {name: \"http\", port: 80}.",
				"This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports.",
				"For example: [{name: \"http\", port: 80},{name: \"http\", port: 8080}] Named ports apply to all instances in this instance group.",
			]

			required: false
			type:     "list"
			suboptions: {
				name: {
					description: [
						"The name for this named port.",
						"The name must be 1-63 characters long, and comply with RFC1035.",
					]
					required: false
					type:     "str"
				}
				port: {
					description: [
						"The port number, which can be a value between 1 and 65535.",
					]
					required: false
					type:     "int"
				}
			}
		}
		network: {
			description: [
				"The network to which all instances in the instance group belong.",
				"This field represents a link to a Network resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_network task and then set this network field to \"{{ name-of-resource }}\"",
			]

			required: false
			type:     "dict"
		}
		region: {
			description: [
				"The region where the instance group is located (for regional resources).",
			]
			required: false
			type:     "str"
		}
		subnetwork: {
			description: [
				"The subnetwork to which all instances in the instance group belong.",
				"This field represents a link to a Subnetwork resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_subnetwork task and then set this subnetwork field to \"{{ name-of-resource }}\"",
			]

			required: false
			type:     "dict"
		}
		zone: {
			description: [
				"A reference to the zone where the instance group resides.",
			]
			required: true
			type:     "str"
		}
		instances: {
			description: [
				"The list of instances associated with this InstanceGroup.",
				"All instances must be created before being added to an InstanceGroup.",
				"All instances not in this list will be removed from the InstanceGroup and will not be deleted.",
				"Only the full identifier of the instance will be returned.",
			]
			required:      false
			type:          "list"
			version_added: "2.8"
		}
		project: {
			description: [
				"The Google Cloud Platform project to use.",
			]
			type: "str"
		}
		auth_kind: {
			description: [
				"The type of credential used.",
			]
			type:     "str"
			required: true
			choices: [
				"application",
				"machineaccount",
				"serviceaccount",
			]
		}
		service_account_contents: {
			description: [
				"The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.",
			]

			type: "jsonarg"
		}
		service_account_file: {
			description: [
				"The path of a Service Account JSON file if serviceaccount is selected as type.",
			]
			type: "path"
		}
		service_account_email: {
			description: [
				"An optional service account email address if machineaccount is selected and the user does not wish to use the default email.",
			]

			type: "str"
		}
		scopes: {
			description: [
				"Array of scopes to be used",
			]
			type: "list"
		}
		env_type: {
			description: [
				"Specifies which Ansible environment you're running this module within.",
				"This should not be set unless you know what you're doing.",
				"This only alters the User Agent string for any API requests.",
			]
			type: "str"
		}
	}
}
