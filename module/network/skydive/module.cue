package skydive

skydive_node :: {

	// State of the Skydive Node. If value is I(present) new node will be created else if it is I(absent) it will be deleted.

	state?: string

	// To define host for the node.

	host?: string

	// To define metadata for the node.

	metadata?: string

	// To define name for the node.

	name: string

	// To define type for the node.

	node_type: string

	// used to generate the UUID of the node

	seed?: string
}

skydive_capture :: {

	// To define flow capture name.

	capture_name?: string

	// Configures a text string to be associated with the instance of this object.

	description?: string

	// To define flow capture interface name.

	interface_name?: string

	// To define flow capture Layer KeyMode.

	layer_key_mode?: string

	// To define flow capture ExtraTCPMetric.

	extra_tcp_metric?: bool

	// To define flow capture IPDefrag.

	ip_defrag?: bool

	// It's the complete gremlin query which the users can input, I(G.V().Has('Name', 'eth0', 'Type', 'device')), to create the capture. And, if the user directly inputs the gremlin query then user is not required to input any other module parameter as gremlin query takes care of creating the flow capture.

	query?: string

	// To define flow capture ReassembleTCP.

	reassemble_tcp?: bool

	// State of the flow capture. If value is I(present) flow capture will be created else if it is I(absent) it will be deleted.

	state?: string

	// To define flow capture interface type.

	type?: string
}

skydive_edge :: {

	// To defined the first node of the link, it can be either an ID or a gremlin expression

	parent_node: string

	// To define relation type of the node I(ownership, layer2, layer3).

	relation_type: string

	// State of the Skydive Edge. If value is I(present) new edge will be created else if it is I(absent) it will be deleted.

	state?: string

	// To defined the second node of the link, it can be either an ID or a gremlin expression

	child_node: string

	// To define the host of the node.

	host?: string

	// To define metadata for the edge.

	metadata?: string
}
