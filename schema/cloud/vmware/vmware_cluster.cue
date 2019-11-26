package ansible

module: vmware_cluster: {
	module:            "vmware_cluster"
	short_description: "Manage VMware vSphere clusters"
	description: [
		"Adds or removes VMware vSphere clusters.",
		"Although this module can manage DRS, HA and VSAN related configurations, this functionality is deprecated and will be removed in 2.12.",
		"To manage DRS, HA and VSAN related configurations, use the new modules vmware_cluster_drs, vmware_cluster_ha and vmware_cluster_vsan.",
		"All values and VMware object names are case sensitive.",
	]
	version_added: "2.0"
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
		ignore_drs: {
			description: [
				"If set to C(yes), DRS will not be configured; all explicit and default DRS related configurations will be ignored.",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.9
		}
		ignore_ha: {
			description: [
				"If set to C(yes), HA will not be configured; all explicit and default HA related configurations will be ignored.",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.9
		}
		ignore_vsan: {
			description: [
				"If set to C(yes), VSAN will not be configured; all explicit and default VSAN related configurations will be ignored.",
			]
			type:          "bool"
			default:       "no"
			version_added: 2.9
		}
		enable_drs: {
			description: [
				"If set to C(yes), will enable DRS when the cluster is created.",
			]
			type:    "bool"
			default: "no"
		}
		drs_enable_vm_behavior_overrides: {
			description: [
				"Determines whether DRS Behavior overrides for individual virtual machines are enabled.",
				"If set to C(True), overrides C(drs_default_vm_behavior).",
			]
			type:          "bool"
			default:       true
			version_added: 2.8
		}
		drs_default_vm_behavior: {
			description: [
				"Specifies the cluster-wide default DRS behavior for virtual machines.",
				"If set to C(partiallyAutomated), then vCenter generate recommendations for virtual machine migration and for the placement with a host. vCenter automatically implement placement at power on.",
				"If set to C(manual), then vCenter generate recommendations for virtual machine migration and for the placement with a host. vCenter should not implement the recommendations automatically.",
				"If set to C(fullyAutomated), then vCenter should automate both the migration of virtual machines and their placement with a host at power on.",
			]

			default: "fullyAutomated"
			choices: ["fullyAutomated", "manual", "partiallyAutomated"]
			version_added: 2.8
		}
		drs_vmotion_rate: {
			description: [
				"Threshold for generated ClusterRecommendations.",
			]
			default: 3
			choices: [1, 2, 3, 4, 5]
			version_added: 2.8
		}
		enable_ha: {
			description: [
				"If set to C(yes) will enable HA when the cluster is created.",
			]
			type:    "bool"
			default: "no"
		}
		ha_host_monitoring: {
			description: [
				"Indicates whether HA restarts virtual machines after a host fails.",
				"If set to C(enabled), HA restarts virtual machines after a host fails.",
				"If set to C(disabled), HA does not restart virtual machines after a host fails.",
				"If C(enable_ha) is set to C(no), then this value is ignored.",
			]
			choices: ["enabled", "disabled"]
			default:       "enabled"
			version_added: 2.8
		}
		ha_vm_monitoring: {
			description: [
				"Indicates the state of virtual machine health monitoring service.",
				"If set to C(vmAndAppMonitoring), HA response to both virtual machine and application heartbeat failure.",
				"If set to C(vmMonitoringDisabled), virtual machine health monitoring is disabled.",
				"If set to C(vmMonitoringOnly), HA response to virtual machine heartbeat failure.",
				"If C(enable_ha) is set to C(no), then this value is ignored.",
			]
			choices: ["vmAndAppMonitoring", "vmMonitoringOnly", "vmMonitoringDisabled"]
			default:       "vmMonitoringDisabled"
			version_added: 2.8
		}
		ha_failover_level: {
			description: [
				"Number of host failures that should be tolerated, still guaranteeing sufficient resources to restart virtual machines on available hosts.",
				"Accepts integer values only.",
			]
			default:       2
			version_added: 2.8
		}
		ha_admission_control_enabled: {
			description: [
				"Determines if strict admission control is enabled.",
				"It is recommended to set this parameter to C(True), please refer documentation for more details.",
			]
			default:       true
			type:          "bool"
			version_added: 2.8
		}
		ha_vm_failure_interval: {
			description: [
				"The number of seconds after which virtual machine is declared as failed if no heartbeat has been received.",
				"This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
				"Unit is seconds.",
			]
			default:       30
			version_added: 2.8
		}
		ha_vm_min_up_time: {
			description: [
				"The number of seconds for the virtual machine's heartbeats to stabilize after the virtual machine has been powered on.",
				"This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
				"Unit is seconds.",
			]
			default:       120
			version_added: 2.8
		}
		ha_vm_max_failures: {
			description: [
				"Maximum number of failures and automated resets allowed during the time that C(ha_vm_max_failure_window) specifies.",
				"This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
			]
			default:       3
			version_added: 2.8
		}
		ha_vm_max_failure_window: {
			description: [
				"The number of seconds for the window during which up to C(ha_vm_max_failures) resets can occur before automated responses stop.",
				"This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
				"Unit is seconds.",
				"Default specifies no failure window.",
			]
			default:       -1
			version_added: 2.8
		}
		ha_restart_priority: {
			description: [
				"Determines the preference that HA gives to a virtual machine if sufficient capacity is not available to power on all failed virtual machines.",
				"This setting is only valid if C(ha_vm_monitoring) is set to, either C(vmAndAppMonitoring) or C(vmMonitoringOnly).",
				"If set to C(disabled), then HA is disabled for this virtual machine.",
				"If set to C(high), then virtual machine with this priority have a higher chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.",
				"If set to C(medium), then virtual machine with this priority have an intermediate chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.",
				"If set to C(low), then virtual machine with this priority have a lower chance of powering on after a failure, when there is insufficient capacity on hosts to meet all virtual machine needs.",
			]

			default:       "medium"
			version_added: 2.8
			choices: ["disabled", "high", "low", "medium"]
		}
		enable_vsan: {
			description: [
				"If set to C(yes) will enable vSAN when the cluster is created.",
			]
			type:    "bool"
			default: "no"
		}
		vsan_auto_claim_storage: {
			description: [
				"Determines whether the VSAN service is configured to automatically claim local storage on VSAN-enabled hosts in the cluster.",
			]

			type:          "bool"
			default:       false
			version_added: 2.8
		}
		state: {
			description: [
				"Create C(present) or remove C(absent) a VMware vSphere cluster.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
	}
	extends_documentation_fragment: "vmware.documentation"
}
