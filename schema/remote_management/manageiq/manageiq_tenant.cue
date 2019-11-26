package ansible

module: manageiq_tenant: {
	module: "manageiq_tenant"

	short_description:              "Management of tenants in ManageIQ."
	extends_documentation_fragment: "manageiq"
	version_added:                  "2.8"
	author:                         "Evert Mulder (@evertmulder)"
	description: [
		"The manageiq_tenant module supports adding, updating and deleting tenants in ManageIQ.",
	]
	requirements: [
		"manageiq-client",
	]
	options: {
		state: {
			description: [
				"absent - tenant should not exist, present - tenant should be.",
			]
			choices: ["absent", "present"]
			default: "present"
		}
		name: {
			description: [
				"The tenant name.",
			]
			required: true
			default:  null
		}
		description: {
			description: [
				"The tenant description.",
			]
			required: true
			default:  null
		}
		parent_id: {
			description: [
				"The id of the parent tenant. If not supplied the root tenant is used.",
				"The C(parent_id) takes president over C(parent) when supplied",
			]
			required: false
			default:  null
		}
		parent: {
			description: [
				"The name of the parent tenant. If not supplied and no C(parent_id) is supplied the root tenant is used.",
			]
			required: false
			default:  null
		}
		quotas: {
			description: [
				"The tenant quotas.",
				"All parameters case sensitive.",
				"Valid attributes are:",
				" - C(cpu_allocated) (int): use null to remove the quota.",
				" - C(mem_allocated) (GB): use null to remove the quota.",
				" - C(storage_allocated) (GB): use null to remove the quota.",
				" - C(vms_allocated) (int): use null to remove the quota.",
				" - C(templates_allocated) (int): use null to remove the quota.",
			]
			required: false
			default:  null
		}
	}
}
