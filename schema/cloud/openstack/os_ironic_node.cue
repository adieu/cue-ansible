package ansible

module: os_ironic_node: {
	module:                         "os_ironic_node"
	short_description:              "Activate/Deactivate Bare Metal Resources from OpenStack"
	author:                         "Monty Taylor (@emonty)"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.0"
	description: [
		"Deploy to nodes controlled by Ironic.",
	]
	options: {
		state: {
			description: [
				"Indicates desired state of the resource",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		deploy: {
			description: [
				"Indicates if the resource should be deployed. Allows for deployment logic to be disengaged and control of the node power or maintenance state to be changed.",
			]

			type:    "bool"
			default: "yes"
		}
		uuid: description: [
			"globally unique identifier (UUID) to be given to the resource.",
		]
		ironic_url: description: [
			"If noauth mode is utilized, this is required to be set to the endpoint URL for the Ironic API.  Use with \"auth\" and \"auth_type\" settings set to None.",
		]

		config_drive: description: [
			"A configdrive file or HTTP(S) URL that will be passed along to the node.",
		]

		instance_info: {
			description: [
				"Definition of the instance information which is used to deploy the node.  This information is only required when an instance is set to present.",
			]

			suboptions: {
				image_source: description: [
					"An HTTP(S) URL where the image can be retrieved from.",
				]
				image_checksum: description: [
					"The checksum of image_source.",
				]
				image_disk_format: description: [
					"The type of image that has been requested to be deployed.",
				]
			}
		}
		power: {
			description: [
				"A setting to allow power state to be asserted allowing nodes that are not yet deployed to be powered on, and nodes that are deployed to be powered off.",
			]

			choices: ["present", "absent"]
			default: "present"
		}
		maintenance: {
			description: [
				"A setting to allow the direct control if a node is in maintenance mode.",
			]

			type:    "bool"
			default: "no"
		}
		maintenance_reason: description: [
			"A string expression regarding the reason a node is in a maintenance mode.",
		]

		wait: {
			description: [
				"A boolean value instructing the module to wait for node activation or deactivation to complete before returning.",
			]

			type:          "bool"
			default:       "no"
			version_added: "2.1"
		}
		timeout: {
			description: [
				"An integer value representing the number of seconds to wait for the node activation or deactivation to complete.",
			]

			version_added: "2.1"
		}
		availability_zone: description: ["Ignored. Present for backwards compatibility"]
	}
}
