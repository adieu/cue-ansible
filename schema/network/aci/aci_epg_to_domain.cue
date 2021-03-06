package ansible

module: aci_epg_to_domain: {
	module:            "aci_epg_to_domain"
	short_description: "Bind EPGs to Domains (fv:RsDomAtt)"
	description: [
		"Bind EPGs to Physical and Virtual Domains on Cisco ACI fabrics.",
	]
	version_added: "2.4"
	options: {
		allow_useg: {
			description: [
				"Allows micro-segmentation.",
				"The APIC defaults to C(encap) when unset during creation.",
			]
			type: "str"
			choices: ["encap", "useg"]
		}
		ap: {
			description: [
				"Name of an existing application network profile, that will contain the EPGs.",
			]
			type: "str"
			aliases: ["app_profile", "app_profile_name"]
		}
		deploy_immediacy: {
			description: [
				"Determines when the policy is pushed to hardware Policy CAM.",
				"The APIC defaults to C(lazy) when unset during creation.",
			]
			type: "str"
			choices: ["immediate", "lazy"]
		}
		domain: {
			description: [
				"Name of the physical or virtual domain being associated with the EPG.",
			]
			type: "str"
			aliases: ["domain_name", "domain_profile"]
		}
		domain_type: {
			description: [
				"Specify whether the Domain is a physical (phys), a virtual (vmm) or an L2 external domain association (l2dom).",
			]
			type: "str"
			choices: ["l2dom", "phys", "vmm"]
			aliases: ["type"]
		}
		encap: {
			description: [
				"The VLAN encapsulation for the EPG when binding a VMM Domain with static C(encap_mode).",
				"This acts as the secondary encap when using useg.",
				"Accepted values range between C(1) and C(4096).",
			]
			type: "int"
		}
		encap_mode: {
			description: [
				"The encapsulation method to be used.",
				"The APIC defaults to C(auto) when unset during creation.",
				"If vxlan is selected, switching_mode must be \"AVE\".",
			]
			type: "str"
			choices: ["auto", "vlan", "vxlan"]
		}
		switching_mode: {
			description: [
				"Switching Mode used by the switch",
			]
			type: "str"
			choices: ["AVE", "native"]
			default:       "native"
			version_added: "2.9"
		}
		epg: {
			description: [
				"Name of the end point group.",
			]
			type: "str"
			aliases: ["epg_name", "name"]
		}
		netflow: {
			description: [
				"Determines if netflow should be enabled.",
				"The APIC defaults to C(no) when unset during creation.",
			]
			type: "bool"
		}
		primary_encap: {
			description: [
				"Determines the primary VLAN ID when using useg.",
				"Accepted values range between C(1) and C(4096).",
			]
			type: "int"
		}
		resolution_immediacy: {
			description: [
				"Determines when the policies should be resolved and available.",
				"The APIC defaults to C(lazy) when unset during creation.",
			]
			type: "str"
			choices: ["immediate", "lazy", "pre-provision"]
		}
		state: {
			description: [
				"Use C(present) or C(absent) for adding or removing.",
				"Use C(query) for listing an object or multiple objects.",
			]
			type: "str"
			choices: ["absent", "present", "query"]
			default: "present"
		}
		tenant: {
			description: [
				"Name of an existing tenant.",
			]
			type: "str"
			aliases: ["tenant_name"]
		}
		vm_provider: {
			description: [
				"The VM platform for VMM Domains.",
				"Support for Kubernetes was added in ACI v3.0.",
				"Support for CloudFoundry, OpenShift and Red Hat was added in ACI v3.1.",
			]
			type: "str"
			choices: ["cloudfoundry", "kubernetes", "microsoft", "openshift", "openstack", "redhat", "vmware"]
		}
	}
	extends_documentation_fragment: "aci"
	notes: [
		"The C(tenant), C(ap), C(epg), and C(domain) used must exist before using this module in your playbook. The M(aci_tenant) M(aci_ap), M(aci_epg) M(aci_domain) modules can be used for this.",
		"OpenStack VMM domains must not be created using this module. The OpenStack VMM domain is created directly by the Cisco APIC Neutron plugin as part of the installation and configuration. This module can be used to query status of an OpenStack VMM domain.",
	]

	seealso: [{
		module: "aci_ap"
	}, {
		module: "aci_epg"
	}, {
		module: "aci_domain"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(fv:RsDomAtt)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Jacob McGill (@jmcgill298)"]
}
