package ansible

module: ovirt_cluster: {
	module:            "ovirt_cluster"
	short_description: "Module to manage clusters in oVirt/RHV"
	version_added:     "2.3"
	author:            "Ondra Machacek (@machacekondra)"
	description: [
		"Module to manage clusters in oVirt/RHV",
	]
	options: {
		id: {
			description: [
				"ID of the cluster to manage.",
			]
			version_added: "2.8"
		}
		name: {
			description: [
				"Name of the cluster to manage.",
			]
			required: true
		}
		state: {
			description: [
				"Should the cluster be present or absent.",
			]
			choices: ["present", "absent"]
			default: "present"
		}
		data_center: description: [
			"Datacenter name where cluster reside.",
		]
		description: description: [
			"Description of the cluster.",
		]
		comment: description: [
			"Comment of the cluster.",
		]
		network: description: [
			"Management network of cluster to access cluster hosts.",
		]
		ballooning: {
			description: [
				"If I(True) enable memory balloon optimization. Memory balloon is used to re-distribute / reclaim the host memory based on VM needs in a dynamic way.",
			]

			type: "bool"
		}
		virt: {
			description: [
				"If I(True), hosts in this cluster will be used to run virtual machines.",
			]
			type: "bool"
		}
		gluster: {
			description: [
				"If I(True), hosts in this cluster will be used as Gluster Storage server nodes, and not for running virtual machines.",
				"By default the cluster is created for virtual machine hosts.",
			]
			type: "bool"
		}
		threads_as_cores: {
			description: [
				"If I(True) the exposed host threads would be treated as cores which can be utilized by virtual machines.",
			]

			type: "bool"
		}
		ksm: {
			description: [
				"I I(True) MoM enables to run Kernel Same-page Merging I(KSM) when necessary and when it can yield a memory saving benefit that outweighs its CPU cost.",
			]

			type: "bool"
		}
		ksm_numa: {
			description: [
				"If I(True) enables KSM C(ksm) for best performance inside NUMA nodes.",
			]
			type: "bool"
		}
		ha_reservation: {
			description: [
				"If I(True) enables the oVirt/RHV to monitor cluster capacity for highly available virtual machines.",
			]

			type: "bool"
		}
		trusted_service: {
			description: [
				"If I(True) enables integration with an OpenAttestation server.",
			]
			type: "bool"
		}
		vm_reason: {
			description: [
				"If I(True) enables an optional reason field when a virtual machine is shut down from the Manager, allowing the administrator to provide an explanation for the maintenance.",
			]

			type: "bool"
		}
		host_reason: {
			description: [
				"If I(True) enables an optional reason field when a host is placed into maintenance mode from the Manager, allowing the administrator to provide an explanation for the maintenance.",
			]

			type: "bool"
		}
		memory_policy: {
			description: [
				"I(disabled) - Disables memory page sharing.",
				"I(server) - Sets the memory page sharing threshold to 150% of the system memory on each host.",
				"I(desktop) - Sets the memory page sharing threshold to 200% of the system memory on each host.",
			]
			choices: ["disabled", "server", "desktop"]
		}
		rng_sources: description: [
			"List that specify the random number generator devices that all hosts in the cluster will use.",
			"Supported generators are: I(hwrng) and I(random).",
		]
		spice_proxy: description: [
			"The proxy by which the SPICE client will connect to virtual machines.",
			"The address must be in the following format: I(protocol://[host]:[port])",
		]
		fence_enabled: {
			description: [
				"If I(True) enables fencing on the cluster.",
				"Fencing is enabled by default.",
			]
			type: "bool"
		}
		fence_skip_if_gluster_bricks_up: {
			description: [
				"A flag indicating if fencing should be skipped if Gluster bricks are up and running in the host being fenced.",
				"This flag is optional, and the default value is `false`.",
			]
			type:          "bool"
			version_added: "2.8"
		}
		fence_skip_if_gluster_quorum_not_met: {
			description: [
				"A flag indicating if fencing should be skipped if Gluster bricks are up and running and Gluster quorum will not be met without those bricks.",
				"This flag is optional, and the default value is `false`.",
			]
			type:          "bool"
			version_added: "2.8"
		}
		fence_skip_if_sd_active: {
			description: [
				"If I(True) any hosts in the cluster that are Non Responsive and still connected to storage will not be fenced.",
			]

			type: "bool"
		}
		fence_skip_if_connectivity_broken: {
			description: [
				"If I(True) fencing will be temporarily disabled if the percentage of hosts in the cluster that are experiencing connectivity issues is greater than or equal to the defined threshold.",
				"The threshold can be specified by C(fence_connectivity_threshold).",
			]
			type: "bool"
		}
		fence_connectivity_threshold: description: [
			"The threshold used by C(fence_skip_if_connectivity_broken).",
		]
		resilience_policy: {
			description: [
				"The resilience policy defines how the virtual machines are prioritized in the migration.",
				"Following values are supported:",
				"C(do_not_migrate) -  Prevents virtual machines from being migrated. ",
				"C(migrate) - Migrates all virtual machines in order of their defined priority.",
				"C(migrate_highly_available) - Migrates only highly available virtual machines to prevent overloading other hosts.",
			]
			choices: ["do_not_migrate", "migrate", "migrate_highly_available"]
		}
		migration_bandwidth: {
			description: [
				"The bandwidth settings define the maximum bandwidth of both outgoing and incoming migrations per host.",
				"Following bandwidth options are supported:",
				"C(auto) - Bandwidth is copied from the I(rate limit) [Mbps] setting in the data center host network QoS.",
				"C(hypervisor_default) - Bandwidth is controlled by local VDSM setting on sending host.",
				"C(custom) - Defined by user (in Mbps).",
			]
			choices: ["auto", "hypervisor_default", "custom"]
		}
		migration_bandwidth_limit: description: [
			"Set the I(custom) migration bandwidth limit.",
			"This parameter is used only when C(migration_bandwidth) is I(custom).",
		]
		migration_auto_converge: {
			description: [
				"If I(True) auto-convergence is used during live migration of virtual machines.",
				"Used only when C(migration_policy) is set to I(legacy).",
				"Following options are supported:",
				"C(true) - Override the global setting to I(true).",
				"C(false) - Override the global setting to I(false).",
				"C(inherit) - Use value which is set globally.",
			]
			choices: ["true", "false", "inherit"]
		}
		migration_compressed: {
			description: [
				"If I(True) compression is used during live migration of the virtual machine.",
				"Used only when C(migration_policy) is set to I(legacy).",
				"Following options are supported:",
				"C(true) - Override the global setting to I(true).",
				"C(false) - Override the global setting to I(false).",
				"C(inherit) - Use value which is set globally.",
			]
			choices: ["true", "false", "inherit"]
		}
		migration_policy: {
			description: [
				"A migration policy defines the conditions for live migrating virtual machines in the event of host failure.",
				"Following policies are supported:",
				"C(legacy) - Legacy behavior of 3.6 version.",
				"C(minimal_downtime) - Virtual machines should not experience any significant downtime.",
				"C(suspend_workload) - Virtual machines may experience a more significant downtime.",
				"C(post_copy) - Virtual machines should not experience any significant downtime. If the VM migration is not converging for a long time, the migration will be switched to post-copy. Added in version I(2.4).",
			]

			choices: ["legacy", "minimal_downtime", "suspend_workload", "post_copy"]
		}
		serial_policy: description: [
			"Specify a serial number policy for the virtual machines in the cluster.",
			"Following options are supported:",
			"C(vm) - Sets the virtual machine's UUID as its serial number.",
			"C(host) - Sets the host's UUID as the virtual machine's serial number.",
			"C(custom) - Allows you to specify a custom serial number in C(serial_policy_value).",
		]
		serial_policy_value: description: [
			"Allows you to specify a custom serial number.",
			"This parameter is used only when C(serial_policy) is I(custom).",
		]
		scheduling_policy: description: [
			"Name of the scheduling policy to be used for cluster.",
		]
		scheduling_policy_properties: {
			description: [
				"Custom scheduling policy properties of the cluster.",
				"These optional properties override the properties of the scheduling policy specified by the C(scheduling_policy) parameter.",
			]

			version_added: "2.6"
		}
		cpu_arch: {
			description: [
				"CPU architecture of cluster.",
			]
			choices: ["x86_64", "ppc64", "undefined"]
		}
		cpu_type: description: [
			"CPU codename. For example I(Intel SandyBridge Family).",
		]
		switch_type: {
			description: [
				"Type of switch to be used by all networks in given cluster. Either I(legacy) which is using linux bridge or I(ovs) using Open vSwitch.",
			]

			choices: ["legacy", "ovs"]
		}
		compatibility_version: description: [
			"The compatibility version of the cluster. All hosts in this cluster must support at least this compatibility version.",
		]

		mac_pool: {
			description: [
				"MAC pool to be used by this cluster.",
				"C(Note:)",
				"This is supported since oVirt version 4.1.",
			]
			version_added: 2.4
		}
		external_network_providers: {
			description: [
				"List of references to the external network providers available in the cluster. If the automatic deployment of the external network provider is supported, the networks of the referenced network provider are available on every host in the cluster.",
				"This is supported since oVirt version 4.2.",
			]
			suboptions: {
				name: description: [
					"Name of the external network provider. Either C(name) or C(id) is required.",
				]
				id: description: [
					"ID of the external network provider. Either C(name) or C(id) is required.",
				]
			}
			version_added: 2.5
		}
		firewall_type: {
			description: [
				"The type of firewall to be used on hosts in this cluster.",
				"Up to version 4.1, it was always I(iptables). Since version 4.2, you can choose between I(iptables) and I(firewalld). For clusters with a compatibility version of 4.2 and higher, the default firewall type is I(firewalld).",
			]

			type:          "str"
			version_added: 2.8
			choices: ["firewalld", "iptables"]
		}
		gluster_tuned_profile: {
			description: [
				"The name of the U(https://fedorahosted.org/tuned) to set on all the hosts in the cluster. This is not mandatory and relevant only for clusters with Gluster service.",
				"Could be for example I(virtual-host), I(rhgs-sequential-io), I(rhgs-random-io)",
			]
			version_added: 2.8
			type:          "str"
		}
	}
	extends_documentation_fragment: "ovirt"
}
