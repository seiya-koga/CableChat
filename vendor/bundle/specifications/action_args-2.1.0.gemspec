# -*- encoding: utf-8 -*-
# stub: action_args 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "action_args"
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Akira Matsuda"]
  s.date = "2016-07-12"
  s.description = "Rails plugin gem that supports Merbish style controller action arguments."
  s.email = ["ronnie@dio.jp"]
  s.homepage = "http://asakusa.rubyist.net/"
  s.rubygems_version = "2.5.1"
  s.summary = "Controller action arguments parameterizer for Rails 4+ & Ruby 2.0+"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<test-unit-rails>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<test-unit-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<test-unit-rails>, [">= 0"])
  end
end
