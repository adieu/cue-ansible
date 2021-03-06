package ansible

module: ovirt_vnic_profile: {
	module:            "ovirt_vnic_profile"
	short_description: "Module to manage vNIC profile of network in oVirt/RHV"
	version_added:     "2.8"
	author: [
		"Ondra Machacek (@machacekondra)",
		"Martin Necas (@mnecas)",
	]
	description: [
		"Module to manage vNIC profile of network in oVirt/RHV",
	]
	options: {
		name: {
			description: [
				"A human-readable name in plain text.",
			]
			required: true
		}
		state: {
			description: [
				"Should the vNIC be absent/present.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		description: description: [
			"A human-readable description in plain text.",
		]
		data_center: {
			description: [
				"Datacenter name where network reside.",
			]
			required: true
		}
		network: {
			description: [
				"Name of network to which is vNIC attached.",
			]
			required: true
		}
		network_filter: description: [
			"The network filter enables to filter packets send to/from the VM's nic according to defined rules.",
		]
		custom_properties: {
			description: [
				"Custom properties applied to the vNIC profile.",
				"Custom properties is a list of dictionary which can have following values:",
			]
			suboptions: {
				name: description: [
					"Name of the custom property. For example: I(hugepages), I(vhost), I(sap_agent), etc.",
				]
				regexp: description: [
					"Regular expression to set for custom property.",
				]
				value: description: [
					"Value to set for custom property.",
				]
			}
		}
		qos: description: [
			"Quality of Service attributes regulate inbound and outbound network traffic of the NIC.",
		]
		port_mirroring: {
			description: [
				"Enables port mirroring.",
			]
			type: "bool"
		}
		pass_through: {
			description: [
				"Enables passthrough to an SR-IOV-enabled host NIC.",
				"When enabled C(qos) and  C(network_filter) are automatically set to None and C(port_mirroring) to False.",
				"When enabled and C(migratable) not specified then C(migratable) is enabled.",
				"Port mirroring, QoS and network filters are not supported on passthrough profiles.",
			]
			choices: ["disabled", "enabled"]
		}
		migratable: {
			description: [
				"Marks whether pass_through NIC is migratable or not.",
			]
			type: "bool"
		}
	}
	extends_documentation_fragment: "ovirt"
}
