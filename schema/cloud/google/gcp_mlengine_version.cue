package ansible

module: gcp_mlengine_version: {
	module: "gcp_mlengine_version"
	description: [
		"Each version is a trained model deployed in the cloud, ready to handle prediction requests. A model can have multiple versions .",
	]

	short_description: "Creates a GCP Version"
	version_added:     "2.9"
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
		name: {
			description: [
				"The name specified for the version when it was created.",
				"The version name must be unique within the model it is created in.",
			]
			required: true
			type:     "str"
		}
		description: {
			description: [
				"The description specified for the version when it was created.",
			]
			required: false
			type:     "str"
		}
		deployment_uri: {
			description: [
				"The Cloud Storage location of the trained model used to create the version.",
			]
			required: true
			type:     "str"
		}
		runtime_version: {
			description: [
				"The AI Platform runtime version to use for this deployment.",
			]
			required: false
			type:     "str"
		}
		machine_type: {
			description: [
				"The type of machine on which to serve the model. Currently only applies to online prediction service.",
				"Some valid choices include: \"mls1-c1-m2\", \"mls1-c4-m2\"",
			]
			required: false
			type:     "str"
		}
		labels: {
			description: [
				"One or more labels that you can add, to organize your model versions.",
			]
			required: false
			type:     "dict"
		}
		framework: {
			description: [
				"The machine learning framework AI Platform uses to train this version of the model.",
				"Some valid choices include: \"FRAMEWORK_UNSPECIFIED\", \"TENSORFLOW\", \"SCIKIT_LEARN\", \"XGBOOST\"",
			]

			required: false
			type:     "str"
		}
		python_version: {
			description: [
				"The version of Python used in prediction. If not set, the default version is '2.7'. Python '3.5' is available when runtimeVersion is set to '1.4' and above. Python '2.7' works with all supported runtime versions.",
				"Some valid choices include: \"2.7\", \"3.5\"",
			]
			required: false
			type:     "str"
		}
		service_account: {
			description: [
				"Specifies the service account for resource access control.",
			]
			required: false
			type:     "str"
		}
		auto_scaling: {
			description: [
				"Automatically scale the number of nodes used to serve the model in response to increases and decreases in traffic. Care should be taken to ramp up traffic according to the model's ability to scale or you will start seeing increases in latency and 429 response codes.",
			]

			required: false
			type:     "dict"
			suboptions: min_nodes: {
				description: [
					"The minimum number of nodes to allocate for this mode.",
				]
				required: false
				type:     "int"
			}
		}
		manual_scaling: {
			description: [
				"Manually select the number of nodes to use for serving the model. You should generally use autoScaling with an appropriate minNodes instead, but this option is available if you want more predictable billing. Beware that latency and error rates will increase if the traffic exceeds that capability of the system to serve it based on the selected number of nodes.",
			]

			required: false
			type:     "dict"
			suboptions: nodes: {
				description: [
					"The number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed.",
				]

				required: false
				type:     "int"
			}
		}
		prediction_class: {
			description: [
				"The fully qualified name (module_name.class_name) of a class that implements the Predictor interface described in this reference field. The module containing this class should be included in a package provided to the packageUris field.",
			]

			required: false
			type:     "str"
		}
		model: {
			description: [
				"The model that this version belongs to.",
				"This field represents a link to a Model resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_mlengine_model task and then set this model field to \"{{ name-of-resource }}\"",
			]

			required: true
			type:     "dict"
		}
		is_default: {
			description: [
				"If true, this version will be used to handle prediction requests that do not specify a version.",
			]

			required: false
			type:     "bool"
			aliases: [
				"default",
			]
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
