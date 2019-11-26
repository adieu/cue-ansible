package ansible

module: na_ontap_interface: {
	module:            "na_ontap_interface"
	short_description: "NetApp ONTAP LIF configuration"

	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	version_added: "2.6"
	author:        "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"

	description: [
		"Creating / deleting and modifying the LIF.",
	]

	options: {
		state: {
			description: [
				"Whether the specified interface should exist or not.",
			]
			choices: ["present", "absent"]
			default: "present"
		}

		interface_name: {
			description: [
				"Specifies the logical interface (LIF) name.",
			]
			required: true
		}

		home_node: description: [
			"Specifies the LIF's home node.",
			"By default, the first node from the cluster is considered as home node",
		]

		home_port: description: [
			"Specifies the LIF's home port.",
			"Required when C(state=present)",
		]

		role: description: [
			"Specifies the role of the LIF.",
			"When setting role as \"intercluster\", setting protocol is not supported.",
			"Required when C(state=present).",
		]

		address: description: [
			"Specifies the LIF's IP address.",
			"Required when C(state=present)",
		]

		netmask: description: [
			"Specifies the LIF's netmask.",
			"Required when C(state=present).",
		]

		vserver: {
			description: [
				"The name of the vserver to use.",
			]
			required: true
		}

		firewall_policy: description: [
			"Specifies the firewall policy for the LIF.",
		]

		failover_policy: {
			choices: ["disabled", "system-defined", "local-only", "sfo-partner-only", "broadcast-domain-wide"]
			description: [
				"Specifies the failover policy for the LIF.",
			]
		}

		subnet_name: {
			description: [
				"Subnet where the interface address is allocated from. If the option is not used, the IP address will need to be provided by the administrator during configuration.",
			]

			version_added: "2.8"
		}

		admin_status: {
			choices: ["up", "down"]
			description: [
				"Specifies the administrative status of the LIF.",
			]
		}

		is_auto_revert: {
			description:
				"If true, data LIF will revert to its home node under certain circumstances such as startup, and load balancing migration capability is disabled automatically"

			type: "bool"
		}

		force_subnet_association: {
			description:
					"Set this to true to acquire the address from the named subnet and assign the subnet to the LIF."
			type:          "bool"
			version_added: "2.9"
		}

		protocols: description: [
			"Specifies the list of data protocols configured on the LIF. By default, the values in this element are nfs, cifs and fcache.",
			"Other supported protocols are iscsi and fcp. A LIF can be configured to not support any data protocols by specifying 'none'.",
			"Protocol values of none, iscsi, fc-nvme or fcp can't be combined with any other data protocol(s).",
			"address, netmask and firewall_policy parameters are not supported for 'fc-nvme' option.",
		]

		dns_domain_name: {
			description: [
				"Specifies the unique, fully qualified domain name of the DNS zone of this LIF.",
			]
			type:          "str"
			version_added: "2.9"
		}

		listen_for_dns_query: {
			description: [
				"If True, this IP address will listen for DNS queries for the dnszone specified.",
			]
			type:          "bool"
			version_added: "2.9"
		}

		is_dns_update_enabled: {
			description: [
				"Specifies if DNS update is enabled for this LIF. Dynamic updates will be sent for this LIF if updates are enabled at Vserver level.",
			]
			type:          "bool"
			version_added: "2.9"
		}
	}
}
