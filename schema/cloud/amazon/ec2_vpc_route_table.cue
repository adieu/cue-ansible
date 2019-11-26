package ansible

module: ec2_vpc_route_table: {
	module:            "ec2_vpc_route_table"
	short_description: "Manage route tables for AWS virtual private clouds"
	description: [
		"Manage route tables for AWS virtual private clouds",
	]
	version_added: "2.0"
	author: [
		"Robert Estelle (@erydo)",
		"Rob White (@wimnat)",
		"Will Thames (@willthames)",
	]
	options: {
		lookup: {
			description: "Look up route table by either tags or by route table ID. Non-unique tag lookup will fail. If no tags are specified then no lookup for an existing route table is performed and a new route table will be created. To change tags of a route table you must look up by id."

			default: "tag"
			choices: ["tag", "id"]
			type: "str"
		}
		propagating_vgw_ids: {
			description: "Enable route propagation from virtual gateways specified by ID."
			type:        "list"
			elements:    "str"
		}
		purge_routes: {
			version_added: "2.3"
			description:   "Purge existing routes that are not found in routes."
			type:          "bool"
			default:       "yes"
		}
		purge_subnets: {
			version_added: "2.3"
			description:   "Purge existing subnets that are not found in subnets. Ignored unless the subnets option is supplied."
			default:       "true"
			type:          "bool"
		}
		purge_tags: {
			version_added: "2.5"
			description:   "Purge existing tags that are not found in route table"
			type:          "bool"
			default:       "no"
		}
		route_table_id: {
			description: "The ID of the route table to update or delete."
			type:        "str"
		}
		routes: {
			description: "List of routes in the route table. Routes are specified as dicts containing the keys 'dest' and one of 'gateway_id', 'instance_id', 'network_interface_id', or 'vpc_peering_connection_id'. If 'gateway_id' is specified, you can refer to the VPC's IGW by using the value 'igw'. Routes are required for present states."

			type:     "list"
			elements: "str"
		}
		state: {
			description: "Create or destroy the VPC route table"
			default:     "present"
			choices: ["present", "absent"]
			type: "str"
		}
		subnets: {
			description: "An array of subnets to add to this route table. Subnets may be specified by either subnet ID, Name tag, or by a CIDR such as '10.0.0.0/24'."

			type:     "list"
			elements: "str"
		}
		tags: {
			description: """
		A dictionary of resource tags of the form: { tag1: value1, tag2: value2 }. Tags are used to uniquely identify route tables within a VPC when the route_table_id is not supplied.

		"""

			aliases: ["resource_tags"]
			type: "dict"
		}
		vpc_id: {
			description: "VPC ID of the VPC in which to create the route table."
			required:    true
			type:        "str"
		}
	}
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
