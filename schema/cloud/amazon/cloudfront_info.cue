package ansible

module: cloudfront_info: {
	module:            "cloudfront_info"
	short_description: "Obtain facts about an AWS CloudFront distribution"
	description: [
		"Gets information about an AWS CloudFront distribution.",
		"This module was called C(cloudfront_facts) before Ansible 2.9, returning C(ansible_facts). Note that the M(cloudfront_info) module no longer returns C(ansible_facts)!",
	]

	requirements: [
		"boto3 >= 1.0.0",
		"python >= 2.6",
	]
	version_added: "2.3"
	author:        "Willem van Ketwich (@wilvk)"
	options: {
		distribution_id: {
			description: [
				"The id of the CloudFront distribution. Used with I(distribution), I(distribution_config), I(invalidation), I(streaming_distribution), I(streaming_distribution_config), I(list_invalidations).",
			]

			required: false
			type:     "str"
		}
		invalidation_id: {
			description: [
				"The id of the invalidation to get information about.",
				"Used with I(invalidation).",
			]
			required: false
			type:     "str"
		}
		origin_access_identity_id: {
			description: [
				"The id of the CloudFront origin access identity to get information about.",
			]
			required: false
			type:     "str"
		}
		//    web_acl_id:
		//        description:
		//          - Used with I(list_distributions_by_web_acl_id).
		//        required: false
		//        type: str
		domain_name_alias: {
			description: [
				"Can be used instead of I(distribution_id) - uses the aliased CNAME for the CloudFront distribution to get the distribution id where required.",
			]

			required: false
			type:     "str"
		}
		all_lists: {
			description: [
				"Get all CloudFront lists that do not require parameters.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		origin_access_identity: {
			description: [
				"Get information about an origin access identity.",
				"Requires I(origin_access_identity_id) to be specified.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		origin_access_identity_config: {
			description: [
				"Get the configuration information about an origin access identity.",
				"Requires I(origin_access_identity_id) to be specified.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		distribution: {
			description: [
				"Get information about a distribution.",
				"Requires I(distribution_id) or I(domain_name_alias) to be specified.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		distribution_config: {
			description: [
				"Get the configuration information about a distribution.",
				"Requires I(distribution_id) or I(domain_name_alias) to be specified.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		invalidation: {
			description: [
				"Get information about an invalidation.",
				"Requires I(invalidation_id) to be specified.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		streaming_distribution: {
			description: [
				"Get information about a specified RTMP distribution.",
				"Requires I(distribution_id) or I(domain_name_alias) to be specified.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		streaming_distribution_config: {
			description: [
				"Get the configuration information about a specified RTMP distribution.",
				"Requires I(distribution_id) or I(domain_name_alias) to be specified.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		list_origin_access_identities: {
			description: [
				"Get a list of CloudFront origin access identities.",
				"Requires I(origin_access_identity_id) to be set.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		list_distributions: {
			description: [
				"Get a list of CloudFront distributions.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		list_distributions_by_web_acl_id: {
			description: [
				"Get a list of distributions using web acl id as a filter.",
				"Requires I(web_acl_id) to be set.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		list_invalidations: {
			description: [
				"Get a list of invalidations.",
				"Requires I(distribution_id) or I(domain_name_alias) to be specified.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		list_streaming_distributions: {
			description: [
				"Get a list of streaming distributions.",
			]
			required: false
			default:  false
			type:     "bool"
		}
		summary: {
			description: [
				"Returns a summary of all distributions, streaming distributions and origin_access_identities.",
				"This is the default behaviour if no option is selected.",
			]
			required: false
			default:  false
			type:     "bool"
		}
	}

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]
}
