package ansible

module: cnos_bgp: {
	module:            "cnos_bgp"
	author:            "Anil Kumar Muraleedharan (@amuraleedhar)"
	short_description: "Manage BGP resources and attributes on devices running CNOS"
	description: [
		"This module allows you to work with Border Gateway Protocol (BGP) related configurations. The operators used are overloaded to ensure control over switch BGP configurations. This module is invoked using method with asNumber as one of its arguments. The first level of the BGP configuration allows to set up an AS number, with the following attributes going into various configuration operations under the context of BGP. After passing this level, there are eight BGP arguments that will perform further configurations. They are bgpArg1, bgpArg2, bgpArg3, bgpArg4, bgpArg5, bgpArg6, bgpArg7, and bgpArg8. For more details on how to use these arguments, see [Overloaded Variables]. This module uses SSH to manage network device configuration. The results of the operation will be placed in a directory named 'results' that must be created by the user in their local directory to where the playbook is run.",
	]

	version_added:                  "2.3"
	extends_documentation_fragment: "cnos"
	options: {
		asNum: {
			description: [
				"AS number",
			]
			required: true
			default:  null
		}
		bgpArg1: {
			description: [
				"This is an overloaded bgp first argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: true
			default:  null
			choices: [
				"address-family",
				"bestpath",
				"bgp",
				"cluster-id",
				"confederation",
				"enforce-first-as",
				"fast-external-failover",
				"graceful-restart",
				"graceful-restart-helper",
				"log-neighbor-changes",
				"maxas-limit",
				"neighbor",
				"router-id",
				"shutdown",
				"synchronization",
				"timers",
				"vrf",
			]
		}
		bgpArg2: {
			description: [
				"This is an overloaded bgp second argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: [
				"ipv4 or ipv6",
				"always-compare-med",
				"compare-confed-aspath",
				"compare-routerid",
				"dont-compare-originator-id",
				"tie-break-on-age",
				"as-path",
				"med",
				"identifier",
				"peers",
			]
		}
		bgpArg3: {
			description: [
				"This is an overloaded bgp third argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: [
				"aggregate-address",
				"client-to-client",
				"dampening",
				"distance",
				"maximum-paths",
				"network",
				"nexthop",
				"redistribute",
				"save",
				"synchronization",
				"ignore or multipath-relax",
				"confed or missing-as-worst or non-deterministic or remove-recv-med or remove-send-med",
			]
		}

		bgpArg4: {
			description: [
				"This is an overloaded bgp fourth argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: [
				"Aggregate prefix",
				"Reachability Half-life time",
				"route-map",
				"Distance for routes ext",
				"ebgp or ibgp",
				"IP prefix <network>",
				"IP prefix <network>/<length>",
				"synchronization",
				"Delay value",
				"direct",
				"ospf",
				"static",
				"memory",
			]
		}
		bgpArg5: {
			description: [
				"This is an overloaded bgp fifth argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: [
				"as-set",
				"summary-only",
				"Value to start reusing a route",
				"Distance for routes internal",
				"Supported multipath numbers",
				"backdoor",
				"map",
				"route-map",
			]
		}
		bgpArg6: {
			description: [
				"This is an overloaded bgp sixth argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: [
				"summary-only",
				"as-set",
				"route-map name",
				"Value to start suppressing a route",
				"Distance local routes",
				"Network mask",
				"Pointer to route-map entries",
			]
		}
		bgpArg7: {
			description: [
				"This is an overloaded bgp seventh argument. Use of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: [
				"Maximum duration to suppress a stable route(minutes)",
				"backdoor",
				"route-map",
				"Name of the route map",
			]
		}
		bgpArg8: {
			description: [
				"This is an overloaded bgp eight argument. Usage of this argument can be found is the User Guide referenced above.",
			]

			required: false
			default:  null
			choices: [
				"Un-reachability Half-life time for the penalty(minutes)",
				"backdoor",
			]
		}
	}
}
