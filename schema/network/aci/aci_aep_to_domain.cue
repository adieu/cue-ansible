package ansible

module: aci_aep_to_domain: {
	module:            "aci_aep_to_domain"
	short_description: "Bind AEPs to Physical or Virtual Domains (infra:RsDomP)"
	description: [
		"Bind AEPs to Physical or Virtual Domains on Cisco ACI fabrics.",
	]
	version_added: "2.5"
	options: {
		aep: {
			description: [
				"The name of the Attachable Access Entity Profile.",
			]
			type: "str"
			aliases: ["aep_name"]
		}
		domain: {
			description: [
				"Name of the physical or virtual domain being associated with the AEP.",
			]
			type: "str"
			aliases: ["domain_name", "domain_profile"]
		}
		domain_type: {
			description: [
				"Determines if the Domain is physical (phys) or virtual (vmm).",
			]
			type: "str"
			choices: ["fc", "l2dom", "l3dom", "phys", "vmm"]
			aliases: ["type"]
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
		"The C(aep) and C(domain) parameters should exist before using this module. The M(aci_aep) and M(aci_domain) can be used for these.",
	]

	seealso: [{
		module: "aci_aep"
	}, {
		module: "aci_domain"
	}, {
		name:        "APIC Management Information Model reference"
		description: "More information about the internal APIC class B(infra:RsDomP)."
		link:        "https://developer.cisco.com/docs/apic-mim-ref/"
	}]
	author: ["Dag Wieers (@dagwieers)"]
}
