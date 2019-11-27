package crypto

openssl_privatekey :: {

	// The cipher to encrypt the private key. (Valid values can be found by running `openssl list -cipher-algorithms` or `openssl list-cipher-algorithms`, depending on your OpenSSL version.)
	// When using the C(cryptography) backend, use C(auto).

	cipher?: string

	// Note that not all curves are supported by all versions of C(cryptography).
	// For maximal interoperability, C(secp384r1) or C(secp256r1) should be used.
	// We use the curve names as defined in the L(IANA registry for TLS,https://www.iana.org/assignments/tls-parameters/tls-parameters.xhtml#tls-parameters-8).

	curve?: string

	// Name of the file in which the generated TLS/SSL private key will be written. It will have 0600 mode.

	path: string

	// Size (in bits) of the TLS/SSL key to generate.

	size?: int

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.
	// Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.

	select_crypto_backend?: string

	// Whether the private key should exist or not, taking action if the state is different from what is stated.

	state?: string

	// The algorithm used to generate the TLS/SSL private key.
	// Note that C(ECC), C(X25519), C(X448), C(Ed25519) and C(Ed448) require the C(cryptography) backend. C(X25519) needs cryptography 2.5 or newer, while C(X448), C(Ed25519) and C(Ed448) require cryptography 2.6 or newer. For C(ECC), the minimal cryptography version required depends on the I(curve) option.

	type?: string

	// Create a backup file including a timestamp so you can get the original private key back if you overwrote it with a new one by accident.

	backup?: bool

	// Should the key be regenerated even if it already exists.

	force?: bool

	// Determines which format the private key is written in. By default, PKCS1 (traditional OpenSSL format) is used for all keys which support it. Please note that not every key can be exported in any format.
	// The value C(auto) selects a fromat based on the key format. The value C(auto_ignore) does the same, but for existing private key files, it will not force a regenerate when its format is not the automatically selected one for generation.
	// Note that if the format for an existing private key mismatches, the key is *regenerated* by default. To change this behavior, use the I(format_mismatch) option.
	// The I(format) option is only supported by the C(cryptography) backend. The C(pyopenssl) backend will fail if a value different from C(auto_ignore) is used.

	format?: string

	// Determines behavior of the module if the format of a private key does not match the expected format, but all other parameters are as expected.
	// If set to C(regenerate) (default), generates a new private key.
	// If set to C(convert), the key will be converted to the new format instead.
	// Only supported by the C(cryptography) backend.

	format_mismatch?: string

	// The passphrase for the private key.

	passphrase?: string
}

openssl_publickey :: {

	// The format of the public key.

	format?: string

	// Name of the file in which the generated TLS/SSL public key will be written.

	path: string

	// The passphrase for the private key.

	privatekey_passphrase?: string

	// Path to the TLS/SSL private key from which to generate the public key.

	privatekey_path: string

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.

	select_crypto_backend?: string

	// Whether the public key should exist or not, taking action if the state is different from what is stated.

	state?: string

	// Create a backup file including a timestamp so you can get the original public key back if you overwrote it with a different one by accident.

	backup?: bool

	// Should the key be regenerated even it it already exists.

	force?: bool
}

luks_device :: {

	// Device to work with (e.g. C(/dev/sda1)). Needed in most cases. Can be omitted only when I(state=closed) together with I(name) is provided.

	device?: string

	// If set to C(yes), allows removing the last key from a container.
	// BEWARE that when the last key has been removed from a container, the container can no longer be opened!

	force_remove_last_key?: bool

	// Sets container name when I(state=opened). Can be used instead of I(device) when closing the existing container (i.e. when I(state=closed)).

	name?: string

	// Adds additional key to given container on I(device). Needs I(keyfile) option for authorization. LUKS container supports up to 8 keys. Parameter value is the path to the keyfile with the passphrase.
	// NOTE that adding additional keys is I(not idempotent). A new keyslot will be used even if another keyslot already exists for this keyfile.
	// BEWARE that working with keyfiles in plaintext is dangerous. Make sure that they are protected.

	new_keyfile?: string

	// This option allow the user explicit define the format of LUKS container that wants to work with. Options are C(luks1) or C(luks2)

	type?: string

	// Used to unlock the container and needed for most of the operations. Parameter value is the path to the keyfile with the passphrase.
	// BEWARE that working with keyfiles in plaintext is dangerous. Make sure that they are protected.

	keyfile?: string

	// Sets the key size only if LUKS container does not exist.

	keysize?: int

	// This option allow the user to create a LUKS2 format container with label support, respectively to identify the container by label on later usages.
	// Will only be used on container creation, or when I(device) is not specified.
	// This cannot be specified if I(type) is set to C(luks1).

	label?: string

	// Removes given key from the container on I(device). Does not remove the keyfile from filesystem. Parameter value is the path to the keyfile with the passphrase.
	// NOTE that removing keys is I(not idempotent). Trying to remove a key which no longer exists results in an error.
	// NOTE that to remove the last key from a LUKS container, the I(force_remove_last_key) option must be set to C(yes).
	// BEWARE that working with keyfiles in plaintext is dangerous. Make sure that they are protected.

	remove_keyfile?: string

	// Desired state of the LUKS container. Based on its value creates, destroys, opens or closes the LUKS container on a given device.
	// I(present) will create LUKS container unless already present. Requires I(device) and I(keyfile) options to be provided.
	// I(absent) will remove existing LUKS container if it exists. Requires I(device) or I(name) to be specified.
	// I(opened) will unlock the LUKS container. If it does not exist it will be created first. Requires I(device) and I(keyfile) to be specified. Use the I(name) option to set the name of the opened container. Otherwise the name will be generated automatically and returned as a part of the result.
	// I(closed) will lock the LUKS container. However if the container does not exist it will be created. Requires I(device) and I(keyfile) options to be provided. If container does already exist I(device) or I(name) will suffice.

	state?: string

	// With this option user can identify the LUKS container by UUID.
	// Will only be used when I(device) and I(label) are not specified.

	uuid?: string
}

openssl_dhparam :: {

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(openssl).
	// If set to C(openssl), will try to use the OpenSSL C(openssl) executable.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.

	select_crypto_backend?: string

	// Size (in bits) of the generated DH-params.

	size?: int

	// Whether the parameters should exist or not, taking action if the state is different from what is stated.

	state?: string

	// Create a backup file including a timestamp so you can get the original DH params back if you overwrote them with new ones by accident.

	backup?: bool

	// Should the parameters be regenerated even it it already exists.

	force?: bool

	// Name of the file in which the generated parameters will be saved.

	path: string
}

openssh_keypair :: {

	// Whether the private and public keys should exist or not, taking action if the state is different from what is stated.

	state?: string

	// The algorithm used to generate the SSH private key. C(rsa1) is for protocol version 1. C(rsa1) is deprecated and may not be supported by every version of ssh-keygen.

	type?: string

	// Provides a new comment to the public key. When checking if the key is in the correct state this will be ignored.

	comment?: string

	// Should the key be regenerated even if it already exists

	force?: bool

	// Name of the files containing the public and private key. The file containing the public key will have the extension C(.pub).

	path: string

	// Specifies the number of bits in the private key to create. For RSA keys, the minimum size is 1024 bits and the default is 4096 bits. Generally, 2048 bits is considered sufficient.  DSA keys must be exactly 1024 bits as specified by FIPS 186-2. For ECDSA keys, size determines the key length by selecting from one of three elliptic curve sizes: 256, 384 or 521 bits. Attempting to use bit lengths other than these three values for ECDSA keys will cause this module to fail. Ed25519 keys have a fixed length and the size will be ignored.

	size?: int
}

openssl_certificate :: {

	// Checks if the certificate is expired/not expired at the time the module is executed.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	has_expired?: bool

	// If set to C(yes), the I(issuer) field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	issuer_strict?: bool

	// The point in time the certificate is valid from.
	// Time can be specified either as relative time or as absolute timestamp.
	// Time will always be interpreted as UTC.
	// Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using relative time this module is NOT idempotent.
	// If this value is not specified, the certificate will start being valid from now.
	// This is only used by the C(selfsigned) provider.

	selfsigned_not_before?: string

	// The passphrase for the I(ownca_privatekey_path).
	// This is only used by the C(ownca) provider.

	ownca_privatekey_passphrase?: string

	// The version of the C(ownca) certificate.
	// Nowadays it should almost always be C(3).
	// This is only used by the C(ownca) provider.

	ownca_version?: int

	// Remote absolute path where the generated certificate file should be created or is already located.

	path: string

	// The path to the ACME challenge directory that is served on U(http://<HOST>:80/.well-known/acme-challenge/)
	// This is only used by the C(acme) provider.

	acme_challenge_path?: string

	// Create a backup file including a timestamp so you can get the original certificate back if you overwrote it with a new one by accident.
	// This is not used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	backup?: bool

	// A list of algorithms that you would accept the certificate to be signed with (e.g. ['sha256WithRSAEncryption', 'sha512WithRSAEncryption']).
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	signature_algorithms?: [...string]

	// The I(extended_key_usage) extension field must contain all these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	extended_key_usage?: [...string]

	// Path to the CA (Certificate Authority) private key to use when signing the certificate.
	// This is only used by the C(ownca) provider.

	ownca_privatekey_path?: string

	// The path to the private key of the client certificate used to authenticate to the Entrust Certificate Services (ECS) API.
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_api_client_cert_key_path?: string

	// The key/value pairs that must be present in the issuer name field of the certificate.
	// If you need to specify more than one value with the same key, use a list as value.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	issuer?: {...}

	// Whether to create the Subject Key Identifier (SKI) from the public key.
	// A value of C(create_if_not_provided) (default) only creates a SKI when the CSR does not provide one.
	// A value of C(always_create) always creates a SKI. If the CSR provides one, that one is ignored.
	// A value of C(never_create) never creates a SKI. If the CSR provides one, that one is used.
	// This is only used by the C(ownca) provider.
	// Note that this is only supported if the C(cryptography) backend is used!

	ownca_create_subject_key_identifier?: string

	// The point in time the certificate is valid from.
	// Time can be specified either as relative time or as absolute timestamp.
	// Time will always be interpreted as UTC.
	// Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using relative time this module is NOT idempotent.
	// If this value is not specified, the certificate will start being valid from now.
	// This is only used by the C(ownca) provider.

	ownca_not_before?: string

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.
	// Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.

	select_crypto_backend?: string

	// The name of the requester of the certificate (for tracking purposes).
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_requester_name?: string

	// If set to C(yes), the I(subject) field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	subject_strict?: bool

	// Digest algorithm to be used when self-signing the certificate.
	// This is only used by the C(selfsigned) provider.

	selfsigned_digest?: string

	// The certificate must expire at this point in time.
	// The timestamp is formatted as an ASN.1 TIME.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	not_after?: string

	// Specify the type of certificate requested.
	// This is only used by the C(entrust) provider.

	entrust_cert_type?: string

	// If set to C(yes), the I(key_usage) extension field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	key_usage_strict?: bool

	// Whether the certificate should exist or not, taking action if the state is different from what is stated.

	state?: string

	// Version of the C(selfsigned) certificate.
	// Nowadays it should almost always be C(3).
	// This is only used by the C(selfsigned) provider.

	selfsigned_version?: int

	// The key/value pairs that must be present in the subject name field of the certificate.
	// If you need to specify more than one value with the same key, use a list as value.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	subject?: {...}

	// The I(subject_alt_name) extension field must contain these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	subject_alt_name?: [...string]

	// The phone number of the requester of the certificate (for tracking purposes).
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_requester_phone?: string

	// Generate the certificate, even if it already exists.

	force?: bool

	// Remote absolute path of the CA (Certificate Authority) certificate.
	// This is only used by the C(ownca) provider.

	ownca_path?: string

	// The path to the accountkey for the C(acme) provider.
	// This is only used by the C(acme) provider.

	acme_accountkey_path?: string

	// The path to the specification file defining the Entrust Certificate Services (ECS) API configuration.
	// You can use this to keep a local copy of the specification to avoid downloading it every time the module is used.
	// This is only used by the C(entrust) provider.

	entrust_api_specification_path?: string

	// The certificate must be valid at this point in time.
	// The timestamp is formatted as an ASN.1 TIME.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	valid_at?: string

	// The key (password) for authentication to the Entrust Certificate Services (ECS) API.
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_api_key?: string

	// The username for authentication to the Entrust Certificate Services (ECS) API.
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_api_user?: string

	// The I(key_usage) extension field must contain all these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	key_usage?: [...string]

	// Path to the private key to use when signing the certificate.

	privatekey_path?: string

	// Name of the provider to use to generate/retrieve the OpenSSL certificate.
	// The C(assertonly) provider will not generate files and fail if the certificate file is missing.
	// The C(assertonly) provider has been deprecated in Ansible 2.9 and will be removed in Ansible 2.13. Please see the examples on how to emulate it with M(openssl_certificate_info), M(openssl_csr_info), M(openssl_privatekey_info) and M(assert).
	// The C(entrust) provider was added for Ansible 2.9 and requires credentials for the L(https://www.entrustdatacard.com/products/categories/ssl-certificates,Entrust Certificate Services) (ECS) API.

	provider: string

	// If set to C(yes), the I(subject_alt_name) extension field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	subject_alt_name_strict?: bool

	// The version of the certificate.
	// Nowadays it should almost always be 3.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	version?: int

	// Include the intermediate certificate to the generated certificate
	// This is only used by the C(acme) provider.
	// Note that this is only available for older versions of C(acme-tiny). New versions include the chain automatically, and setting I(acme_chain) to C(yes) results in an error.

	acme_chain?: bool

	// The certificate must start to become valid at this point in time.
	// The timestamp is formatted as an ASN.1 TIME.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	not_before?: string

	// If set to C(yes), the I(extended_key_usage) extension field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	extended_key_usage_strict?: bool

	// Create a Authority Key Identifier from the CA's certificate. If the CSR provided a authority key identifier, it is ignored.
	// The Authority Key Identifier is generated from the CA certificate's Subject Key Identifier, if available. If it is not available, the CA certificate's public key will be used.
	// This is only used by the C(ownca) provider.
	// Note that this is only supported if the C(cryptography) backend is used!

	ownca_create_authority_key_identifier?: bool

	// The point in time at which the certificate stops being valid.
	// Time can be specified either as relative time or as absolute timestamp.
	// Time will always be interpreted as UTC.
	// Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using relative time this module is NOT idempotent.
	// If this value is not specified, the certificate will stop being valid 10 years from now.
	// This is only used by the C(ownca) provider.

	ownca_not_after?: string

	// The passphrase for the I(privatekey_path).
	// This is required if the private key is password protected.

	privatekey_passphrase?: string

	// Path to the Certificate Signing Request (CSR) used to generate this certificate.
	// This is not required in C(assertonly) mode.

	csr_path?: string

	// The point in time at which the certificate stops being valid.
	// Time can be specified either as relative time or as absolute timestamp.
	// Time will always be interpreted as UTC.
	// Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using relative time this module is NOT idempotent.
	// If this value is not specified, the certificate will stop being valid 10 years from now.
	// This is only used by the C(selfsigned) provider.

	selfsigned_not_after?: string

	// Whether to create the Subject Key Identifier (SKI) from the public key.
	// A value of C(create_if_not_provided) (default) only creates a SKI when the CSR does not provide one.
	// A value of C(always_create) always creates a SKI. If the CSR provides one, that one is ignored.
	// A value of C(never_create) never creates a SKI. If the CSR provides one, that one is used.
	// This is only used by the C(selfsigned) provider.
	// Note that this is only supported if the C(cryptography) backend is used!

	selfsigned_create_subject_key_identifier?: string

	// The digest algorithm to be used for the C(ownca) certificate.
	// This is only used by the C(ownca) provider.

	ownca_digest?: string

	// The certificate must still be valid at this relative time offset from now.
	// Valid format is C([+-]timespec | number_of_seconds) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using this parameter, this module is NOT idempotent.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	valid_in?: string

	// The point in time at which the certificate stops being valid.
	// Time can be specified either as relative time or as an absolute timestamp.
	// A valid absolute time format is C(ASN.1 TIME) such as C(2019-06-18).
	// A valid relative time format is C([+-]timespec) where timespec can be an integer + C([w | d | h | m | s]), such as C(+365d) or C(+32w1d2h)).
	// Time will always be interpreted as UTC.
	// Note that only the date (day, month, year) is supported for specifying the expiry date of the issued certificate.
	// The full date-time is adjusted to EST (GMT -5:00) before issuance, which may result in a certificate with an expiration date one day earlier than expected if a relative time is used.
	// The minimum certificate lifetime is 90 days, and maximum is three years.
	// If this value is not specified, the certificate will stop being valid 365 days the date of issue.
	// This is only used by the C(entrust) provider.

	entrust_not_after?: string

	// The email of the requester of the certificate (for tracking purposes).
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_requester_email?: string

	// The path to the client certificate used to authenticate to the Entrust Certificate Services (ECS) API.
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_api_client_cert_path?: string

	// The certificate must be invalid at this point in time.
	// The timestamp is formatted as an ASN.1 TIME.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	invalid_at?: string
}

openssl_certificate_info :: {

	// Remote absolute path where the certificate file is loaded from.

	path: string

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.
	// Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.

	select_crypto_backend?: string

	// A dict of names mapping to time specifications. Every time specified here will be checked whether the certificate is valid at this point. See the C(valid_at) return value for informations on the result.
	// Time can be specified either as relative time or as absolute timestamp.
	// Time will always be interpreted as UTC.
	// Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h), and ASN.1 TIME (i.e. pattern C(YYYYMMDDHHMMSSZ)). Note that all timestamps will be treated as being in UTC.

	valid_at?: {...}
}

get_certificate :: {

	// A PEM file containing one or more root certificates; if present, the cert will be validated against these root certs.
	// Note that this only validates the certificate is signed by the chain; not that the cert is valid for the host presenting it.

	ca_cert?: string

	// The host to get the cert for (IP is fine)

	host: string

	// The port to connect to

	port: int

	// Proxy host used when get a certificate.

	proxy_host?: string

	// Proxy port used when get a certificate.

	proxy_port?: int

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.

	select_crypto_backend?: string

	// The timeout in seconds

	timeout?: int
}

openssh_cert :: {

	// Whether the host or user certificate should exist or not, taking action if the state is different from what is stated.

	state?: string

	// Check if the certificate is valid at a certain point in time. If it is not the certificate will be regenerated. Time will always be interpreted as UTC. Mainly to be used with relative timespec for I(valid_from) and / or I(valid_to). Note that if using relative time this module is NOT idempotent.

	valid_at?: string

	// The point in time the certificate is valid from. Time can be specified either as relative time or as absolute timestamp. Time will always be interpreted as UTC. Valid formats are: C([+-]timespec | YYYY-MM-DD | YYYY-MM-DDTHH:MM:SS | YYYY-MM-DD HH:MM:SS | always) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h). Note that if using relative time this module is NOT idempotent.

	valid_from: string

	// The point in time the certificate is valid to. Time can be specified either as relative time or as absolute timestamp. Time will always be interpreted as UTC. Valid formats are: C([+-]timespec | YYYY-MM-DD | YYYY-MM-DDTHH:MM:SS | YYYY-MM-DD HH:MM:SS | forever) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h). Note that if using relative time this module is NOT idempotent.

	valid_to: string

	// Specify certificate options when signing a key. The option that are valid for user certificates are:
	// C(clear): Clear all enabled permissions.  This is useful for clearing the default set of permissions so permissions may be added individually.
	// C(force-command=command): Forces the execution of command instead of any shell or command specified by the user when the certificate is used for authentication.
	// C(no-agent-forwarding): Disable ssh-agent forwarding (permitted by default).
	// C(no-port-forwarding): Disable port forwarding (permitted by default).
	// C(no-pty Disable): PTY allocation (permitted by default).
	// C(no-user-rc): Disable execution of C(~/.ssh/rc) by sshd (permitted by default).
	// C(no-x11-forwarding): Disable X11 forwarding (permitted by default)
	// C(permit-agent-forwarding): Allows ssh-agent forwarding.
	// C(permit-port-forwarding): Allows port forwarding.
	// C(permit-pty): Allows PTY allocation.
	// C(permit-user-rc): Allows execution of C(~/.ssh/rc) by sshd.
	// C(permit-x11-forwarding): Allows X11 forwarding.
	// C(source-address=address_list): Restrict the source addresses from which the certificate is considered valid. The C(address_list) is a comma-separated list of one or more address/netmask pairs in CIDR format.
	// At present, no options are valid for host keys.

	options?: [...string]

	// Path of the file containing the certificate.

	path: string

	// The path to the public key that will be signed with the signing key in order to generate the certificate.

	public_key: string

	// Specify the certificate serial number. The serial number is logged by the server when the certificate is used for authentication. The certificate serial number may be used in a KeyRevocationList. The serial number may be omitted for checks, but must be specified again for a new certificate. Note: The default value set by ssh-keygen is 0.

	serial_number?: int

	// Whether the module should generate a host or a user certificate.

	type: string

	// Should the certificate be regenerated even if it already exists and is valid.

	force?: bool

	// Specify the key identity when signing a public key. The identifier that is logged by the server when the certificate is used for authentication.

	identifier?: string

	// Certificates may be limited to be valid for a set of principal (user/host) names. By default, generated certificates are valid for all users or hosts.

	principals?: [...string]

	// The path to the private openssh key that is used for signing the public key in order to generate the certificate.

	signing_key: string
}

openssl_privatekey_info :: {

	// The passphrase for the private key.

	passphrase?: string

	// Remote absolute path where the private key file is loaded from.

	path: string

	// Whether to return private key data.
	// Only set this to C(yes) when you want private information about this key to leave the remote machine.
	// WARNING: you have to make sure that private key data isn't accidentally logged!

	return_private_key_data?: bool

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.
	// Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.

	select_crypto_backend?: string
}

openssl_csr_info :: {

	// Remote absolute path where the CSR file is loaded from.

	path: string

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.
	// Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.

	select_crypto_backend?: string
}

openssl_pkcs12 :: {

	// Specifies the friendly name for the certificate and private key.

	friendly_name?: string

	// Number of times to repeat the encryption step.

	iter_size?: int

	// C(export) or C(parse) a PKCS#12.

	action?: string

	// The path to read certificates and private keys from.
	// Must be in PEM format.

	certificate_path?: string

	// Number of times to repeat the MAC step.

	maciter_size?: int

	// File to read private key from.

	privatekey_path?: string

	// PKCS#12 file path to parse.

	src?: string

	// Create a backup file including a timestamp so you can get the original output file back if you overwrote it with a new one by accident.

	backup?: bool

	// Should the file be regenerated even if it already exists.

	force?: bool

	// List of other certificates to include. Pre 2.8 this parameter was called C(ca_certificates)

	other_certificates?: [...string]

	// Filename to write the PKCS#12 file to.

	path: string

	// Whether the file should exist or not. All parameters except C(path) are ignored when state is C(absent).

	state?: string

	// The PKCS#12 password.

	passphrase?: string

	// Passphrase source to decrypt any input private keys with.

	privatekey_passphrase?: string
}

certificate_complete_chain :: {

	// A concatenated set of certificates in PEM format forming a chain.
	// The module will try to complete this chain.

	input_chain: string

	// A list of filenames or directories.
	// A filename is assumed to point to a file containing one or more certificates in PEM format. All certificates in this file will be added to the set of root certificates.
	// If a directory name is given, all files in the directory and its subdirectories will be scanned and tried to be parsed as concatenated certificates in PEM format.
	// Symbolic links will be followed.

	intermediate_certificates?: [...string]

	// A list of filenames or directories.
	// A filename is assumed to point to a file containing one or more certificates in PEM format. All certificates in this file will be added to the set of root certificates.
	// If a directory name is given, all files in the directory and its subdirectories will be scanned and tried to be parsed as concatenated certificates in PEM format.
	// Symbolic links will be followed.

	root_certificates: [...string]
}

openssl_csr :: {

	// The path to the private key to use when signing the certificate signing request.

	privatekey_path: string

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.
	// Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.

	select_crypto_backend?: string

	// The authority key identifier as a hex string, where two bytes are separated by colons.
	// Example: C(00:11:22:33:44:55:66:77:88:99:aa:bb:cc:dd:ee:ff:00:11:22:33)
	// If specified, I(authority_cert_issuer) must also be specified.
	// Please note that commercial CAs ignore this value, respectively use a value of their own choice. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// Note that this is only supported if the C(cryptography) backend is used!
	// The C(AuthorityKeyIdentifier) will only be added if at least one of I(authority_key_identifier), I(authority_cert_issuer) and I(authority_cert_serial_number) is specified.

	authority_key_identifier?: string

	// Create a backup file including a timestamp so you can get the original CSR back if you overwrote it with a new one by accident.

	backup?: bool

	// The emailAddress field of the certificate signing request subject.

	email_address?: string

	// The localityName field of the certificate signing request subject.

	locality_name?: string

	// The name of the file into which the generated OpenSSL certificate signing request will be written.

	path: string

	// Whether the certificate signing request should exist or not, taking action if the state is different from what is stated.

	state?: string

	// The commonName field of the certificate signing request subject.

	common_name?: string

	// The countryName field of the certificate signing request subject.

	country_name?: string

	// Should the subjectAltName extension be considered as critical.

	subject_alt_name_critical?: bool

	// Should the basicConstraints extension be considered as critical.

	basic_constraints_critical?: bool

	// Should the certificate signing request be forced regenerated by this ansible module.

	force?: bool

	// The digest used when signing the certificate signing request with the private key.

	digest?: string

	// Indicates that the certificate should contain the OCSP Must Staple extension (U(https://tools.ietf.org/html/rfc7633)).

	ocsp_must_staple?: bool

	// Should the OCSP Must Staple extension be considered as critical
	// Note that according to the RFC, this extension should not be marked as critical, as old clients not knowing about OCSP Must Staple are required to reject such certificates (see U(https://tools.ietf.org/html/rfc7633#section-4)).

	ocsp_must_staple_critical?: bool

	// SAN extension to attach to the certificate signing request.
	// This can either be a 'comma separated string' or a YAML list.
	// Values must be prefixed by their options. (i.e., C(email), C(URI), C(DNS), C(RID), C(IP), C(dirName), C(otherName) and the ones specific to your CA)
	// Note that if no SAN is specified, but a common name, the common name will be added as a SAN except if C(useCommonNameForSAN) is set to I(false).
	// More at U(https://tools.ietf.org/html/rfc5280#section-4.2.1.6).

	subject_alt_name?: [...string]

	// The subject key identifier as a hex string, where two bytes are separated by colons.
	// Example: C(00:11:22:33:44:55:66:77:88:99:aa:bb:cc:dd:ee:ff:00:11:22:33)
	// Please note that commercial CAs ignore this value, respectively use a value of their own choice. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// Note that this option can only be used if I(create_subject_key_identifier) is C(no).
	// Note that this is only supported if the C(cryptography) backend is used!

	subject_key_identifier?: string

	// The version of the certificate signing request.
	// The only allowed value according to L(RFC 2986,https://tools.ietf.org/html/rfc2986#section-4.1) is 1.
	// This option will no longer accept unsupported values from Ansible 2.14 on.

	version?: int

	// Indicates basic constraints, such as if the certificate is a CA.

	basic_constraints?: [...string]

	// Create the Subject Key Identifier from the public key.
	// Please note that commercial CAs can ignore the value, respectively use a value of their own choice instead. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// Note that this is only supported if the C(cryptography) backend is used!

	create_subject_key_identifier?: bool

	// The organizationName field of the certificate signing request subject.

	organization_name?: string

	// Names that will be present in the authority cert issuer field of the certificate signing request.
	// Values must be prefixed by their options. (i.e., C(email), C(URI), C(DNS), C(RID), C(IP), C(dirName), C(otherName) and the ones specific to your CA)
	// Example: C(DNS:ca.example.org)
	// If specified, I(authority_key_identifier) must also be specified.
	// Please note that commercial CAs ignore this value, respectively use a value of their own choice. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// Note that this is only supported if the C(cryptography) backend is used!
	// The C(AuthorityKeyIdentifier) will only be added if at least one of I(authority_key_identifier), I(authority_cert_issuer) and I(authority_cert_serial_number) is specified.

	authority_cert_issuer?: [...string]

	// Should the extkeyUsage extension be considered as critical.

	extended_key_usage_critical?: bool

	// The organizationalUnitName field of the certificate signing request subject.

	organizational_unit_name?: string

	// The passphrase for the private key.
	// This is required if the private key is password protected.

	privatekey_passphrase?: string

	// Should the keyUsage extension be considered as critical.

	key_usage_critical?: bool

	// If set to C(yes), the module will fill the common name in for C(subject_alt_name) with C(DNS:) prefix if no SAN is specified.

	use_common_name_for_san?: bool

	// Additional restrictions (e.g. client authentication, server authentication) on the allowed purposes for which the public key may be used.

	extended_key_usage?: [...string]

	// This defines the purpose (e.g. encipherment, signature, certificate signing) of the key contained in the certificate.

	key_usage?: [...string]

	// Key/value pairs that will be present in the subject name field of the certificate signing request.
	// If you need to specify more than one value with the same key, use a list as value.

	subject?: {...}

	// The authority cert serial number.
	// Note that this is only supported if the C(cryptography) backend is used!
	// Please note that commercial CAs ignore this value, respectively use a value of their own choice. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// The C(AuthorityKeyIdentifier) will only be added if at least one of I(authority_key_identifier), I(authority_cert_issuer) and I(authority_cert_serial_number) is specified.

	authority_cert_serial_number?: int

	// The stateOrProvinceName field of the certificate signing request subject.

	state_or_province_name?: string
}
