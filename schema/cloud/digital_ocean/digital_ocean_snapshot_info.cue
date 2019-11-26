package ansible

module: digital_ocean_snapshot_info: {
	module:            "digital_ocean_snapshot_info"
	short_description: "Gather information about DigitalOcean Snapshot"
	description: [
		"This module can be used to gather information about snapshot information based upon provided values such as droplet, volume and snapshot id.",
		"This module was called C(digital_ocean_snapshot_facts) before Ansible 2.9. The usage did not change.",
	]
	author:        "Abhijeet Kasurde (@Akasurde)"
	version_added: "2.6"
	options: {
		snapshot_type: {
			description: [
				"Specifies the type of snapshot information to be retrieved.",
				"If set to C(droplet), then information are gathered related to snapshots based on Droplets only.",
				"If set to C(volume), then information are gathered related to snapshots based on volumes only.",
				"If set to C(by_id), then information are gathered related to snapshots based on snapshot id only.",
				"If not set to any of the above, then information are gathered related to all snapshots.",
			]
			default: "all"
			choices: ["all", "droplet", "volume", "by_id"]
			required: false
		}
		snapshot_id: {
			description: [
				"To retrieve information about a snapshot, please specify this as a snapshot id.",
				"If set to actual snapshot id, then information are gathered related to that particular snapshot only.",
				"This is required parameter, if C(snapshot_type) is set to C(by_id).",
			]
			required: false
		}
	}
	requirements: [
		"python >= 2.6",
	]
	extends_documentation_fragment: "digital_ocean.documentation"
}
