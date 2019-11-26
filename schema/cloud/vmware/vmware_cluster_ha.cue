package ansible

module: vmware_cluster_ha: {
	module:            "vmware_cluster_ha"
	short_description: "Manage High Availability (HA) on VMware vSphere clusters"
	description: [
		"Manages HA configuration on VMware vSphere clusters.",
		"All values and VMware object names are case sensitive.",
	]
	version_added: "2.9"
	author: [
		"Joseph Callen (@jcpowermac)",
		"Abhijeet Kasurde (@Akasurde)",
	]
	requirements: [
		"Tested on ESXi 5.5 and 6.5.",
		"PyVmomi installed.",
	]
	options: {
		cluster_name: {
			description: [
				"The name of the cluster to be managed.",
			]
			type:     "str"
			required: true
		}
		datacenter: {
			description: [
				"The name of the datacenter.",
			]
			type:     "str"
			required: true
			aliases: ["datacenter_name"]
		}
		enable_ha: {
			description: [
				"Whether to enable HA.",
			]
			type:    "bool"
			default: "no"
		}
		ha_host_monitoring: {
			description: [
				"Whether HA restarts virtual machines after a host fails.",
				"If set to C(enabled), HA restarts virtual machines after a host fails.",
				"If set to C(disabled), HA does not restart virtual machines after a host fails.",
				"If C(enable_ha) is set to C(no), then this value is ignored.",
			]
			type: "str"
			choices: ["enabled", "disabled"]
			default: "enabled"
		}
		ha_vm_monitoring: {
			description: [
				"State of virtual machine health monitoring service.",
				"If set to C(vmAndAppMonitoring), HA response to both virtual machine and application heartbeat failure.",
				"If set to C(vmMonitoringDisabled), virtual machine health monitoring is disabled.",
				"If set to C(vmMonitoringOnly), HA response to virtual machine heartbeat failure.",
				"If C(enable_ha) is set to C(no), then this value is ignored.",
			]
			type: "str"
			choices: ["vmAndAppMonitoring", "vmMonitoringOnly", "vmMonitoringDisabled"]
			default: "vmMonitoringDisabled"
		}
		host_isolation_response: {
			description: [
				"Indicates whether or VMs should be powered off if a host determines that it is isolated from the rest of the compute resource.",
				"If set to C(none), do not power off VMs in the event of a host network isolation.",
				"If set to C(powerOff), power off VMs in the event of a host network isolation.",
				"If set to C(shutdown), shut down VMs guest operating system in the event of a host network isolation.",
			]
			type: "str"
			choices: ["none", "powerOff", "shutdown"]
			default: "none"
		}
		slot_based_admission_control: {
			description: [
				"Configure slot based admission control policy.",
				"C(slot_based_admission_control), C(reservation_based_admission_control) and C(failover_host_admission_control) are mutually exclusive.",
			]
			suboptions: failover_level: {
				description: [
					"Number of host failures that should be tolerated.",
				]
				type:     "int"
				required: true
			}
			type: "dict"
		}
		reservation_based_admission_control: {
			description: [
				"Configure reservation based admission control policy.",
				"C(slot_based_admission_control), C(reservation_based_admission_control) and C(failover_host_admission_control) are mutually exclusive.",
			]
			suboptions: {
				failover_level: {
					description: [
						"Number of host failures that should be tolerated.",
					]
					type:     "int"
					required: true
				}
				auto_compute_percentages: {
					description: [
						"By default, C(failover_level) is used to calculate C(cpu_failover_resources_percent) and C(memory_failover_resources_percent). If a user wants to override the percentage values, he has to set this field to false.",
					]

					type:    "bool"
					default: true
				}
				cpu_failover_resources_percent: {
					description: [
						"Percentage of CPU resources in the cluster to reserve for failover. Ignored if C(auto_compute_percentages) is not set to false.",
					]

					type:    "int"
					default: 50
				}
				memory_failover_resources_percent: {
					description: [
						"Percentage of memory resources in the cluster to reserve for failover. Ignored if C(auto_compute_percentages) is not set to false.",
					]

					type:    "int"
					default: 50
				}
			}
			type: "dict"
		}
		failover_host_admission_control: {
			description: [
				"Configure dedicated failover hosts.",
				"C(slot_based_admission_control), C(reservation_based_admission_control) and C(failover_host_admission_control) are mutually exclusive.",
			]
			suboptions: failover_hosts: {
				description: [
					"List of dedicated failover hosts.",
				]
				type:     "list"
				required: true
			}
			type: "dict"
		}
		ha_vm_failure_interval: {
			description: [
				"The number of seconds after which virtual machine is declared as failed if no heartbeat has been received.",
				"This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
				"Unit is seconds.",
			]
			type:    "int"
			default: 30
		}
		ha_vm_min_up_time: {
			description: [
				"The number of seconds for the virtual machine's heartbeats to stabilize after the virtual machine has been powered on.",
				"Valid only when I(ha_vm_monitoring) is set to either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
				"Unit is seconds.",
			]
			type:    "int"
			default: 120
		}
		ha_vm_max_failures: {
			description: [
				"Maximum number of failures and automated resets allowed during the time that C(ha_vm_max_failure_window) specifies.",
				"Valid only when I(ha_vm_monitoring) is set to either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
			]
			type:    "int"
			default: 3
		}
		ha_vm_max_failure_window: {
			description: [
				"The number of seconds for the window during which up to C(ha_vm_max_failures) resets can occur before automated responses stop.",
				"Valid only when I(ha_vm_monitoring) is set to either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
				"Unit is seconds.",
				"Default specifies no failure window.",
			]
			type:    "int"
			default: -1
		}
		ha_restart_priority: {
			description: [
				"Priority HA gives to a virtual machine if sufficient capacity is not available to power on all failed virtual machines.",
				"Valid only if I(ha_vm_monitoring) is set to either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
				"If set to C(disabled), then HA is disabled for this virtual machine.",
				"If set to C(high), then virtual machine with this priority have a higher chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.",
				"If set to C(medium), then virtual machine with this priority have an intermediate chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.",
				"If set to C(low), then virtual machine with this priority have a lower chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.",
			]

			type:    "str"
			default: "medium"
			choices: ["disabled", "high", "low", "medium"]
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
