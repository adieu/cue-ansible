package ansible

module: aws_s3: {
	module:            "aws_s3"
	short_description: "manage objects in S3."
	description: [
		"This module allows the user to manage S3 buckets and the objects within them. Includes support for creating and deleting both objects and buckets, retrieving objects as files or strings and generating download links. This module has a dependency on boto3 and botocore.",
	]

	notes: [
		"In 2.4, this module has been renamed from C(s3) into M(aws_s3).",
	]
	version_added: "1.1"
	options: {
		bucket: {
			description: [
				"Bucket name.",
			]
			required: true
			type:     "str"
		}
		dest: {
			description: [
				"The destination file path when downloading an object/key with a GET operation.",
			]
			version_added: "1.3"
			type:          "path"
		}
		encrypt: {
			description: [
				"When set for PUT mode, asks for server-side encryption.",
			]
			default:       true
			version_added: "2.0"
			type:          "bool"
		}
		encryption_mode: {
			description: [
				"What encryption mode to use if I(encrypt=true).",
			]
			default: "AES256"
			choices: [
				"AES256",
				"aws:kms",
			]
			version_added: "2.7"
			type:          "str"
		}
		expiry: {
			description: [
				"Time limit (in seconds) for the URL generated and returned by S3/Walrus when performing a I(mode=put) or I(mode=geturl) operation.",
			]
			default: 600
			aliases: ["expiration"]
			type: "int"
		}
		headers: {
			description: [
				"Custom headers for PUT operation, as a dictionary of 'key=value' and 'key=value,key=value'.",
			]
			version_added: "2.0"
			type:          "dict"
		}
		marker: {
			description: [
				"Specifies the key to start with when using list mode. Object keys are returned in alphabetical order, starting with key after the marker in order.",
			]
			version_added: "2.0"
			type:          "str"
		}
		max_keys: {
			description: [
				"Max number of results to return in list mode, set this if you want to retrieve fewer than the default 1000 keys.",
			]
			default:       1000
			version_added: "2.0"
			type:          "int"
		}
		metadata: {
			description: [
				"Metadata for PUT operation, as a dictionary of 'key=value' and 'key=value,key=value'.",
			]
			version_added: "1.6"
			type:          "dict"
		}
		mode: {
			description: [
				"Switches the module behaviour between put (upload), get (download), geturl (return download url, Ansible 1.3+), getstr (download object as string (1.3+)), list (list keys, Ansible 2.0+), create (bucket), delete (bucket), and delobj (delete object, Ansible 2.0+).",
			]

			required: true
			choices: ["get", "put", "delete", "create", "geturl", "getstr", "delobj", "list"]
			type: "str"
		}
		object: {
			description: [
				"Keyname of the object inside the bucket. Can be used to create \"virtual directories\", see examples.",
			]
			type: "str"
		}
		permission: {
			description: [
				"This option lets the user set the canned permissions on the object/bucket that are created. The permissions that can be set are C(private), C(public-read), C(public-read-write), C(authenticated-read) for a bucket or C(private), C(public-read), C(public-read-write), C(aws-exec-read), C(authenticated-read), C(bucket-owner-read), C(bucket-owner-full-control) for an object. Multiple permissions can be specified as a list.",
			]

			default: ["private"]
			version_added: "2.0"
			type:          "list"
			elements:      "str"
		}
		prefix: {
			description: [
				"Limits the response to keys that begin with the specified prefix for list mode.",
			]
			default:       ""
			version_added: "2.0"
			type:          "str"
		}
		version: {
			description: [
				"Version ID of the object inside the bucket. Can be used to get a specific version of a file if versioning is enabled in the target bucket.",
			]
			version_added: "2.0"
			type:          "str"
		}
		overwrite: {
			description: [
				"Force overwrite either locally on the filesystem or remotely with the object/key. Used with PUT and GET operations. Boolean or one of [always, never, different], true is equal to 'always' and false is equal to 'never', new in 2.0. When this is set to 'different', the md5 sum of the local file is compared with the 'ETag' of the object/key in S3. The ETag may or may not be an MD5 digest of the object data. See the ETag response header here U(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTCommonResponseHeaders.html)",
			]

			default: "always"
			aliases: ["force"]
			version_added: "1.2"
			type:          "str"
		}
		retries: {
			description: [
				"On recoverable failure, how many times to retry before actually failing.",
			]
			default:       0
			version_added: "2.0"
			type:          "int"
			aliases: ["retry"]
		}
		s3_url: {
			description: [
				"S3 URL endpoint for usage with Ceph, Eucalyptus and fakes3 etc. Otherwise assumes AWS.",
			]
			aliases: ["S3_URL"]
			type: "str"
		}
		dualstack: {
			description: [
				"Enables Amazon S3 Dual-Stack Endpoints, allowing S3 communications using both IPv4 and IPv6.",
				"Requires at least botocore version 1.4.45.",
			]
			type:          "bool"
			default:       false
			version_added: "2.7"
		}
		rgw: {
			description: [
				"Enable Ceph RGW S3 support. This option requires an explicit url via I(s3_url).",
			]
			default:       false
			version_added: "2.2"
			type:          "bool"
		}
		src: {
			description: [
				"The source file path when performing a PUT operation.",
			]
			version_added: "1.3"
			type:          "str"
		}
		ignore_nonexistent_bucket: {
			description: [
				"Overrides initial bucket lookups in case bucket or iam policies are restrictive. Example: a user may have the GetObject permission but no other permissions. In this case using the option mode: get will fail without specifying I(ignore_nonexistent_bucket=true).",
			]

			version_added: "2.3"
			type:          "bool"
		}
		encryption_kms_key_id: {
			description: [
				"KMS key id to use when encrypting objects using I(encrypting=aws:kms). Ignored if I(encryption) is not C(aws:kms)",
			]
			version_added: "2.7"
			type:          "str"
		}
	}
	requirements: ["boto3", "botocore"]
	author: [
		"Lester Wade (@lwade)",
		"Sloane Hertel (@s-hertel)",
	]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
