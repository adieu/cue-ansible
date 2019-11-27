package fortianalyzer

faz_device :: {
	vars?: {...}
	when?: string
	tags?: [...string]
	notify?: string | [...string]
	faz_device: {

		// Add or delete devices. Or promote unregistered devices that are in the FortiAnalyzer "waiting pool"

		mode?: string

		// Major OS rev of the device

		os_ver: string

		// Required for determine the platform for VM platforms. ie FortiGate-VM64

		platform_str?: string

		// The ADOM the configuration should belong to.

		adom: string

		// The desired "friendly" name of the device being added to FortiAnalyzer.

		device_unique_name?: string

		// Management Mode of the device you are adding.

		mgmt_mode: string

		// The username of the device being added to FortiAnalyzer.

		device_username?: string

		// Specifies the quota for the device in FAZ

		faz_quota?: string

		// Minor OS rev of the device.

		os_minor_vers: string

		// The os type of the device being added (default 0).

		os_type: string

		// The IP of the device being added to FortiAnalyzer.

		device_ip?: string

		// The password of the device being added to FortiAnalyzer.

		device_password?: string

		// The serial number of the device being added to FortiAnalyzer.

		device_serial?: string
	}
}
