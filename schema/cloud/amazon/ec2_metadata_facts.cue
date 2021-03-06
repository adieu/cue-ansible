package ansible

module: ec2_metadata_facts: {
	module:            "ec2_metadata_facts"
	short_description: "Gathers facts (instance metadata) about remote hosts within ec2"
	version_added:     "1.0"
	author: [
		"Silviu Dicu (@silviud)",
		"Vinay Dandekar (@roadmapper)",
	]
	description: [
		"This module fetches data from the instance metadata endpoint in ec2 as per U(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html).",
		"The module must be called from within the EC2 instance itself.",
	]
	notes: ["Parameters to filter on ec2_metadata_facts may be added later."]
}
