package ansible

module: aws_ses_identity_policy: {
	module:            "aws_ses_identity_policy"
	short_description: "Manages SES sending authorization policies"
	description: [
		"This module allows the user to manage sending authorization policies associated with an SES identity (email or domain).",
		"SES authorization sending policies can be used to control what actors are able to send email on behalf of the validated identity and what conditions must be met by the sent emails.",
	]

	version_added: "2.6"
	author:        "Ed Costello    (@orthanc)"

	options: {
		identity: {
			description: """
		The SES identity to attach or remove a policy from. This can be either the full ARN or just
		the verified email or domain.

		"""

			required: true
			type:     "str"
		}
		policy_name: {
			description: "The name used to identify the policy within the scope of the identity it's attached to."
			required:    true
			type:        "str"
		}
		policy: {
			description: "A properly formatted JSON sending authorization policy. Required when I(state=present)."
			type:        "json"
		}
		state: {
			description: "Whether to create(or update) or delete the authorization policy on the identity."
			default:     "present"
			choices: ["present", "absent"]
			type: "str"
		}
	}
	requirements: ["botocore", "boto3"]
	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
