# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'queue_sync/version'

Gem::Specification.new do |spec|
  spec.name          = "queue_sync"
  spec.version       = QueueSync::VERSION
  spec.authors       = ["Karthik T"]
  spec.email         = ["karthikt.holmes+github@gmail.com"]

  spec.summary       = %q{This is a script to sync files from a source to a consumer of said files}
  spec.description   = %q{This is a script that was specifically built to transfer video files from my Macbook pro to my Android phone where they are consumed. This is a restricted sync in which new files are pushed only from source to consumer, and deletions are only propogated from consumer to source, thus becoming a queue.}
  spec.homepage      = "https://github.com/ktaragorn/queue_sync"
  spec.license       = "MIT"

  # # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
