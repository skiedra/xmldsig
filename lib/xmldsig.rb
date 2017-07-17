require "nokogiri"
require "openssl"
require "base64"
require "xmldsig/version"

module Xmldsig
  NAMESPACES = {
      "ds"  => "http://www.w3.org/2000/09/xmldsig#",
      "ec"  => "http://www.w3.org/2001/10/xml-exc-c14n#",
      "wsu" => "http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd",
      "SOAP-SEC" => "http://schemas.xmlsoap.org/soap/security/2000-12"
  }

  class Error < StandardError
  end

  class SchemaError < Error
  end

  XSD_FILE = File.read(File.expand_path('../xmldsig/xmldsig-core-schema.xsd', __FILE__))
end

require "xmldsig/canonicalizer"
require "xmldsig/signed_document"
require "xmldsig/transforms/transform"
require "xmldsig/transforms/canonicalize"
require "xmldsig/transforms/enveloped_signature"
require "xmldsig/transforms"
require "xmldsig/reference"
require "xmldsig/signature"
