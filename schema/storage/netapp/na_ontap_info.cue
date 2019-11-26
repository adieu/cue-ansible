package ansible

module: na_ontap_info: {
	module: "na_ontap_info"
	author: "Piotr Olczak (@dprts) <polczak@redhat.com>"
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	short_description: "NetApp information gatherer"
	description: [
		"This module allows you to gather various information about ONTAP configuration",
	]
	version_added: "2.9"
	requirements: [
		"netapp_lib",
	]
	options: {
		state: {
			type: "str"
			description: [
				"Returns \"info\"",
			]
			default: "info"
			choices: ["info"]
		}
		gather_subset: {
			type: "list"
			description: [
				"When supplied, this argument will restrict the information collected to a given subset.  Possible values for this argument include \"aggregate_info\", \"cluster_node_info\", \"igroup_info\", \"lun_info\", \"net_dns_info\", \"net_ifgrp_info\", \"net_interface_info\", \"net_port_info\", \"nvme_info\", \"nvme_interface_info\", \"nvme_namespace_info\", \"nvme_subsystem_info\", \"ontap_version\", \"qos_adaptive_policy_info\", \"qos_policy_info\", \"security_key_manager_key_info\", \"security_login_account_info\", \"storage_failover_info\", \"volume_info\", \"vserver_info\", \"vserver_login_banner_info\", \"vserver_motd_info\", \"vserver_nfs_info\" Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.",
				"nvme is supported with ONTAP 9.4 onwards.",
				"use \"help\" to get a list of supported information for your system.",
			]
			default: "all"
		}
	}
}
