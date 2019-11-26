package oracle

oci_vcn :: {

	// Create or update a VCN with I(state=present). Use I(state=absent) to delete a VCN.

	state?: string

	// The OCID of the VCN. Required when deleting a VCN with I(state=absent) or updating a VCN with I(state=present). This option is mutually exclusive with I(compartment_id).

	vcn_id?: string

	// The CIDR IP address block of the VCN. Required when creating a VCN with I(state=present).

	cidr_block?: string

	// The OCID of the compartment to contain the VCN. Required when creating a VCN with I(state=present). This option is mutually exclusive with I(vcn_id).

	compartment_id?: string

	// A user-friendly name. Does not have to be unique, and it's changeable.

	display_name?: string

	// A DNS label for the VCN, used in conjunction with the VNIC's hostname and subnet's DNS label to form a fully qualified domain name (FQDN) for each VNIC within this subnet (for example, bminstance-1.subnet123.vcn1.oraclevcn.com). Not required to be unique, but it's a best practice to set unique DNS labels for VCNs in your tenancy. Must be an alphanumeric string that begins with a letter. The value cannot be changed.

	dns_label?: string
}
