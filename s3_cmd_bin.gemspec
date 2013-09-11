# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 's3_cmd_bin/version'

Gem::Specification.new do |spec|
  spec.name          = "s3_cmd_bin"
  spec.version       = S3CmdBin::VERSION
  spec.authors       = ["Zac McCormick"]
  spec.email         = ["zac.mccormick@gmail.com"]
  spec.description   = %q{Provides an embedded version of s3cmd}
  spec.summary       = %q{Provides an embedded version of s3cmd}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
