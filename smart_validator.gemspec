# frozen_string_literal: true

require_relative 'lib/smart_core/validator/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = Gem::Requirement.new('>= 3.0')

  spec.name = 'smart_validator'
  spec.version = SmartCore::Validator::VERSION
  spec.authors = ['JustAnotherDude']
  spec.email = ['vanyaz158@gmail.com']

  spec.summary = 'Custom DSL-first validator with a conviniet declarative API.'
  spec.description = 'Validation layer for any business logic with a declarative rule-oriented API.'
  spec.homepage = 'https://github.com/smart-rb/smart_validator'

  spec.metadata['homepage_uri'] =
    spec.homepage
  spec.metadata['source_code_uri'] =
    'https://github.com/smart-rb/smart_validator'
  spec.metadata['changelog_uri'] =
    'https://github.com/smart-rb/smart_validator/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'qonfig', '~> 0.28'
  spec.add_dependency 'smart_initializer', '~> 0.11'
  spec.add_dependency 'smart_schema', '~> 0.11'

  spec.add_development_dependency 'bundler-audit', '~> 0.9'
  spec.add_development_dependency 'ci-helper', '~> 0.6'
  spec.add_development_dependency 'pry', '~> 0.14'
  spec.add_development_dependency 'rake', '~> 13.1'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'armitage-rubocop', '~> 1.59'
  spec.add_development_dependency 'simplecov', '~> 0.22'
  spec.add_development_dependency 'simplecov-lcov', '~> 0.8'
end
