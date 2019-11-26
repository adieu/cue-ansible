package ansible

module: gcp_storage_bucket_access_control: {
	module: "gcp_storage_bucket_access_control"
	description: [
		"The BucketAccessControls resource represents the Access Control Lists (ACLs) for buckets within Google Cloud Storage. ACLs let you specify who has access to your data and to what extent.",
		"There are three roles that can be assigned to an entity: READERs can get the bucket, though no acl property will be returned, and list the bucket's objects. WRITERs are READERs, and they can insert objects into the bucket and delete the bucket's objects. OWNERs are WRITERs, and they can get the acl property of a bucket, update a bucket, and call all BucketAccessControls methods on the bucket. For more information, see Access Control, with the caveat that this API uses READER, WRITER, and OWNER instead of READ, WRITE, and FULL_CONTROL.",
	]

	short_description: "Creates a GCP BucketAccessControl"
	version_added:     "2.6"
	author:            "Google Inc. (@googlecloudplatform)"
	requirements: [
		"python >= 2.6",
		"requests >= 2.18.4",
		"google-auth >= 1.3.0",
	]
	options: {
		state: {
			description: [
				"Whether the given object should exist in GCP",
			]
			choices: [
				"present",
				"absent",
			]
			default: "present"
			type:    "str"
		}
		bucket: {
			description: [
				"The name of the bucket.",
				"This field represents a link to a Bucket resource in GCP. It can be specified in two ways. First, you can place a dictionary with key 'name' and value of your resource's name Alternatively, you can add `register: name-of-resource` to a gcp_storage_bucket task and then set this bucket field to \"{{ name-of-resource }}\"",
			]

			required: true
			type:     "dict"
		}
		entity: {
			description: [
				"The entity holding the permission, in one of the following forms: user-userId user-email group-groupId group-email domain-domain project-team-projectId allUsers allAuthenticatedUsers Examples: The user liz@example.com would be user-liz@example.com.",
				"The group example@googlegroups.com would be group-example@googlegroups.com.",
				"To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.",
			]

			required: true
			type:     "str"
		}
		role: {
			description: [
				"The access permission for the entity.",
				"Some valid choices include: \"OWNER\", \"READER\", \"WRITER\"",
			]
			required: false
			type:     "str"
		}
		project: {
			description: [
				"The Google Cloud Platform project to use.",
			]
			type: "str"
		}
		auth_kind: {
			description: [
				"The type of credential used.",
			]
			type:     "str"
			required: true
			choices: [
				"application",
				"machineaccount",
				"serviceaccount",
			]
		}
		service_account_contents: {
			description: [
				"The contents of a Service Account JSON file, either in a dictionary or as a JSON string that represents it.",
			]

			type: "jsonarg"
		}
		service_account_file: {
			description: [
				"The path of a Service Account JSON file if serviceaccount is selected as type.",
			]
			type: "path"
		}
		service_account_email: {
			description: [
				"An optional service account email address if machineaccount is selected and the user does not wish to use the default email.",
			]

			type: "str"
		}
		scopes: {
			description: [
				"Array of scopes to be used",
			]
			type: "list"
		}
		env_type: {
			description: [
				"Specifies which Ansible environment you're running this module within.",
				"This should not be set unless you know what you're doing.",
				"This only alters the User Agent string for any API requests.",
			]
			type: "str"
		}
	}
}
