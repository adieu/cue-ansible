package ansible

module: ovirt_host: {
	module:            "ovirt_host"
	short_description: "Module to manage hosts in oVirt/RHV"
	version_added:     "2.3"
	author:            "Ondra Machacek (@machacekondra)"
	description: [
		"Module to manage hosts in oVirt/RHV",
	]
	options: {
		id: {
			description: [
				"ID of the host to manage.",
			]
			version_added: "2.8"
		}
		name: {
			description: [
				"Name of the host to manage.",
			]
			required: true
		}
		state: {
			description: [
				"State which should a host to be in after successful completion.",
				"I(iscsilogin) and I(iscsidiscover) are supported since version 2.4.",
			]
			choices: [
				"present",
				"absent",
				"maintenance",
				"upgraded",
				"started",
				"restarted",
				"stopped",
				"reinstalled",
				"iscsidiscover",
				"iscsilogin",
			]

			default: "present"
		}
		comment: description: [
			"Description of the host.",
		]
		timeout: {
			description: [
				"The amount of time in seconds the module should wait for the host to get into desired state.",
			]

			default: 600
		}
		cluster: description: [
			"Name of the cluster, where host should be created.",
		]
		address: description: [
			"Host address. It can be either FQDN (preferred) or IP address.",
		]
		password: description: [
			"Password of the root. It's required in case C(public_key) is set to I(False).",
		]
		public_key: {
			description: [
				"I(True) if the public key should be used to authenticate to host.",
				"It's required in case C(password) is not set.",
			]
			default: false
			type:    "bool"
			aliases: ["ssh_public_key"]
		}
		kdump_integration: {
			description: [
				"Specify if host will have enabled Kdump integration.",
			]
			choices: ["enabled", "disabled"]
		}
		spm_priority: description: [
			"SPM priority of the host. Integer value from 1 to 10, where higher number means higher priority.",
		]
		override_iptables: {
			description: [
				"If True host iptables will be overridden by host deploy script.",
				"Note that C(override_iptables) is I(false) by default in oVirt/RHV.",
			]
			type: "bool"
		}
		force: {
			description: [
				"Indicates that the host should be removed even if it is non-responsive, or if it is part of a Gluster Storage cluster and has volume bricks on it.",
				"WARNING: It doesn't forcibly remove the host if another host related operation is being executed on the host at the same time.",
			]
			default: false
			type:    "bool"
		}
		override_display: {
			description: [
				"Override the display address of all VMs on this host with specified address.",
			]
			type: "bool"
		}
		kernel_params: description: [
			"List of kernel boot parameters.",
			"Following are most common kernel parameters used for host:",
			"Hostdev Passthrough & SR-IOV: intel_iommu=on",
			"Nested Virtualization: kvm-intel.nested=1",
			"Unsafe Interrupts: vfio_iommu_type1.allow_unsafe_interrupts=1",
			"PCI Reallocation: pci=realloc",
			"C(Note:)",
			"Modifying kernel boot parameters settings can lead to a host boot failure. Please consult the product documentation before doing any changes.",
			"Kernel boot parameters changes require host deploy and restart. The host needs to be I(reinstalled) successfully and then to be I(rebooted) for kernel boot parameters to be applied.",
		]

		hosted_engine: {
			description: [
				"If I(deploy) it means this host should deploy also hosted engine components.",
				"If I(undeploy) it means this host should un-deploy hosted engine components and this host will not function as part of the High Availability cluster.",
			]

			choices: [
				"deploy",
				"undeploy",
			]
		}
		power_management_enabled: {
			description: [
				"Enable or disable power management of the host.",
				"For more comprehensive setup of PM use C(ovirt_host_pm) module.",
			]
			version_added: 2.4
			type:          "bool"
		}
		activate: {
			description: [
				"If C(state) is I(present) activate the host.",
				"This parameter is good to disable, when you don't want to change the state of host when using I(present) C(state).",
			]

			default:       true
			type:          "bool"
			version_added: 2.4
		}
		iscsi: {
			description: [
				"If C(state) is I(iscsidiscover) it means that the iscsi attribute is being used to discover targets",
				"If C(state) is I(iscsilogin) it means that the iscsi attribute is being used to login to the specified targets passed as part of the iscsi attribute",
			]

			version_added: "2.4"
		}
		check_upgrade: {
			description: [
				"If I(true) and C(state) is I(upgraded) run check for upgrade action before executing upgrade action.",
			]

			default:       true
			type:          "bool"
			version_added: 2.4
		}
		reboot_after_upgrade: {
			description: [
				"If I(true) and C(state) is I(upgraded) reboot host after successful upgrade.",
			]
			default:       true
			type:          "bool"
			version_added: 2.6
		}
		vgpu_placement: {
			description: [
				"If I(consolidated), each vGPU is placed on the first physical card with available space. This is the default placement, utilizing all available space on the physical cards.",
				"If I(separated), each vGPU is placed on a separate physical card, if possible. This can be useful for improving vGPU performance.",
			]

			choices: ["consolidated", "separated"]
			version_added: 2.8
		}
	}
	extends_documentation_fragment: "ovirt"
}
