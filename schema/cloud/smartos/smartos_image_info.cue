package ansible

module: smartos_image_info: {
	module:            "smartos_image_info"
	short_description: "Get SmartOS image details."
	description: [
		"Retrieve information about all installed images on SmartOS.",
		"This module was called C(smartos_image_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(smartos_image_info) module no longer returns C(ansible_facts)!",
	]

	version_added: "2.2"
	author:        "Adam Števko (@xen0l)"
	options: filters: description: [
		"Criteria for selecting image. Can be any value from image manifest and 'published_date', 'published', 'source', 'clones', and 'size'. More information can be found at U(https://smartos.org/man/1m/imgadm) under 'imgadm list'.",
	]
}
