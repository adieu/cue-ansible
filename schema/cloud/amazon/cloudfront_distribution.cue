package ansible

module: cloudfront_distribution: {
	module: "cloudfront_distribution"

	short_description: "Create, update and delete AWS CloudFront distributions."

	description: [
		"Allows for easy creation, updating and deletion of CloudFront distributions.",
	]

	requirements: [
		"boto3 >= 1.0.0",
		"python >= 2.6",
	]

	version_added: "2.5"

	author: [
		"Willem van Ketwich (@wilvk)",
		"Will Thames (@willthames)",
	]

	extends_documentation_fragment: [
		"aws",
		"ec2",
	]

	options: {

		state: {
			description: [
				"The desired state of the distribution.",
				"I(state=present) creates a new distribution or updates an existing distribution.",
				"I(state=absent) deletes an existing distribution.",
			]
			choices: ["present", "absent"]
			default: "present"
			type:    "str"
		}

		distribution_id: {
			description: [
				"The ID of the CloudFront distribution.",
				"This parameter can be exchanged with I(alias) or I(caller_reference) and is used in conjunction with I(e_tag).",
			]
			type: "str"
		}

		e_tag: {
			description: [
				"A unique identifier of a modified or existing distribution. Used in conjunction with I(distribution_id).",
				"Is determined automatically if not specified.",
			]
			type: "str"
		}

		caller_reference: {
			description: [
				"A unique identifier for creating and updating CloudFront distributions.",
				"Each caller reference must be unique across all distributions. e.g. a caller reference used in a web distribution cannot be reused in a streaming distribution. This parameter can be used instead of I(distribution_id) to reference an existing distribution. If not specified, this defaults to a datetime stamp of the format C(YYYY-MM-DDTHH:MM:SS.ffffff).",
			]

			type: "str"
		}

		tags: {
			description: [
				"Should be input as a dict of key-value pairs.",
				"Note that numeric keys or values must be wrapped in quotes. e.g. \"Priority:\" '1'",
			]
			type: "dict"
		}

		purge_tags: {
			description: [
				"Specifies whether existing tags will be removed before adding new tags.",
				"When I(purge_tags=yes), existing tags are removed and I(tags) are added, if specified. If no tags are specified, it removes all existing tags for the distribution.",
				"When I(purge_tags=no), existing tags are kept and I(tags) are added, if specified.",
			]
			default: false
			type:    "bool"
		}

		alias: {
			description: [
				"The name of an alias (CNAME) that is used in a distribution. This is used to effectively reference a distribution by its alias as an alias can only be used by one distribution per AWS account. This variable avoids having to provide the I(distribution_id) as well as the I(e_tag), or I(caller_reference) of an existing distribution.",
			]

			type: "str"
		}

		aliases: {
			description: [
				"A list) of domain name aliases (CNAMEs) as strings to be used for the distribution.",
				"Each alias must be unique across all distribution for the AWS account.",
			]
			type:     "list"
			elements: "str"
		}

		purge_aliases: {
			description: [
				"Specifies whether existing aliases will be removed before adding new aliases.",
				"When I(purge_aliases=yes), existing aliases are removed and I(aliases) are added.",
			]
			default: false
			type:    "bool"
		}

		default_root_object: {
			description: [
				"A config element that specifies the path to request when the user requests the origin.",
				"e.g. if specified as 'index.html', this maps to www.example.com/index.html when www.example.com is called by the user.",
				"This prevents the entire distribution origin from being exposed at the root.",
			]
			type: "str"
		}

		default_origin_domain_name: {
			description: [
				"The domain name to use for an origin if no I(origins) have been specified.",
				"Should only be used on a first run of generating a distribution and not on subsequent runs.",
				"Should not be used in conjunction with I(distribution_id), I(caller_reference) or I(alias).",
			]
			type: "str"
		}

		default_origin_path: {
			description: [
				"The default origin path to specify for an origin if no I(origins) have been specified. Defaults to empty if not specified.",
			]
			type: "str"
		}

		origins: {
			type:     "list"
			elements: "dict"
			description: [
				"A config element that is a list of complex origin objects to be specified for the distribution. Used for creating and updating distributions.",
			]
			suboptions: {
				id: {
					description: "A unique identifier for the origin or origin group. I(id) must be unique within the distribution."
					type:        "str"
				}
				domain_name: {
					description: [
						"The domain name which CloudFront will query as the origin.",
						"For more information see the CloudFront documentation at U(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName)",
					]

					type: "str"
				}
				origin_path: {
					description: "Tells CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin."
					type:        "str"
				}
				custom_headers: {
					description: [
						"Custom headers you wish to add to the request before passing it to the origin.",
						"For more information see the CloudFront documentation at U(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html)",
					]

					type:     "list"
					elements: "dict"
					suboptions: {
						header_name: {
							description: "The name of a header that you want CloudFront to forward to your origin."
							type:        "str"
						}
						header_value: {
							description: "The value for the header that you specified in the I(header_name) field."
							type:        "str"
						}
					}
				}
				s3_origin_access_identity_enabled: {
					description: [
						"Use an origin access identity to configure the origin so that viewers can only access objects in an Amazon S3 bucket through CloudFront.",
						"Will automatically create an Identity for you.",
						"See also U(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html).",
					]
					type: "bool"
				}
				custom_origin_config: {
					description: "Connection information about the origin."
					type:        "dict"
					suboptions: {
						http_port: {
							description: "The HTTP port the custom origin listens on."
							type:        "int"
						}
						https_port: {
							description: "The HTTPS port the custom origin listens on."
							type:        "int"
						}
						origin_protocol_policy: {
							description: "The origin protocol policy to apply to your origin."
							type:        "str"
						}
						origin_ssl_protocols: {
							description: "A list of SSL/TLS protocols that you want CloudFront to use when communicating to the origin over HTTPS."
							type:        "list"
							elements:    "str"
						}
						origin_read_timeout: {
							description: "A timeout (in seconds) when reading from your origin."
							type:        "int"
						}
						origin_keepalive_timeout: {
							description: "A keep-alive timeout (in seconds)."
							type:        "int"
						}
					}
				}
			}
		}

		purge_origins: {
			description: "Whether to remove any origins that aren't listed in I(origins)."
			default:     false
			type:        "bool"
		}

		default_cache_behavior: {
			type: "dict"
			description: [
				"A dict specifying the default cache behavior of the distribution.",
				"If not specified, the I(target_origin_id) is defined as the I(target_origin_id) of the first valid I(cache_behavior) in I(cache_behaviors) with defaults.",
			]

			suboptions: {
				target_origin_id: {
					description: [
						"The ID of the origin that you want CloudFront to route requests to by default.",
					]

					type: "str"
				}
				forwarded_values: {
					description: [
						"A dict that specifies how CloudFront handles query strings and cookies.",
					]
					type: "dict"
					suboptions: {
						query_string: {
							description: [
								"Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior.",
							]

							type: "bool"
						}
						cookies: {
							description: "A dict that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones."
							type:        "dict"
							suboptions: {
								forward: {
									description: [
										"Specifies which cookies to forward to the origin for this cache behavior.",
										"Valid values are C(all), C(none), or C(whitelist).",
									]
									type: "str"
								}
								whitelisted_names: {
									type:        "list"
									elements:    "str"
									description: "A list of coockies to forward to the origin for this cache behavior."
								}
							}
						}
						headers: {
							description: [
								"A list of headers to forward to the origin for this cache behavior.",
								"To forward all headers use a list containing a single element '*' (C(['*']))",
							]
							type:     "list"
							elements: "str"
						}
						query_string_cache_keys: {
							description: [
								"A list that contains the query string parameters you want CloudFront to use as a basis for caching for a cache behavior.",
							]
							type:     "list"
							elements: "str"
						}
						trusted_signers: {
							description: [
								"A dict that specifies the AWS accounts that you want to allow to create signed URLs for private content.",
							]
							type: "dict"
							suboptions: {
								enabled: {
									description: "Whether you want to require viewers to use signed URLs to access the files specified by I(target_origin_id)"
									type:        "bool"
								}
								items: {
									description: "A list of trusted signers for this cache behavior."
									elements:    "str"
									type:        "list"
								}
							}
						}
						viewer_protocol_policy: {
							description: [
								"The protocol that viewers can use to access the files in the origin specified by I(target_origin_id).",
								"Valid values are C(allow-all), C(redirect-to-https) and C(https-only).",
							]
							type: "str"
						}
						default_ttl: {
							description: "The default amount of time that you want objects to stay in CloudFront caches."
							type:        "int"
						}
						max_ttl: {
							description: "The maximum amount of time that you want objects to stay in CloudFront caches."
							type:        "int"
						}
						min_ttl: {
							description: "The minimum amount of time that you want objects to stay in CloudFront caches."
							type:        "int"
						}
						allowed_methods: {
							description: "A dict that controls which HTTP methods CloudFront processes and forwards."
							type:        "dict"
							suboptions: {
								items: {
									description: "A list of HTTP methods that you want CloudFront to process and forward."
									type:        "list"
									elements:    "str"
								}
								cached_methods: {
									description: [
										"A list of HTTP methods that you want CloudFront to apply caching to.",
										"This can either be C([GET,HEAD]), or C([GET,HEAD,OPTIONS]).",
									]
									type:     "list"
									elements: "str"
								}
							}
						}
						smooth_streaming: {
							description: [
								"Whether you want to distribute media files in the Microsoft Smooth Streaming format.",
							]
							type: "bool"
						}
						compress: {
							description: [
								"Whether you want CloudFront to automatically compress files.",
							]
							type: "bool"
						}
						lambda_function_associations: {
							description: [
								"A list of Lambda function associations to use for this cache behavior.",
							]
							type:     "list"
							elements: "dict"
							suboptions: {
								lambda_function_arn: {
									description: "The ARN of the Lambda function."
									type:        "str"
								}
								event_type: {
									description: [
										"Specifies the event type that triggers a Lambda function invocation.",
										"This can be C(viewer-request), C(origin-request), C(origin-response) or C(viewer-response).",
									]
									type: "str"
								}
							}
						}
						field_level_encryption_id: {
							description: [
								"The field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data.",
							]
							type: "str"
						}
					}
				}
			}
		}

		cache_behaviors: {
			type:     "list"
			elements: "dict"
			description: [
				"A list of dictionaries describing the cache behaviors for the distribution.",
				"The order of the list is preserved across runs unless I(purge_cache_behavior) is enabled.",
			]
			suboptions: {
				path_pattern: {
					description: [
						"The pattern that specifies which requests to apply the behavior to.",
					]
					type: "str"
				}
				target_origin_id: {
					description: [
						"The ID of the origin that you want CloudFront to route requests to by default.",
					]

					type: "str"
				}
				forwarded_values: {
					description: [
						"A dict that specifies how CloudFront handles query strings and cookies.",
					]
					type: "dict"
					suboptions: {
						query_string: {
							description: [
								"Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior.",
							]

							type: "bool"
						}
						cookies: {
							description: "A dict that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones."
							type:        "dict"
							suboptions: {
								forward: {
									description: [
										"Specifies which cookies to forward to the origin for this cache behavior.",
										"Valid values are C(all), C(none), or C(whitelist).",
									]
									type: "str"
								}
								whitelisted_names: {
									type:        "list"
									elements:    "str"
									description: "A list of coockies to forward to the origin for this cache behavior."
								}
							}
						}
						headers: {
							description: [
								"A list of headers to forward to the origin for this cache behavior.",
								"To forward all headers use a list containing a single element '*' (C(['*']))",
							]
							type:     "list"
							elements: "str"
						}
						query_string_cache_keys: {
							description: [
								"A list that contains the query string parameters you want CloudFront to use as a basis for caching for a cache behavior.",
							]
							type:     "list"
							elements: "str"
						}
						trusted_signers: {
							description: [
								"A dict that specifies the AWS accounts that you want to allow to create signed URLs for private content.",
							]
							type: "dict"
							suboptions: {
								enabled: {
									description: "Whether you want to require viewers to use signed URLs to access the files specified by I(path_pattern) and I(target_origin_id)"
									type:        "bool"
								}
								items: {
									description: "A list of trusted signers for this cache behavior."
									elements:    "str"
									type:        "list"
								}
							}
						}
						viewer_protocol_policy: {
							description: [
								"The protocol that viewers can use to access the files in the origin specified by I(target_origin_id) when a request matches I(path_pattern).",
								"Valid values are C(allow-all), C(redirect-to-https) and C(https-only).",
							]
							type: "str"
						}
						default_ttl: {
							description: "The default amount of time that you want objects to stay in CloudFront caches."
							type:        "int"
						}
						max_ttl: {
							description: "The maximum amount of time that you want objects to stay in CloudFront caches."
							type:        "int"
						}
						min_ttl: {
							description: "The minimum amount of time that you want objects to stay in CloudFront caches."
							type:        "int"
						}
						allowed_methods: {
							description: "A dict that controls which HTTP methods CloudFront processes and forwards."
							type:        "dict"
							suboptions: {
								items: {
									description: "A list of HTTP methods that you want CloudFront to process and forward."
									type:        "list"
									elements:    "str"
								}
								cached_methods: {
									description: [
										"A list of HTTP methods that you want CloudFront to apply caching to.",
										"This can either be C([GET,HEAD]), or C([GET,HEAD,OPTIONS]).",
									]
									type:     "list"
									elements: "str"
								}
							}
						}
						smooth_streaming: {
							description: [
								"Whether you want to distribute media files in the Microsoft Smooth Streaming format.",
							]
							type: "bool"
						}
						compress: {
							description: [
								"Whether you want CloudFront to automatically compress files.",
							]
							type: "bool"
						}
						lambda_function_associations: {
							description: [
								"A list of Lambda function associations to use for this cache behavior.",
							]
							type:     "list"
							elements: "dict"
							suboptions: {
								lambda_function_arn: {
									description: "The ARN of the Lambda function."
									type:        "str"
								}
								event_type: {
									description: [
										"Specifies the event type that triggers a Lambda function invocation.",
										"This can be C(viewer-request), C(origin-request), C(origin-response) or C(viewer-response).",
									]
									type: "str"
								}
							}
						}
						field_level_encryption_id: {
							description: [
								"The field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data.",
							]
							type: "str"
						}
					}
				}
			}
		}

		purge_cache_behaviors: {
			description: [
				"Whether to remove any cache behaviors that aren't listed in I(cache_behaviors).",
				"This switch also allows the reordering of I(cache_behaviors).",
			]
			default: false
			type:    "bool"
		}

		custom_error_responses: {
			type:     "list"
			elements: "dict"
			description: [
				"A config element that is a I(list[]) of complex custom error responses to be specified for the distribution.",
				"This attribute configures custom http error messages returned to the user.",
			]
			suboptions: {
				error_code: {
					type:        "int"
					description: "The error code the the custom error page is for."
				}
				error_caching_min_ttl: {
					type:        "int"
					description: "The length of time (in seconds) that CloudFront will cache status codes for."
				}
				response_code: {
					type: "int"
					description: [
						"The HTTP status code that CloudFront should return to a user when the origin returns the HTTP status code specified by I(error_code).",
					]
				}
				response_page_path: {
					type: "str"
					description: [
						"The path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by I(error_code).",
					]
				}
			}
		}

		purge_custom_error_responses: {
			description: "Whether to remove any custom error responses that aren't listed in I(custom_error_responses)."
			default:     false
			type:        "bool"
		}

		comment: {
			description: [
				"A comment that describes the CloudFront distribution.",
				"If not specified, it defaults to a generic message that it has been created with Ansible, and a datetime stamp.",
			]
			type: "str"
		}

		logging: {
			description: [
				"A config element that is a complex object that defines logging for the distribution.",
			]
			suboptions: {
				enabled: {
					description: "When I(enabled=true) CloudFront will log access to an S3 bucket."
					type:        "bool"
				}
				include_cookies: {
					description: "When I(include_cookies=true) CloudFront will include cookies in the logs."
					type:        "bool"
				}
				bucket: {
					description: "The S3 bucket to store the log in."
					type:        "str"
				}
				prefix: {
					description: "A prefix to include in the S3 object names."
					type:        "str"
				}
			}
			type: "dict"
		}

		price_class: {
			description: [
				"A string that specifies the pricing class of the distribution. As per U(https://aws.amazon.com/cloudfront/pricing/)",
				"I(price_class=PriceClass_100) consists of the areas United States, Canada and Europe.",
				"I(price_class=PriceClass_200) consists of the areas United States, Canada, Europe, Japan, India, Hong Kong, Philippines, S. Korea, Singapore & Taiwan.",
				"I(price_class=PriceClass_All) consists of the areas United States, Canada, Europe, Japan, India, South America, Australia, Hong Kong, Philippines, S. Korea, Singapore & Taiwan.",
				"AWS defaults this to C(PriceClass_All).",
				"Valid values are C(PriceClass_100), C(PriceClass_200) and C(PriceClass_All)",
			]
			type: "str"
		}

		enabled: {
			description: [
				"A boolean value that specifies whether the distribution is enabled or disabled.",
			]
			default: false
			type:    "bool"
		}

		viewer_certificate: {
			type: "dict"
			description: [
				"A dict that specifies the encryption details of the distribution.",
			]
			suboptions: {
				cloudfront_default_certificate: {
					type: "bool"
					description: [
						"If you're using the CloudFront domain name for your distribution, such as C(123456789abcde.cloudfront.net) you should set I(cloudfront_default_certificate=true)",
						"If I(cloudfront_default_certificate=true) do not set I(ssl_support_method).",
					]
				}
				iam_certificate_id: {
					type: "str"
					description: [
						"The ID of a certificate stored in IAM to use for HTTPS connections.",
						"If I(iam_certificate_id) is set then you must also specify I(ssl_support_method)",
					]
				}
				acm_certificate_arn: {
					type: "str"
					description: [
						"The ID of a certificate stored in ACM to use for HTTPS connections.",
						"If I(acm_certificate_id) is set then you must also specify I(ssl_support_method)",
					]
				}
				ssl_support_method: {
					type: "str"
					description: [
						"How CloudFront should serve SSL certificates.",
						"Valid values are C(sni-only) for SNI, and C(vip) if CloudFront is configured to use a dedicated IP for your content.",
					]
				}
				minimum_protocol_version: {
					type: "str"
					description: [
						"The security policy that you want CloudFront to use for HTTPS connections.",
						"See U(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html) for supported security policies.",
					]
				}
			}
		}

		restrictions: {
			type: "dict"
			description: [
				"A config element that is a complex object that describes how a distribution should restrict it's content.",
			]
			suboptions: geo_restriction: {
				description: "Apply a restriciton based on the location of the requester."
				type:        "dict"
				suboptions: {
					restriction_type: {
						type: "str"
						description: [
							"The method that you want to use to restrict distribution of your content by country.",
							"Valid values are C(none), C(whitelist), C(blacklist)",
						]
					}
					items: {
						description: [
							"A list of ISO 3166-1 two letter (Alpha 2) country codes that the restriction should apply to.",
							"See the ISO website for a full list of codes U(https://www.iso.org/obp/ui/#search/code/)",
						]
						type: "list"
					}
				}
			}
		}

		web_acl_id: {
			description: [
				"The ID of a Web Application Firewall (WAF) Access Control List (ACL).",
			]
			type: "str"
		}

		http_version: {
			description: [
				"The version of the http protocol to use for the distribution.",
				"AWS defaults this to C(http2).",
				"Valid values are C(http1.1) and C(http2)",
			]
			type: "str"
		}

		ipv6_enabled: {
			description: [
				"Determines whether IPv6 support is enabled or not.",
			]
			type:    "bool"
			default: false
		}

		wait: {
			description: [
				"Specifies whether the module waits until the distribution has completed processing the creation or update.",
			]
			type:    "bool"
			default: false
		}

		wait_timeout: {
			description: [
				"Specifies the duration in seconds to wait for a timeout of a cloudfront create or update.",
			]
			default: 1800
			type:    "int"
		}
	}
}
