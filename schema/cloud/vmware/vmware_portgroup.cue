package ansible

module: vmware_portgroup: {
	module:            "vmware_portgroup"
	short_description: "Create a VMware portgroup"
	description: [
		"Create a VMware Port Group on a VMware Standard Switch (vSS) for given ESXi host(s) or hosts of given cluster.",
	]
	version_added: 2.0
	author: [
		"Joseph Callen (@jcpowermac)",
		"Russell Teague (@mtnbikenc)",
		"Abhijeet Kasurde (@Akasurde)",
		"Christian Kotte (@ckotte)",
	]
	notes: [
		"Tested on vSphere 5.5 and 6.5",
		"Complete configuration only tested on vSphere 6.5",
		"C(inbound_policy) and C(rolling_order) are deprecated and will be removed in 2.11",
		"Those two options are only used during portgroup creation. Updating isn't supported with those options.",
	]
	requirements: [
		"python >= 2.6",
		"PyVmomi",
	]
	options: {
		switch: {
			description: [
				"vSwitch to modify.",
			]
			required: true
			aliases: ["switch_name", "vswitch"]
			type: "str"
		}
		portgroup: {
			description: [
				"Portgroup name to add.",
			]
			required: true
			aliases: ["portgroup_name"]
			type: "str"
		}
		vlan_id: {
			description: [
				"VLAN ID to assign to portgroup.",
				"Set to 0 (no VLAN tagging) by default.",
			]
			required: false
			default:  0
			aliases: ["vlan"]
			type: "int"
		}
		security: {
			description: [
				"Network policy specifies layer 2 security settings for a portgroup such as promiscuous mode, where guest adapter listens to all the packets, MAC address changes and forged transmits.",
				"Dict which configures the different security values for portgroup.",
				"Valid attributes are:",
				"- C(promiscuous_mode) (bool): indicates whether promiscuous mode is allowed. (default: None)",
				"- C(forged_transmits) (bool): indicates whether forged transmits are allowed. (default: None)",
				"- C(mac_changes) (bool): indicates whether mac changes are allowed. (default: None)",
			]
			required:      false
			version_added: "2.2"
			aliases: ["security_policy", "network_policy"]
			type: "dict"
		}
		teaming: {
			description: [
				"Dictionary which configures the different teaming values for portgroup.",
				"Valid attributes are:",
				"- C(load_balancing) (string): Network adapter teaming policy. C(load_balance_policy) is also alias to this option. (default: loadbalance_srcid)",
				"   - choices: [ loadbalance_ip, loadbalance_srcmac, loadbalance_srcid, failover_explicit ]",
				"- C(network_failure_detection) (string): Network failure detection. (default: link_status_only)",
				"   - choices: [ link_status_only, beacon_probing ]",
				"- C(notify_switches) (bool): Indicate whether or not to notify the physical switch if a link fails. (default: None)",
				"- C(failback) (bool): Indicate whether or not to use a failback when restoring links. (default: None)",
				"- C(active_adapters) (list): List of active adapters used for load balancing.",
				"- C(standby_adapters) (list): List of standby adapters used for failover.",
				"- All vmnics are used as active adapters if C(active_adapters) and C(standby_adapters) are not defined.",
				"- C(inbound_policy) (bool): Indicate whether or not the teaming policy is applied to inbound frames as well. Deprecated. (default: False)",
				"- C(rolling_order) (bool): Indicate whether or not to use a rolling policy when restoring links. Deprecated. (default: False)",
			]
			required:      false
			version_added: "2.6"
			aliases: ["teaming_policy"]
			type: "dict"
		}
		traffic_shaping: {
			description: [
				"Dictionary which configures traffic shaping for the switch.",
				"Valid attributes are:",
				"- C(enabled) (bool): Status of Traffic Shaping Policy. (default: None)",
				"- C(average_bandwidth) (int): Average bandwidth (kbit/s). (default: None)",
				"- C(peak_bandwidth) (int): Peak bandwidth (kbit/s). (default: None)",
				"- C(burst_size) (int): Burst size (KB). (default: None)",
			]
			required:      false
			version_added: "2.9"
			type:          "dict"
		}
		cluster_name: {
			description: [
				"Name of cluster name for host membership.",
				"Portgroup will be created on all hosts of the given cluster.",
				"This option is required if C(hosts) is not specified.",
			]
			version_added: "2.5"
			aliases: ["cluster"]
			type: "str"
		}
		hosts: {
			description: [
				"List of name of host or hosts on which portgroup needs to be added.",
				"This option is required if C(cluster_name) is not specified.",
			]
			aliases: ["esxi_hostname"]
			version_added: "2.5"
			type:          "list"
		}
		state: {
			description: [
				"Determines if the portgroup should be present or not.",
			]
			choices: [
				"present",
				"absent",
			]
			version_added: "2.5"
			default:       "present"
			type:          "str"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
