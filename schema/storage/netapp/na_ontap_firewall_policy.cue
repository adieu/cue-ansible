package ansible

module: na_ontap_firewall_policy: {
	module:            "na_ontap_firewall_policy"
	short_description: "NetApp ONTAP Manage a firewall policy"
	version_added:     "2.7"
	author:            "NetApp Ansible Team (@carchi8py) <ng-ansibleteam@netapp.com>"
	description: [
		"Configure firewall on an ONTAP node and manage firewall policy for an ONTAP SVM",
	]
	extends_documentation_fragment: [
		"netapp.na_ontap",
	]
	requirements: [
		"Python package ipaddress. Install using 'pip install ipaddress'",
	]
	options: {
		state: {
			description: [
				"Whether to set up a firewall policy or not",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		allow_list: description: [
			"A list of IPs and masks to use.",
			"The host bits of the IP addresses used in this list must be set to 0.",
		]
		policy: description: [
			"A policy name for the firewall policy",
		]
		service: {
			description: [
				"The service to apply the policy to",
			]
			choices: ["dns", "http", "https", "ndmp", "ndmps", "ntp", "rsh", "snmp", "ssh", "telnet"]
		}
		vserver: description: [
			"The Vserver to apply the policy to.",
		]
		enable: {
			description: [
				"enable firewall on a node",
			]
			choices: ["enable", "disable"]
		}
		logging: {
			description: [
				"enable logging for firewall on a node",
			]
			choices: ["enable", "disable"]
		}
		node: description: ["The node to run the firewall configuration on"]
	}
}
