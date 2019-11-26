package ansible

module: os_ironic: {
	module:                         "os_ironic"
	short_description:              "Create/Delete Bare Metal Resources from OpenStack"
	extends_documentation_fragment: "openstack"
	author:                         "Monty Taylor (@emonty)"
	version_added:                  "2.0"
	description: [
		"Create or Remove Ironic nodes from OpenStack.",
	]
	options: {
		state: {
			description: [
				"Indicates desired state of the resource",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		uuid: description: [
			"globally unique identifier (UUID) to be given to the resource. Will be auto-generated if not specified, and name is specified.",
			"Definition of a UUID will always take precedence to a name value.",
		]
		name: description: [
			"unique name identifier to be given to the resource.",
		]
		driver: {
			description: [
				"The name of the Ironic Driver to use with this node.",
			]
			required: true
		}
		chassis_uuid: description: [
			"Associate the node with a pre-defined chassis.",
		]
		ironic_url: description: [
			"If noauth mode is utilized, this is required to be set to the endpoint URL for the Ironic API.  Use with \"auth\" and \"auth_type\" settings set to None.",
		]

		driver_info: {
			description: [
				"Information for this server's driver. Will vary based on which driver is in use. Any sub-field which is populated will be validated during creation.",
			]

			suboptions: {
				power: {
					description: [
						"Information necessary to turn this server on / off. This often includes such things as IPMI username, password, and IP address.",
					]

					required: true
				}
				deploy: description: [
					"Information necessary to deploy this server directly, without using Nova. THIS IS NOT RECOMMENDED.",
				]
				console: description: [
					"Information necessary to connect to this server's serial console.  Not all drivers support this.",
				]
				management: {
					description: [
						"Information necessary to interact with this server's management interface. May be shared by power_info in some cases.",
					]
					required: true
				}
			}
		}
		nics: {
			description: [
				"A list of network interface cards, eg, \" - mac: aa:bb:cc:aa:bb:cc\"",
			]
			required: true
		}
		properties: {
			description: [
				"Definition of the physical characteristics of this server, used for scheduling purposes",
			]
			suboptions: {
				cpu_arch: {
					description: [
						"CPU architecture (x86_64, i686, ...)",
					]
					default: "x86_64"
				}
				cpus: {
					description: [
						"Number of CPU cores this machine has",
					]
					default: 1
				}
				ram: {
					description: [
						"amount of RAM this machine has, in MB",
					]
					default: 1
				}
				disk_size: {
					description: [
						"size of first storage device in this machine (typically /dev/sda), in GB",
					]
					default: 1
				}
				capabilities: {
					description: [
						"special capabilities for the node, such as boot_option, node_role etc (see U(https://docs.openstack.org/ironic/latest/install/advanced.html) for more information)",
					]

					default:       ""
					version_added: "2.8"
				}
				root_device: {
					description: [
						"Root disk device hints for deployment. (see U(https://docs.openstack.org/ironic/latest/install/include/root-device-hints.html) for allowed hints)",
					]

					default:       ""
					version_added: "2.8"
				}
			}
		}
		skip_update_of_driver_password: {
			description: [
				"Allows the code that would assert changes to nodes to skip the update if the change is a single line consisting of the password field.  As of Kilo, by default, passwords are always masked to API requests, which means the logic as a result always attempts to re-assert the password field.",
			]

			type:    "bool"
			default: "no"
		}
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}

	requirements: ["openstacksdk", "jsonpatch"]
}
