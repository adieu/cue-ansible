package ansible

module: gcp_compute_instance_group_manager: {
	module: "gcp_compute_instance_group_manager"
	description: [
		"Creates a managed instance group using the information that you specify in the request. After the group is created, it schedules an action to create instances in the group using the specified instance template. This operation is marked as DONE when the group is created even if the instances in the group have not yet been created. You must separately verify the status of the individual instances.",
		"A managed instance group can have up to 1000 VM instances per group.",
	]
	short_description: "Creates a GCP InstanceGroupManager"
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
		base_instance_name: {
			description: [
				"The base instance name to use for instances in this group. The value must be 1-58 characters long. Instances are named by appending a hyphen and a random four-character string to the base instance name.",
				"The base instance name must comply with RFC1035.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"An optional description of this resource. Provide this property when you create the resource.",
			]

			required: false
			type:     "str"
		}
		instance_template: {
			description: [
				"The instance template that is specified for this managed instance group. The group uses this template to create all new instances in the managed instance group.",
				"This field represents a link to a InstanceTemplate resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'selfLink' and value of your resource's selfLink Alternatively, you can add `register: name-of-resource` to a gcp_compute_instance_template task and then set this instance_template field to \"{{ name-of-resource }}\"",
			]

			required: true
			type:     "dict"
		}
		name: {
			description: [
				"The name of the managed instance group. The name must be 1-63 characters long, and comply with RFC1035.",
			]

			required: true
			type:     "str"
		}
		named_ports: {
			description: [
				"Named ports configured for the Instance Groups complementary to this Instance Group Manager.",
			]

			required: false
			type:     "list"
			suboptions: {
				name: {
					description: [
						"The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.",
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
		target_pools: {
			description: [
				"TargetPool resources to which instances in the instanceGroup field are added. The target pools automatically apply to all of the instances in the managed instance group.",
			]

			required: false
			type:     "list"
		}
		target_size: {
			description: [
				"The target number of running instances for this managed instance group. Deleting or abandoning instances reduces this number. Resizing the group changes this number.",
			]

			required: false
			type:     "int"
		}
		zone: {
			description: [
				"The zone the managed instance group resides.",
			]
			required: true
			type:     "str"
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
