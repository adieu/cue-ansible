package frr

frr_bgp :: {

	// Specifies the BGP related configuration.

	config?: string

	// Specifies the operation to be performed on the BGP process configured on the device.
	// In case of merge, the input configuration will be merged with the existing BGP configuration on the device.
	// In case of replace, if there is a diff between the existing configuration and the input configuration, the existing configuration will be replaced by the input configuration for every option that has the diff.
	// In case of override, all the existing BGP configuration will be removed from the device and replaced with the input configuration.
	// In case of delete the existing BGP configuration will be removed from the device.

	operation?: string
}

frr_facts :: {

	// When supplied, this argument restricts the facts collected to a given subset.
	// Possible values for this argument include C(all), C(hardware), C(config), and C(interfaces).
	// Specify a list of values to include a larger subset.
	// Use a value with an initial C(!) to collect all facts except that subset.

	gather_subset?: string
}
