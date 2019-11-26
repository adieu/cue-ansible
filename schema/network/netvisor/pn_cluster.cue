package ansible

module: pn_cluster: {
	module:            "pn_cluster"
	author:            "Pluribus Networks (@amitsi)"
	version_added:     "2.2"
	short_description: "CLI command to create/delete a cluster."
	deprecated: {
		removed_in:  "2.12"
		why:         "Doesn't support latest Pluribus Networks netvisor"
		alternative: "Latest modules will be pushed in Ansible future versions."
	}
	description: [
		"Execute cluster-create or cluster-delete command.",
		"A cluster allows two switches to cooperate in high-availability (HA) deployments. The nodes that form the cluster must be members of the same fabric. Clusters are typically used in conjunction with a virtual link aggregation group (VLAG) that allows links physically connected to two separate switches appear as a single trunk to a third device. The third device can be a switch,server, or any Ethernet device.",
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
				"Target switch to run the cli on.",
			]
			required: false
			default:  "local"
		}
		state: {
			description: [
				"Specify action to perform. Use 'present' to create cluster and 'absent' to delete cluster.",
			]

			required: true
			choices: ["present", "absent"]
		}
		pn_name: {
			description: [
				"Specify the name of the cluster.",
			]
			required: true
		}
		pn_cluster_node1: description: [
			"Specify the name of the first switch in the cluster.",
			"Required for 'cluster-create'.",
		]
		pn_cluster_node2: description: [
			"Specify the name of the second switch in the cluster.",
			"Required for 'cluster-create'.",
		]
		pn_validate: {
			description: [
				"Validate the inter-switch links and state of switches in the cluster.",
			]
			type: "bool"
		}
	}
}
