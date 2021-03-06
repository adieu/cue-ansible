package ansible

module: ec2_snapshot_info: {
	module:            "ec2_snapshot_info"
	short_description: "Gather information about ec2 volume snapshots in AWS"
	description: [
		"Gather information about ec2 volume snapshots in AWS.",
		"This module was called C(ec2_snapshot_facts) before Ansible 2.9. The usage did not change.",
	]
	version_added: "2.1"
	requirements: ["boto3"]
	author: "Rob White (@wimnat)"
	options: {
		snapshot_ids: {
			description: [
				"If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned.",
			]
			required: false
			default: []
			type:     "list"
			elements: "str"
		}
		owner_ids: {
			description: [
				"If you specify one or more snapshot owners, only snapshots from the specified owners and for which you have       access are returned.",
			]
			required: false
			default: []
			type:     "list"
			elements: "str"
		}
		restorable_by_user_ids: {
			description: [
				"If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are       returned.",
			]
			required: false
			default: []
			type:     "list"
			elements: "str"
		}
		filters: {
			description: [
				"A dict of filters to apply. Each dict item consists of a filter key and a filter value. See       U(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeSnapshots.html) for possible filters. Filter       names and values are case sensitive.",
			]
			required: false
			type:     "dict"
			default: {}
		}
	}
	notes: [
		"By default, the module will return all snapshots, including public ones. To limit results to snapshots owned by   the account use the filter 'owner-id'.",
	]

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
