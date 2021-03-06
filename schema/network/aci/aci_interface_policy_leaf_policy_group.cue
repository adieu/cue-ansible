package ansible

module: aci_interface_policy_leaf_policy_group: {
	module:            "aci_interface_policy_leaf_policy_group"
	short_description: "Manage fabric interface policy leaf policy groups (infra:AccBndlGrp, infra:AccPortGrp)"
	description: [
		"Manage fabric interface policy leaf policy groups on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		policy_group: {
			description: [
				"Name of the leaf policy group to be added/deleted.",
			]
			type: "str"
			aliases: ["name", "policy_group_name"]
		}
		description: {
			description: [
				"Description for the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["descr"]
		}
		lag_type: {
			description: [
				"Selector for the type of leaf policy group we want to create.",
				"C(leaf) for Leaf Access Port Policy Group",
				"C(link) for Port Channel (PC)",
				"C(node) for Virtual Port Channel (VPC)",
			]
			type:     "str"
			required: true
			choices: ["leaf", "link", "node"]
			aliases: ["lag_type_name"]
		}
		link_level_policy: {
			description: [
				"Choice of link_level_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["link_level_policy_name"]
		}
		cdp_policy: {
			description: [
				"Choice of cdp_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["cdp_policy_name"]
		}
		mcp_policy: {
			description: [
				"Choice of mcp_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["mcp_policy_name"]
		}
		lldp_policy: {
			description: [
				"Choice of lldp_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["lldp_policy_name"]
		}
		stp_interface_policy: {
			description: [
				"Choice of stp_interface_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["stp_interface_policy_name"]
		}
		egress_data_plane_policing_policy: {
			description: [
				"Choice of egress_data_plane_policing_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["egress_data_plane_policing_policy_name"]
		}
		ingress_data_plane_policing_policy: {
			description: [
				"Choice of ingress_data_plane_policing_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["ingress_data_plane_policing_policy_name"]
		}
		priority_flow_control_policy: {
			description: [
				"Choice of priority_flow_control_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["priority_flow_control_policy_name"]
		}
		fibre_channel_interface_policy: {
			description: [
				"Choice of fibre_channel_interface_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["fibre_channel_interface_policy_name"]
		}
		slow_drain_policy: {
			description: [
				"Choice of slow_drain_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["slow_drain_policy_name"]
		}
		port_channel_policy: {
			description: [
				"Choice of port_channel_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["port_channel_policy_name"]
		}
		monitoring_policy: {
			description: [
				"Choice of monitoring_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["monitoring_policy_name"]
		}
		storm_control_interface_policy: {
			description: [
				"Choice of storm_control_interface_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["storm_control_interface_policy_name"]
		}
		l2_interface_policy: {
			description: [
				"Choice of l2_interface_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["l2_interface_policy_name"]
		}
		port_security_policy: {
			description: [
				"Choice of port_security_policy to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["port_security_policy_name"]
		}
		aep: {
			description: [
				"Choice of attached_entity_profile (AEP) to be used as part of the leaf policy group to be created.",
			]
			type: "str"
			aliases: ["aep_name"]
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
	}
	extends_documentation_fragment: "aci"
	notes: [
		"When using the module please select the appropriate link_aggregation_type (lag_type). C(link) for Port Channel(PC), C(node) for Virtual Port Channel(VPC) and C(leaf) for Leaf Access Port Policy Group.",
	]

	seealso: [{
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC classes B(infra:AccBndlGrp) and B(infra:AccPortGrp)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Bruno Calogero (@brunocalogero)"]
}
