package ansible

module: oci_vcn: {
	module:            "oci_vcn"
	short_description: "Manage Virtual Cloud Networks(VCN) in OCI"
	description: [
		"This module allows the user to create, delete and update virtual cloud networks(VCNs) in OCI. The complete Oracle Cloud Infrastructure Ansible Modules can be downloaded from U(https://github.com/oracle/oci-ansible-modules/releases).",
	]

	version_added: "2.8"
	options: {
		cidr_block: {
			description: "The CIDR IP address block of the VCN. Required when creating a VCN with I(state=present)."
			required:    false
		}
		compartment_id: {
			description: "The OCID of the compartment to contain the VCN. Required when creating a VCN with I(state=present). This option is mutually exclusive with I(vcn_id)."

			type: "str"
		}
		display_name: {
			description: "A user-friendly name. Does not have to be unique, and it's changeable."
			type:        "str"
			aliases: ["name"]
		}
		dns_label: {
			description: "A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet (for example, bminstance-1.subnet123.vcn1.oraclevcn.com). Not required to be unique, but it's a best practice to set unique DNS labels for VCNs in your tenancy. Must be an alphanumeric string that begins with a letter. The value cannot be changed."

			type: "str"
		}
		state: {
			description: "Create or update a VCN with I(state=present). Use I(state=absent) to delete a VCN."
			type:        "str"
			default:     "present"
			choices: ["present", "absent"]
		}
		vcn_id: {
			description: "The OCID of the VCN. Required when deleting a VCN with I(state=absent) or updating a VCN with I(state=present). This option is mutually exclusive with I(compartment_id)."

			type: "str"
			aliases: ["id"]
		}
	}
	author: "Rohit Chaware (@rohitChaware)"
	extends_documentation_fragment: ["oracle", "oracle_creatable_resource", "oracle_wait_options", "oracle_tags"]
}
