package ansible

module: s3_sync: {
	module:            "s3_sync"
	short_description: "Efficiently upload multiple files to S3"
	description: [
		"The S3 module is great, but it is very slow for a large volume of files- even a dozen will be noticeable. In addition to speed, it handles globbing, inclusions/exclusions, mime types, expiration mapping, recursion, cache control and smart directory mapping.",
	]

	version_added: "2.3"
	options: {
		mode: {
			description: [
				"sync direction.",
			]
			default: "push"
			choices: ["push"]
			type: "str"
		}
		file_change_strategy: {
			description: [
				"Difference determination method to allow changes-only syncing. Unlike rsync, files are not patched- they are fully skipped or fully uploaded.",
				"date_size will upload if file sizes don't match or if local file modified date is newer than s3's version",
				"checksum will compare etag values based on s3's implementation of chunked md5s.",
				"force will always upload all files.",
			]
			required: false
			default:  "date_size"
			choices: ["force", "checksum", "date_size"]
			type: "str"
		}
		bucket: {
			description: [
				"Bucket name.",
			]
			required: true
			type:     "str"
		}
		key_prefix: {
			description: [
				"In addition to file path, prepend s3 path with this prefix. Module will add slash at end of prefix if necessary.",
			]
			required: false
			type:     "str"
		}
		file_root: {
			description: [
				"File/directory path for synchronization. This is a local path.",
				"This root path is scrubbed from the key name, so subdirectories will remain as keys.",
			]
			required: true
			type:     "path"
		}
		permission: {
			description: [
				"Canned ACL to apply to synced files.",
				"Changing this ACL only changes newly synced files, it does not trigger a full reupload.",
			]
			required: false
			choices: [
				"private",
				"public-read",
				"public-read-write",
				"authenticated-read",
				"aws-exec-read",
				"bucket-owner-read",
				"bucket-owner-full-control",
			]
			type: "str"
		}
		mime_map: {
			description: [
				"""
		Dict entry from extension to MIME type. This will override any default/sniffed MIME type. For example C({\".txt\": \"application/text\", \".yml\": \"application/text\"})

		""",
			]

			required: false
			type:     "dict"
		}
		include: {
			description: [
				"Shell pattern-style file matching.",
				"Used before exclude to determine eligible files (for instance, only \"*.gif\")",
				"For multiple patterns, comma-separate them.",
			]
			required: false
			default:  "*"
			type:     "str"
		}
		exclude: {
			description: [
				"Shell pattern-style file matching.",
				"Used after include to remove files (for instance, skip \"*.txt\")",
				"For multiple patterns, comma-separate them.",
			]
			required: false
			default:  ".*"
			type:     "str"
		}
		cache_control: {
			description: [
				"Cache-Control header set on uploaded objects.",
				"Directives are separated by commas.",
			]
			required:      false
			version_added: "2.4"
			type:          "str"
		}
		delete: {
			description: [
				"Remove remote files that exist in bucket but are not present in the file root.",
			]
			required:      false
			default:       false
			version_added: "2.4"
			type:          "bool"
		}
		retries: {
			description: [
				"The I(retries) option does nothing and will be removed in Ansible 2.14.",
			]
			type: "str"
		}
	}

	requirements: [
		"boto3 >= 1.4.4",
		"botocore",
		"python-dateutil",
	]

	author: "Ted Timmons (@tedder)"
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
