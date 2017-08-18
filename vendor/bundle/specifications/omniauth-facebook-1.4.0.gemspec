# -*- encoding: utf-8 -*-
# stub: omniauth-facebook 1.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-facebook"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mark Dodwell"]
  s.date = "2012-06-24"
  s.email = ["mark@mkdynamic.co.uk"]
  s.homepage = "https://github.com/mkdynamic/omniauth-facebook"
  s.rubygems_version = "2.5.1"
  s.summary = "Facebook strategy for OmniAuth"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<omniauth-oauth2>, ["~> 1.0.2"])
      s.add_development_dependency(%q<rspec>, ["~> 2"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<omniauth-oauth2>, ["~> 1.0.2"])
      s.add_dependency(%q<rspec>, ["~> 2"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<omniauth-oauth2>, ["~> 1.0.2"])
    s.add_dependency(%q<rspec>, ["~> 2"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
