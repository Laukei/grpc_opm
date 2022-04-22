# frozen_string_literal: true

require_relative 'lib/grpc_opm/version'

Gem::Specification.new do |spec|
  spec.name          = 'grpc_opm'
  spec.version       = GrpcOpm::VERSION
  spec.authors       = ['Rob Heath']
  spec.email         = ['rob@robheath.me.uk']

  spec.summary       = 'A tool for creating protobufs from a Ruby document model'
  spec.description   = 'A tool for creating protobufs from a Ruby document model'
  spec.homepage      = 'https://robheath.me.uk'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Laukei/grpc_opm'
  spec.metadata['changelog_uri'] = 'https://robheath.me.uk'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '~> 6.0.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-doc'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'pry-stack_explorer'
  spec.add_development_dependency 'pry-rescue'
end
