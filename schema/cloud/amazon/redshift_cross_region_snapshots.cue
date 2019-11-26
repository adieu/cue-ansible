package ansible

module: redshift_cross_region_snapshots: {
	module:            "redshift_cross_region_snapshots"
	short_description: "Manage Redshift Cross Region Snapshots"
	description: [
		"Manage Redshift Cross Region Snapshots. Supports KMS-Encrypted Snapshots.",
		"For more information, see U(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html#cross-region-snapshot-copy)",
	]
	version_added: "2.8"
	author:        "JR Kerkstra (@captainkerk)"
	options: {
		cluster_name: {
			description: [
				"The name of the cluster to configure cross-region snapshots for.",
			]
			required: true
			aliases: ["cluster"]
			type: "str"
		}
		state: {
			description: [
				"Create or remove the cross-region snapshot configuration.",
			]
			required: true
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}
		region: {
			description: [
				"The cluster's region.",
			]
			required: true
			aliases: ["source"]
			type: "str"
		}
		destination_region: {
			description: [
				"The region to copy snapshots to.",
			]
			required: true
			aliases: ["destination"]
			type: "str"
		}
		snapshot_copy_grant: {
			description: [
				"A grant for Amazon Redshift to use a master key in the I(destination_region).",
				"See U(http://boto3.readthedocs.io/en/latest/reference/services/redshift.html#Redshift.Client.create_snapshot_copy_grant)",
			]
			required: false
			aliases: ["copy_grant"]
			type: "str"
		}
		snapshot_retention_period: {
			description: [
				"The number of days to keep cross-region snapshots for.",
			]
			required: true
			aliases: ["retention_period"]
			type: "int"
		}
	}
	requirements: ["botocore", "boto3"]
	extends_documentation_fragment: [
		"ec2",
		"aws",
	]
}
