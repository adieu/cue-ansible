package acme

acme_certificate :: {

	// The challenge to be performed.

	challenge?: string

	// The destination file for the full chain (i.e. certificate followed by chain of intermediate certificates).
	// Required if C(dest) is not specified.

	fullchain_dest?: string

	// Boolean indicating whether the module should create the account if necessary, and update its contact data.
	// Set to C(no) if you want to use the M(acme_account) module to manage your account instead, and to avoid accidental creation of a new account using an old key if you changed the account key with M(acme_account).
	// If set to C(no), C(terms_agreed) and C(account_email) are ignored.

	modify_account?: bool

	// The number of days the certificate must have left being valid. If C(cert_days < remaining_days), then it will be renewed. If the certificate is not renewed, module return values will not include C(challenge_data).
	// To make sure that the certificate is renewed in any case, you can use the C(force) option.

	remaining_days?: int

	// Allows to specify criteria by which an (alternate) trust chain can be selected.
	// The list of criteria will be processed one by one until a chain is found matching a criterium. If such a chain is found, it will be used by the module instead of the default chain.
	// If a criterium matches multiple chains, the first one matching will be returned. The order is determined by the ordering of the C(Link) headers returned by the ACME server and might not be deterministic.
	// Every criterium can consist of multiple different conditions, like I(issuer) and I(subject). For the criterium to match a chain, all conditions must apply to the same certificate in the chain.
	// This option can only be used with the C(cryptography) backend.

	select_chain?: [..._]

	// Boolean indicating whether you agree to the terms of service document.
	// ACME servers can require this to be true.
	// This option will only be used when C(acme_version) is not 1.

	terms_agreed?: bool

	// URI to a terms of service document you agree to when using the ACME v1 service at C(acme_directory).
	// Default is latest gathered from C(acme_directory) URL.
	// This option will only be used when C(acme_version) is 1.

	agreement?: string

	// If specified, the intermediate certificate will be written to this file.

	chain_dest?: string

	// The data to validate ongoing challenges. This must be specified for the second run of the module only.
	// The value that must be used here will be provided by a previous use of this module. See the examples for more details.
	// Note that for ACME v2, only the C(order_uri) entry of C(data) will be used. For ACME v1, C(data) must be non-empty to indicate the second stage is active; all needed data will be taken from the CSR.
	// I(Note): the C(data) option was marked as C(no_log) up to Ansible 2.5. From Ansible 2.6 on, it is no longer marked this way as it causes error messages to be come unusable, and C(data) does not contain any information which can be used without having access to the account key or which are not public anyway.

	data?: {...}

	// The destination file for the certificate.
	// Required if C(fullchain_dest) is not specified.

	dest?: string

	// Enforces the execution of the challenge and validation, even if an existing certificate is still valid for more than C(remaining_days).
	// This is especially helpful when having an updated CSR e.g. with additional domains for which a new certificate is desired.

	force?: bool

	// When set to C(yes), will retrieve all alternate trust chains offered by the ACME CA. These will not be written to disk, but will be returned together with the main chain as C(all_chains). See the documentation for the C(all_chains) return value for details.

	retrieve_all_alternates?: bool

	// The email address associated with this account.
	// It will be used for certificate expiration warnings.
	// Note that when C(modify_account) is not set to C(no) and you also used the M(acme_account) module to specify more than one contact for your account, this module will update your account and restrict it to the (at most one) contact email address specified here.

	account_email?: string

	// File containing the CSR for the new certificate.
	// Can be created with C(openssl req ...).
	// The CSR may contain multiple Subject Alternate Names, but each one will lead to an individual challenge that must be fulfilled for the CSR to be signed.
	// I(Note): the private key used to create the CSR I(must not) be the account key. This is a bad idea from a security point of view, and the CA should not accept the CSR. The ACME server should return an error in this case.

	csr: string

	// Deactivate authentication objects (authz) after issuing a certificate, or when issuing the certificate failed.
	// Authentication objects are bound to an account key and remain valid for a certain amount of time, and can be used to issue certificates without having to re-authenticate the domain. This can be a security concern.

	deactivate_authzs?: bool
}

openssl_privatekey :: {

	// Determines behavior of the module if the format of a private key does not match the expected format, but all other parameters are as expected.
	// If set to C(regenerate) (default), generates a new private key.
	// If set to C(convert), the key will be converted to the new format instead.
	// Only supported by the C(cryptography) backend.

	format_mismatch?: string

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.
	// Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.

	select_crypto_backend?: string

	// Whether the private key should exist or not, taking action if the state is different from what is stated.

	state?: string

	// The cipher to encrypt the private key. (Valid values can be found by running `openssl list -cipher-algorithms` or `openssl list-cipher-algorithms`, depending on your OpenSSL version.)
	// When using the C(cryptography) backend, use C(auto).

	cipher?: string

	// Should the key be regenerated even if it already exists.

	force?: bool

	// Determines which format the private key is written in. By default, PKCS1 (traditional OpenSSL format) is used for all keys which support it. Please note that not every key can be exported in any format.
	// The value C(auto) selects a fromat based on the key format. The value C(auto_ignore) does the same, but for existing private key files, it will not force a regenerate when its format is not the automatically selected one for generation.
	// Note that if the format for an existing private key mismatches, the key is *regenerated* by default. To change this behavior, use the I(format_mismatch) option.
	// The I(format) option is only supported by the C(cryptography) backend. The C(pyopenssl) backend will fail if a value different from C(auto_ignore) is used.

	format?: string

	// Name of the file in which the generated TLS/SSL private key will be written. It will have 0600 mode.

	path: string

	// Size (in bits) of the TLS/SSL key to generate.

	size?: int

	// The algorithm used to generate the TLS/SSL private key.
	// Note that C(ECC), C(X25519), C(X448), C(Ed25519) and C(Ed448) require the C(cryptography) backend. C(X25519) needs cryptography 2.5 or newer, while C(X448), C(Ed25519) and C(Ed448) require cryptography 2.6 or newer. For C(ECC), the minimal cryptography version required depends on the I(curve) option.

	type?: string

	// Create a backup file including a timestamp so you can get the original private key back if you overwrote it with a new one by accident.

	backup?: bool

	// Note that not all curves are supported by all versions of C(cryptography).
	// For maximal interoperability, C(secp384r1) or C(secp256r1) should be used.
	// We use the curve names as defined in the L(IANA registry for TLS,https://www.iana.org/assignments/tls-parameters/tls-parameters.xhtml#tls-parameters-8).

	curve?: string

	// The passphrase for the private key.

	passphrase?: string
}

openssl_privatekey_info :: {

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

	// The passphrase for the private key.

	passphrase?: string

	// Remote absolute path where the private key file is loaded from.

	path: string
}

acme_inspect :: {

	// The URL to send the request to.
	// Must be specified if I(method) is not C(directory-only).

	url?: string

	// An encoded JSON object which will be sent as the content if I(method) is C(post).
	// Required when I(method) is C(post), and not allowed otherwise.

	content?: string

	// If I(method) is C(post) or C(get), make the module fail in case an ACME error is returned.

	fail_on_acme_error?: bool

	// The method to use to access the given URL on the ACME server.
	// The value C(post) executes an authenticated POST request. The content must be specified in the I(content) option.
	// The value C(get) executes an authenticated POST-as-GET request for ACME v2, and a regular GET request for ACME v1.
	// The value C(directory-only) only retrieves the directory, without doing a request.

	method?: string
}

luks_device :: {

	// Used to unlock the container and needed for most of the operations. Parameter value is the path to the keyfile with the passphrase.
	// BEWARE that working with keyfiles in plaintext is dangerous. Make sure that they are protected.

	keyfile?: string

	// Sets container name when I(state=opened). Can be used instead of I(device) when closing the existing container (i.e. when I(state=closed)).

	name?: string

	// Adds additional key to given container on I(device). Needs I(keyfile) option for authorization. LUKS container supports up to 8 keys. Parameter value is the path to the keyfile with the passphrase.
	// NOTE that adding additional keys is I(not idempotent). A new keyslot will be used even if another keyslot already exists for this keyfile.
	// BEWARE that working with keyfiles in plaintext is dangerous. Make sure that they are protected.

	new_keyfile?: string

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

	// Device to work with (e.g. C(/dev/sda1)). Needed in most cases. Can be omitted only when I(state=closed) together with I(name) is provided.

	device?: string

	// If set to C(yes), allows removing the last key from a container.
	// BEWARE that when the last key has been removed from a container, the container can no longer be opened!

	force_remove_last_key?: bool

	// Sets the key size only if LUKS container does not exist.

	keysize?: int

	// This option allow the user to create a LUKS2 format container with label support, respectively to identify the container by label on later usages.
	// Will only be used on container creation, or when I(device) is not specified.
	// This cannot be specified if I(type) is set to C(luks1).

	label?: string

	// This option allow the user explicit define the format of LUKS container that wants to work with. Options are C(luks1) or C(luks2)

	type?: string
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

openssl_dhparam :: {

	// Create a backup file including a timestamp so you can get the original DH params back if you overwrote them with new ones by accident.

	backup?: bool

	// Should the parameters be regenerated even it it already exists.

	force?: bool

	// Name of the file in which the generated parameters will be saved.

	path: string

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(openssl).
	// If set to C(openssl), will try to use the OpenSSL C(openssl) executable.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.

	select_crypto_backend?: string

	// Size (in bits) of the generated DH-params.

	size?: int

	// Whether the parameters should exist or not, taking action if the state is different from what is stated.

	state?: string
}

acme_account_info :: {

	// Whether to retrieve the list of order URLs or order objects, if provided by the ACME server.
	// A value of C(ignore) will not fetch the list of orders.
	// Currently, Let's Encrypt does not return orders, so the C(orders) result will always be empty.

	retrieve_orders?: string
}

acme_certificate_revoke :: {

	// Content of the ACME account RSA or Elliptic Curve key.
	// Note that exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.
	// I(Warning): the content will be written into a temporary file, which will be deleted by Ansible when the module completes. Since this is an important private key — it can be used to change the account key, or to revoke your certificates without knowing their private keys —, this might not be acceptable.
	// In case C(cryptography) is used, the content is not written into a temporary file. It can still happen that it is written to disk by Ansible in the process of moving the module with its argument to the node where it is executed.

	account_key_content?: string

	// Path to a file containing the ACME account RSA or Elliptic Curve key.
	// RSA keys can be created with C(openssl rsa ...). Elliptic curve keys can be created with C(openssl ecparam -genkey ...). Any other tool creating private keys in PEM format can be used as well.
	// Mutually exclusive with C(account_key_content).
	// Required if C(account_key_content) is not used.

	account_key_src?: string

	// Path to the certificate to revoke.

	certificate: string

	// Content of the certificate's private key.
	// Note that exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.
	// I(Warning): the content will be written into a temporary file, which will be deleted by Ansible when the module completes. Since this is an important private key — it can be used to change the account key, or to revoke your certificates without knowing their private keys —, this might not be acceptable.
	// In case C(cryptography) is used, the content is not written into a temporary file. It can still happen that it is written to disk by Ansible in the process of moving the module with its argument to the node where it is executed.

	private_key_content?: string

	// Path to the certificate's private key.
	// Note that exactly one of C(account_key_src), C(account_key_content), C(private_key_src) or C(private_key_content) must be specified.

	private_key_src?: string

	// One of the revocation reasonCodes defined in L(https://tools.ietf.org/html/rfc5280#section-5.3.1, Section 5.3.1 of RFC5280).
	// Possible values are C(0) (unspecified), C(1) (keyCompromise), C(2) (cACompromise), C(3) (affiliationChanged), C(4) (superseded), C(5) (cessationOfOperation), C(6) (certificateHold), C(8) (removeFromCRL), C(9) (privilegeWithdrawn), C(10) (aACompromise)

	revoke_reason?: int
}

openssl_certificate :: {

	// The path to the client certificate used to authenticate to the Entrust Certificate Services (ECS) API.
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_api_client_cert_path?: string

	// The version of the C(ownca) certificate.
	// Nowadays it should almost always be C(3).
	// This is only used by the C(ownca) provider.

	ownca_version?: int

	// Whether the certificate should exist or not, taking action if the state is different from what is stated.

	state?: string

	// The version of the certificate.
	// Nowadays it should almost always be 3.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	version?: int

	// Create a backup file including a timestamp so you can get the original certificate back if you overwrote it with a new one by accident.
	// This is not used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	backup?: bool

	// The point in time at which the certificate stops being valid.
	// Time can be specified either as relative time or as absolute timestamp.
	// Time will always be interpreted as UTC.
	// Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using relative time this module is NOT idempotent.
	// If this value is not specified, the certificate will stop being valid 10 years from now.
	// This is only used by the C(selfsigned) provider.

	selfsigned_not_after?: string

	// The email of the requester of the certificate (for tracking purposes).
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_requester_email?: string

	// Create a Authority Key Identifier from the CA's certificate. If the CSR provided a authority key identifier, it is ignored.
	// The Authority Key Identifier is generated from the CA certificate's Subject Key Identifier, if available. If it is not available, the CA certificate's public key will be used.
	// This is only used by the C(ownca) provider.
	// Note that this is only supported if the C(cryptography) backend is used!

	ownca_create_authority_key_identifier?: bool

	// A list of algorithms that you would accept the certificate to be signed with (e.g. ['sha256WithRSAEncryption', 'sha512WithRSAEncryption']).
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	signature_algorithms?: [...string]

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

	// The digest algorithm to be used for the C(ownca) certificate.
	// This is only used by the C(ownca) provider.

	ownca_digest?: string

	// The point in time at which the certificate stops being valid.
	// Time can be specified either as relative time or as absolute timestamp.
	// Time will always be interpreted as UTC.
	// Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using relative time this module is NOT idempotent.
	// If this value is not specified, the certificate will stop being valid 10 years from now.
	// This is only used by the C(ownca) provider.

	ownca_not_after?: string

	// Path to the private key to use when signing the certificate.

	privatekey_path?: string

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.
	// Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.

	select_crypto_backend?: string

	// Path to the Certificate Signing Request (CSR) used to generate this certificate.
	// This is not required in C(assertonly) mode.

	csr_path?: string

	// The I(extended_key_usage) extension field must contain all these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	extended_key_usage?: [...string]

	// The passphrase for the I(ownca_privatekey_path).
	// This is only used by the C(ownca) provider.

	ownca_privatekey_passphrase?: string

	// Remote absolute path where the generated certificate file should be created or is already located.

	path: string

	// The path to the accountkey for the C(acme) provider.
	// This is only used by the C(acme) provider.

	acme_accountkey_path?: string

	// Version of the C(selfsigned) certificate.
	// Nowadays it should almost always be C(3).
	// This is only used by the C(selfsigned) provider.

	selfsigned_version?: int

	// The point in time the certificate is valid from.
	// Time can be specified either as relative time or as absolute timestamp.
	// Time will always be interpreted as UTC.
	// Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using relative time this module is NOT idempotent.
	// If this value is not specified, the certificate will start being valid from now.
	// This is only used by the C(ownca) provider.

	ownca_not_before?: string

	// Name of the provider to use to generate/retrieve the OpenSSL certificate.
	// The C(assertonly) provider will not generate files and fail if the certificate file is missing.
	// The C(assertonly) provider has been deprecated in Ansible 2.9 and will be removed in Ansible 2.13. Please see the examples on how to emulate it with M(openssl_certificate_info), M(openssl_csr_info), M(openssl_privatekey_info) and M(assert).
	// The C(entrust) provider was added for Ansible 2.9 and requires credentials for the L(https://www.entrustdatacard.com/products/categories/ssl-certificates,Entrust Certificate Services) (ECS) API.

	provider: string

	// The key/value pairs that must be present in the subject name field of the certificate.
	// If you need to specify more than one value with the same key, use a list as value.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	subject?: {...}

	// If set to C(yes), the I(key_usage) extension field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	key_usage_strict?: bool

	// The path to the ACME challenge directory that is served on U(http://<HOST>:80/.well-known/acme-challenge/)
	// This is only used by the C(acme) provider.

	acme_challenge_path?: string

	// If set to C(yes), the I(issuer) field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	issuer_strict?: bool

	// Whether to create the Subject Key Identifier (SKI) from the public key.
	// A value of C(create_if_not_provided) (default) only creates a SKI when the CSR does not provide one.
	// A value of C(always_create) always creates a SKI. If the CSR provides one, that one is ignored.
	// A value of C(never_create) never creates a SKI. If the CSR provides one, that one is used.
	// This is only used by the C(ownca) provider.
	// Note that this is only supported if the C(cryptography) backend is used!

	ownca_create_subject_key_identifier?: string

	// The I(subject_alt_name) extension field must contain these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	subject_alt_name?: [...string]

	// If set to C(yes), the I(subject_alt_name) extension field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	subject_alt_name_strict?: bool

	// The certificate must be valid at this point in time.
	// The timestamp is formatted as an ASN.1 TIME.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	valid_at?: string

	// The name of the requester of the certificate (for tracking purposes).
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_requester_name?: string

	// Whether to create the Subject Key Identifier (SKI) from the public key.
	// A value of C(create_if_not_provided) (default) only creates a SKI when the CSR does not provide one.
	// A value of C(always_create) always creates a SKI. If the CSR provides one, that one is ignored.
	// A value of C(never_create) never creates a SKI. If the CSR provides one, that one is used.
	// This is only used by the C(selfsigned) provider.
	// Note that this is only supported if the C(cryptography) backend is used!

	selfsigned_create_subject_key_identifier?: string

	// The certificate must be invalid at this point in time.
	// The timestamp is formatted as an ASN.1 TIME.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	invalid_at?: string

	// Generate the certificate, even if it already exists.

	force?: bool

	// Checks if the certificate is expired/not expired at the time the module is executed.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	has_expired?: bool

	// Remote absolute path of the CA (Certificate Authority) certificate.
	// This is only used by the C(ownca) provider.

	ownca_path?: string

	// If set to C(yes), the I(extended_key_usage) extension field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	extended_key_usage_strict?: bool

	// The key/value pairs that must be present in the issuer name field of the certificate.
	// If you need to specify more than one value with the same key, use a list as value.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	issuer?: {...}

	// The certificate must start to become valid at this point in time.
	// The timestamp is formatted as an ASN.1 TIME.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	not_before?: string

	// The point in time the certificate is valid from.
	// Time can be specified either as relative time or as absolute timestamp.
	// Time will always be interpreted as UTC.
	// Valid format is C([+-]timespec | ASN.1 TIME) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using relative time this module is NOT idempotent.
	// If this value is not specified, the certificate will start being valid from now.
	// This is only used by the C(selfsigned) provider.

	selfsigned_not_before?: string

	// If set to C(yes), the I(subject) field must contain only these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	subject_strict?: bool

	// The path to the private key of the client certificate used to authenticate to the Entrust Certificate Services (ECS) API.
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_api_client_cert_key_path?: string

	// The username for authentication to the Entrust Certificate Services (ECS) API.
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_api_user?: string

	// Specify the type of certificate requested.
	// This is only used by the C(entrust) provider.

	entrust_cert_type?: string

	// The passphrase for the I(privatekey_path).
	// This is required if the private key is password protected.

	privatekey_passphrase?: string

	// Include the intermediate certificate to the generated certificate
	// This is only used by the C(acme) provider.
	// Note that this is only available for older versions of C(acme-tiny). New versions include the chain automatically, and setting I(acme_chain) to C(yes) results in an error.

	acme_chain?: bool

	// The key (password) for authentication to the Entrust Certificate Services (ECS) API.
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_api_key?: string

	// The certificate must expire at this point in time.
	// The timestamp is formatted as an ASN.1 TIME.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	not_after?: string

	// Path to the CA (Certificate Authority) private key to use when signing the certificate.
	// This is only used by the C(ownca) provider.

	ownca_privatekey_path?: string

	// Digest algorithm to be used when self-signing the certificate.
	// This is only used by the C(selfsigned) provider.

	selfsigned_digest?: string

	// The phone number of the requester of the certificate (for tracking purposes).
	// This is only used by the C(entrust) provider.
	// This is required if the provider is C(entrust).

	entrust_requester_phone?: string

	// The I(key_usage) extension field must contain all these values.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	key_usage?: [...string]

	// The certificate must still be valid at this relative time offset from now.
	// Valid format is C([+-]timespec | number_of_seconds) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h).
	// Note that if using this parameter, this module is NOT idempotent.
	// This is only used by the C(assertonly) provider.
	// This option is deprecated since Ansible 2.9 and will be removed with the C(assertonly) provider in Ansible 2.13. For alternatives, see the example on replacing C(assertonly).

	valid_in?: string

	// The path to the specification file defining the Entrust Certificate Services (ECS) API configuration.
	// You can use this to keep a local copy of the specification to avoid downloading it every time the module is used.
	// This is only used by the C(entrust) provider.

	entrust_api_specification_path?: string
}

get_certificate :: {

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.

	select_crypto_backend?: string

	// The timeout in seconds

	timeout?: int

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
}

openssh_cert :: {

	// Specify the certificate serial number. The serial number is logged by the server when the certificate is used for authentication. The certificate serial number may be used in a KeyRevocationList. The serial number may be omitted for checks, but must be specified again for a new certificate. Note: The default value set by ssh-keygen is 0.

	serial_number?: int

	// The path to the private openssh key that is used for signing the public key in order to generate the certificate.

	signing_key: string

	// Whether the host or user certificate should exist or not, taking action if the state is different from what is stated.

	state?: string

	// Should the certificate be regenerated even if it already exists and is valid.

	force?: bool

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

	// Certificates may be limited to be valid for a set of principal (user/host) names. By default, generated certificates are valid for all users or hosts.

	principals?: [...string]

	// The path to the public key that will be signed with the signing key in order to generate the certificate.

	public_key: string

	// Whether the module should generate a host or a user certificate.

	type: string

	// Check if the certificate is valid at a certain point in time. If it is not the certificate will be regenerated. Time will always be interpreted as UTC. Mainly to be used with relative timespec for I(valid_from) and / or I(valid_to). Note that if using relative time this module is NOT idempotent.

	valid_at?: string

	// The point in time the certificate is valid from. Time can be specified either as relative time or as absolute timestamp. Time will always be interpreted as UTC. Valid formats are: C([+-]timespec | YYYY-MM-DD | YYYY-MM-DDTHH:MM:SS | YYYY-MM-DD HH:MM:SS | always) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h). Note that if using relative time this module is NOT idempotent.

	valid_from: string

	// The point in time the certificate is valid to. Time can be specified either as relative time or as absolute timestamp. Time will always be interpreted as UTC. Valid formats are: C([+-]timespec | YYYY-MM-DD | YYYY-MM-DDTHH:MM:SS | YYYY-MM-DD HH:MM:SS | forever) where timespec can be an integer + C([w | d | h | m | s]) (e.g. C(+32w1d2h). Note that if using relative time this module is NOT idempotent.

	valid_to: string

	// Specify the key identity when signing a public key. The identifier that is logged by the server when the certificate is used for authentication.

	identifier?: string

	// Path of the file containing the certificate.

	path: string
}

openssl_csr :: {

	// Should the basicConstraints extension be considered as critical.

	basic_constraints_critical?: bool

	// The countryName field of the certificate signing request subject.

	country_name?: string

	// This defines the purpose (e.g. encipherment, signature, certificate signing) of the key contained in the certificate.

	key_usage?: [...string]

	// The stateOrProvinceName field of the certificate signing request subject.

	state_or_province_name?: string

	// The version of the certificate signing request.
	// The only allowed value according to L(RFC 2986,https://tools.ietf.org/html/rfc2986#section-4.1) is 1.
	// This option will no longer accept unsupported values from Ansible 2.14 on.

	version?: int

	// The name of the file into which the generated OpenSSL certificate signing request will be written.

	path: string

	// The passphrase for the private key.
	// This is required if the private key is password protected.

	privatekey_passphrase?: string

	// SAN extension to attach to the certificate signing request.
	// This can either be a 'comma separated string' or a YAML list.
	// Values must be prefixed by their options. (i.e., C(email), C(URI), C(DNS), C(RID), C(IP), C(dirName), C(otherName) and the ones specific to your CA)
	// Note that if no SAN is specified, but a common name, the common name will be added as a SAN except if C(useCommonNameForSAN) is set to I(false).
	// More at U(https://tools.ietf.org/html/rfc5280#section-4.2.1.6).

	subject_alt_name?: [...string]

	// Names that will be present in the authority cert issuer field of the certificate signing request.
	// Values must be prefixed by their options. (i.e., C(email), C(URI), C(DNS), C(RID), C(IP), C(dirName), C(otherName) and the ones specific to your CA)
	// Example: C(DNS:ca.example.org)
	// If specified, I(authority_key_identifier) must also be specified.
	// Please note that commercial CAs ignore this value, respectively use a value of their own choice. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// Note that this is only supported if the C(cryptography) backend is used!
	// The C(AuthorityKeyIdentifier) will only be added if at least one of I(authority_key_identifier), I(authority_cert_issuer) and I(authority_cert_serial_number) is specified.

	authority_cert_issuer?: [...string]

	// The commonName field of the certificate signing request subject.

	common_name?: string

	// The emailAddress field of the certificate signing request subject.

	email_address?: string

	// Additional restrictions (e.g. client authentication, server authentication) on the allowed purposes for which the public key may be used.

	extended_key_usage?: [...string]

	// Should the certificate signing request be forced regenerated by this ansible module.

	force?: bool

	// The digest used when signing the certificate signing request with the private key.

	digest?: string

	// Should the keyUsage extension be considered as critical.

	key_usage_critical?: bool

	// The localityName field of the certificate signing request subject.

	locality_name?: string

	// Indicates that the certificate should contain the OCSP Must Staple extension (U(https://tools.ietf.org/html/rfc7633)).

	ocsp_must_staple?: bool

	// Should the OCSP Must Staple extension be considered as critical
	// Note that according to the RFC, this extension should not be marked as critical, as old clients not knowing about OCSP Must Staple are required to reject such certificates (see U(https://tools.ietf.org/html/rfc7633#section-4)).

	ocsp_must_staple_critical?: bool

	// The path to the private key to use when signing the certificate signing request.

	privatekey_path: string

	// Create the Subject Key Identifier from the public key.
	// Please note that commercial CAs can ignore the value, respectively use a value of their own choice instead. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// Note that this is only supported if the C(cryptography) backend is used!

	create_subject_key_identifier?: bool

	// The organizationalUnitName field of the certificate signing request subject.

	organizational_unit_name?: string

	// Should the subjectAltName extension be considered as critical.

	subject_alt_name_critical?: bool

	// The authority cert serial number.
	// Note that this is only supported if the C(cryptography) backend is used!
	// Please note that commercial CAs ignore this value, respectively use a value of their own choice. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// The C(AuthorityKeyIdentifier) will only be added if at least one of I(authority_key_identifier), I(authority_cert_issuer) and I(authority_cert_serial_number) is specified.

	authority_cert_serial_number?: int

	// The authority key identifier as a hex string, where two bytes are separated by colons.
	// Example: C(00:11:22:33:44:55:66:77:88:99:aa:bb:cc:dd:ee:ff:00:11:22:33)
	// If specified, I(authority_cert_issuer) must also be specified.
	// Please note that commercial CAs ignore this value, respectively use a value of their own choice. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// Note that this is only supported if the C(cryptography) backend is used!
	// The C(AuthorityKeyIdentifier) will only be added if at least one of I(authority_key_identifier), I(authority_cert_issuer) and I(authority_cert_serial_number) is specified.

	authority_key_identifier?: string

	// Create a backup file including a timestamp so you can get the original CSR back if you overwrote it with a new one by accident.

	backup?: bool

	// Indicates basic constraints, such as if the certificate is a CA.

	basic_constraints?: [...string]

	// Should the extkeyUsage extension be considered as critical.

	extended_key_usage_critical?: bool

	// Determines which crypto backend to use.
	// The default choice is C(auto), which tries to use C(cryptography) if available, and falls back to C(pyopenssl).
	// If set to C(pyopenssl), will try to use the L(pyOpenSSL,https://pypi.org/project/pyOpenSSL/) library.
	// If set to C(cryptography), will try to use the L(cryptography,https://cryptography.io/) library.
	// Please note that the C(pyopenssl) backend has been deprecated in Ansible 2.9, and will be removed in Ansible 2.13. From that point on, only the C(cryptography) backend will be available.

	select_crypto_backend?: string

	// Key/value pairs that will be present in the subject name field of the certificate signing request.
	// If you need to specify more than one value with the same key, use a list as value.

	subject?: {...}

	// The subject key identifier as a hex string, where two bytes are separated by colons.
	// Example: C(00:11:22:33:44:55:66:77:88:99:aa:bb:cc:dd:ee:ff:00:11:22:33)
	// Please note that commercial CAs ignore this value, respectively use a value of their own choice. Specifying this option is mostly useful for self-signed certificates or for own CAs.
	// Note that this option can only be used if I(create_subject_key_identifier) is C(no).
	// Note that this is only supported if the C(cryptography) backend is used!

	subject_key_identifier?: string

	// The organizationName field of the certificate signing request subject.

	organization_name?: string

	// Whether the certificate signing request should exist or not, taking action if the state is different from what is stated.

	state?: string

	// If set to C(yes), the module will fill the common name in for C(subject_alt_name) with C(DNS:) prefix if no SAN is specified.

	use_common_name_for_san?: bool
}

openssl_pkcs12 :: {

	// Filename to write the PKCS#12 file to.

	path: string

	// PKCS#12 file path to parse.

	src?: string

	// Whether the file should exist or not. All parameters except C(path) are ignored when state is C(absent).

	state?: string

	// C(export) or C(parse) a PKCS#12.

	action?: string

	// Specifies the friendly name for the certificate and private key.

	friendly_name?: string

	// Number of times to repeat the MAC step.

	maciter_size?: int

	// The PKCS#12 password.

	passphrase?: string

	// Create a backup file including a timestamp so you can get the original output file back if you overwrote it with a new one by accident.

	backup?: bool

	// The path to read certificates and private keys from.
	// Must be in PEM format.

	certificate_path?: string

	// List of other certificates to include. Pre 2.8 this parameter was called C(ca_certificates)

	other_certificates?: [...string]

	// File to read private key from.

	privatekey_path?: string

	// Passphrase source to decrypt any input private keys with.

	privatekey_passphrase?: string

	// Should the file be regenerated even if it already exists.

	force?: bool

	// Number of times to repeat the encryption step.

	iter_size?: int
}

openssl_publickey :: {

	// Create a backup file including a timestamp so you can get the original public key back if you overwrote it with a different one by accident.

	backup?: bool

	// Should the key be regenerated even it it already exists.

	force?: bool

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
}

acme_account :: {

	// Whether account creation is allowed (when state is C(present)).

	allow_creation?: bool

	// A list of contact URLs.
	// Email addresses must be prefixed with C(mailto:).
	// See U(https://tools.ietf.org/html/rfc8555#section-7.3) for what is allowed.
	// Must be specified when state is C(present). Will be ignored if state is C(absent) or C(changed_key).

	contact?: [...string]

	// Content of the ACME account RSA or Elliptic Curve key to change to.
	// Same restrictions apply as to C(account_key_content).
	// Mutually exclusive with C(new_account_key_src).
	// Required if C(new_account_key_src) is not used and state is C(changed_key).

	new_account_key_content?: string

	// Path to a file containing the ACME account RSA or Elliptic Curve key to change to.
	// Same restrictions apply as to C(account_key_src).
	// Mutually exclusive with C(new_account_key_content).
	// Required if C(new_account_key_content) is not used and state is C(changed_key).

	new_account_key_src?: string

	// The state of the account, to be identified by its account key.
	// If the state is C(absent), the account will either not exist or be deactivated.
	// If the state is C(changed_key), the account must exist. The account key will be changed; no other information will be touched.

	state: string

	// Boolean indicating whether you agree to the terms of service document.
	// ACME servers can require this to be true.

	terms_agreed?: bool
}

acme_challenge_cert_helper :: {

	// The challenge type.

	challenge: string

	// The C(challenge_data) entry provided by M(acme_certificate) for the challenge.

	challenge_data: {...}

	// Content of the private key to use for this challenge certificate.
	// Mutually exclusive with C(private_key_src).

	private_key_content?: string

	// Path to a file containing the private key file to use for this challenge certificate.
	// Mutually exclusive with C(private_key_content).

	private_key_src?: string
}

certificate_complete_chain :: {

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

	// A concatenated set of certificates in PEM format forming a chain.
	// The module will try to complete this chain.

	input_chain: string
}
