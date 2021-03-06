package ansible

module: gluster_peer: {
	module:            "gluster_peer"
	short_description: "Attach/Detach peers to/from the cluster"
	description: [
		"Create or diminish a GlusterFS trusted storage pool. A set of nodes can be added into an existing trusted storage pool or a new storage pool can be formed. Or, nodes can be removed from an existing trusted storage pool.",
	]

	version_added: "2.6"
	author:        "Sachidananda Urs (@sac)"
	options: {
		state: {
			choices: ["present", "absent"]
			default: "present"
			description: [
				"Determines whether the nodes should be attached to the pool or removed from the pool. If the state is present, nodes will be attached to the pool. If state is absent, nodes will be detached from the pool.",
			]

			required: true
		}
		nodes: {
			description: [
				"List of nodes that have to be probed into the pool.",
			]
			required: true
		}
		force: {
			type:    "bool"
			default: "false"
			description: [
				"Applicable only while removing the nodes from the pool. gluster will refuse to detach a node from the pool if any one of the node is down, in such cases force can be used.",
			]
		}
	}

	requirements: [
		"GlusterFS > 3.2",
	]
	notes: ["This module does not support check mode."]
}
