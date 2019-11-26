package ansible

module: os_quota: {
	module:                         "os_quota"
	short_description:              "Manage OpenStack Quotas"
	extends_documentation_fragment: "openstack"
	version_added:                  "2.3"
	author:                         "Michael Gale (@mgale) <gale.michael@gmail.com>"
	description: [
		"Manage OpenStack Quotas. Quotas can be created, updated or deleted using this module. A quota will be updated if matches an existing project and is present.",
	]

	options: {
		name: {
			description: [
				"Name of the OpenStack Project to manage.",
			]
			required: true
		}
		state: {
			description: [
				"A value of present sets the quota and a value of absent resets the quota to system defaults.",
			]
			default: "present"
		}
		backup_gigabytes: description: "Maximum size of backups in GB's."
		backups: description: "Maximum number of backups allowed."
		cores: description: "Maximum number of CPU's per project."
		fixed_ips: description: "Number of fixed IP's to allow."
		floating_ips: {
			description: "Number of floating IP's to allow in Compute."
			aliases: ["compute_floating_ips"]
		}
		floatingip: {
			description: "Number of floating IP's to allow in Network."
			aliases: ["network_floating_ips"]
		}
		gigabytes: description: "Maximum volume storage allowed for project."
		gigabytes_lvm: description: "Maximum size in GB's of individual lvm volumes."
		injected_file_size: description: "Maximum file size in bytes."
		injected_files: description: "Number of injected files to allow."
		injected_path_size: description: "Maximum path size."
		instances: description: "Maximum number of instances allowed."
		key_pairs: description: "Number of key pairs to allow."
		loadbalancer: {
			description:   "Number of load balancers to allow."
			version_added: "2.4"
		}
		network: description: "Number of networks to allow."
		per_volume_gigabytes: description: "Maximum size in GB's of individual volumes."
		pool: {
			description:   "Number of load balancer pools to allow."
			version_added: "2.4"
		}
		port: description: "Number of Network ports to allow, this needs to be greater than the instances limit."
		properties: description: "Number of properties to allow."
		ram: description: "Maximum amount of ram in MB to allow."
		rbac_policy: description: "Number of policies to allow."
		router: description: "Number of routers to allow."
		security_group_rule: description: "Number of rules per security group to allow."
		security_group: description: "Number of security groups to allow."
		server_group_members: description: "Number of server group members to allow."
		server_groups: description: "Number of server groups to allow."
		snapshots: description: "Number of snapshots to allow."
		snapshots_lvm: description: "Number of LVM snapshots to allow."
		subnet: description: "Number of subnets to allow."
		subnetpool: description: "Number of subnet pools to allow."
		volumes: description: "Number of volumes to allow."
		volumes_lvm: description: "Number of LVM volumes to allow."
		availability_zone: description: [
			"Ignored. Present for backwards compatibility",
		]
	}

	requirements: [
		"python >= 2.7",
		"openstacksdk >= 0.13.0",
		"keystoneauth1 >= 3.4.0",
	]
}
