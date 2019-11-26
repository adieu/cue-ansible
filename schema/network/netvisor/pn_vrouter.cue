package ansible

module: pn_vrouter: {
	module:            "pn_vrouter"
	author:            "Pluribus Networks (@amitsi)"
	version_added:     "2.2"
	short_description: "CLI command to create/delete/modify a vrouter."
	deprecated: {
		removed_in:  "2.12"
		why:         "Doesn't support latest Pluribus Networks netvisor"
		alternative: "Latest modules will be pushed in Ansible future versions."
	}
	description: [
		"Execute vrouter-create, vrouter-delete, vrouter-modify command.",
		"Each fabric, cluster, standalone switch, or virtual network (VNET) can provide its tenants with a virtual router (vRouter) service that forwards traffic between networks and implements Layer 3 protocols.",
		"C(vrouter-create) creates a new vRouter service.",
		"C(vrouter-delete) deletes a vRouter service.",
		"C(vrouter-modify) modifies a vRouter service.",
	]
	options: {
		pn_cliusername: {
			description: [
				"Provide login username if user is not root.",
			]
			required: false
		}
		pn_clipassword: {
			description: [
				"Provide login password if user is not root.",
			]
			required: false
		}
		pn_cliswitch: {
			description: [
				"Target switch(es) to run the CLI on.",
			]
			required: false
			default:  "local"
		}
		state: {
			description: [
				"State the action to perform. Use 'present' to create vrouter, 'absent' to delete vrouter and 'update' to modify vrouter.",
			]

			required: true
			choices: ["present", "absent", "update"]
		}
		pn_name: {
			description: [
				"Specify the name of the vRouter.",
			]
			required: true
		}
		pn_vnet: description: [
			"Specify the name of the VNET.",
			"Required for vrouter-create.",
		]
		pn_service_type: {
			description: [
				"Specify if the vRouter is a dedicated or shared VNET service.",
			]
			choices: ["dedicated", "shared"]
		}
		pn_service_state: {
			description: [
				"Specify to enable or disable vRouter service.",
			]
			choices: ["enable", "disable"]
		}
		pn_router_type: {
			description: [
				"Specify if the vRouter uses software or hardware.",
				"Note that if you specify hardware as router type, you cannot assign IP addresses using DHCP. You must specify a static IP address.",
			]

			choices: ["hardware", "software"]
		}
		pn_hw_vrrp_id: description: [
			"Specifies the VRRP ID for a hardware vrouter.",
		]
		pn_router_id: description: [
			"Specify the vRouter IP address.",
		]
		pn_bgp_as: description: [
			"Specify the Autonomous System Number(ASN) if the vRouter runs Border Gateway Protocol(BGP).",
		]

		pn_bgp_redistribute: {
			description: [
				"Specify how BGP routes are redistributed.",
			]
			choices: ["static", "connected", "rip", "ospf"]
		}
		pn_bgp_max_paths: description: [
			"Specify the maximum number of paths for BGP. This is a number between 1 and 255 or 0 to unset.",
		]

		pn_bgp_options: description: [
			"Specify other BGP options as a whitespaces separated string within single quotes ''.",
		]

		pn_rip_redistribute: {
			description: [
				"Specify how RIP routes are redistributed.",
			]
			choices: ["static", "connected", "ospf", "bgp"]
		}
		pn_ospf_redistribute: {
			description: [
				"Specify how OSPF routes are redistributed.",
			]
			choices: ["static", "connected", "bgp", "rip"]
		}
		pn_ospf_options: description: [
			"Specify other OSPF options as a whitespaces separated string within single quotes ''.",
		]

		pn_vrrp_track_port: description: ["Specify list of ports and port ranges."]
	}
}
